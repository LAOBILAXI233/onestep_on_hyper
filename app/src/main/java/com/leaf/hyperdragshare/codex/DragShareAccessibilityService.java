package com.leaf.hyperdragshare.codex;

import android.accessibilityservice.AccessibilityService;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;

import androidx.core.content.ContextCompat;

import com.hyper.onestep.VirtualDisplayRegionRegistry;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class DragShareAccessibilityService extends AccessibilityService {
    private static final String TAG = "DragShare/Accessibility";
    private static final int MAX_NODE_COUNT = 4_000;
    private static final int MAX_NODE_DEPTH = 64;
    private static final long NODE_BUDGET_MILLIS = 120L;
    private static final long ROOT_RETRY_DELAY_MILLIS = 5_000L;
    private static final int MAX_ROOT_RESTARTS = 3;

    
    
    private static final int PASTE_MAX_SCAN_DEPTH = 80;
    private static final long PASTE_MAX_SCAN_NODES = 25000L;
    private static final long PASTE_FOCUS_SETTLE_MS = 80L;
    private static final long PASTE_RESCAN_DELAY_MS = 200L;

    private static volatile DragShareAccessibilityService instance;

    private volatile boolean panelDragActive;

    public static boolean isReady() {
        return instance != null;
    }

    public static boolean[] pasteIntoDisplay(int displayId, CharSequence content) {
        DragShareAccessibilityService service = instance;
        if (service == null || displayId < 0 || Build.VERSION.SDK_INT < 33
                || TextUtils.isEmpty(content)) {
            return new boolean[]{false, false};
        }
        return service.performPaste(displayId, content);
    }

    public static void startPanelTextDrag(String text, float rawX, float rawY,
            Runnable onFinished) {
        DragShareAccessibilityService service = instance;
        if (service == null || TextUtils.isEmpty(text)) {
            if (onFinished != null) {
                onFinished.run();
            }
            return;
        }
        service.panelDragActive = true;
        Runnable finished = () -> {
            service.panelDragActive = false;
            if (onFinished != null) {
                onFinished.run();
            }
        };
        service.mainHandler.post(() -> {
            DragShareController controller = service.controller;
            if (controller == null) {
                finished.run();
                return;
            }
            controller.showPanelTextDrag(text, rawX, rawY, finished);
        });
    }

    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Runnable rootReadyReporter = new Runnable() {
        @Override
        public void run() {
            RootTouchSource source = rootTouchSource;
            boolean ready = runtimeStarted && source != null && source.isReady();
            AccessibilityRuntimeStatus.setRootInputReady(ready);
            if (ready != lastReportedRootReady) {
                lastReportedRootReady = ready;
                trace("root ready=" + ready);
            }
            if (!runtimeStarted) {
                return;
            }
            if (ready) {
                rootNotReadySince = 0L;
                rootRestartCount = 0;
            } else {
                long now = SystemClock.uptimeMillis();
                if (rootNotReadySince == 0L) {
                    rootNotReadySince = now;
                } else if (now - rootNotReadySince >= ROOT_RETRY_DELAY_MILLIS
                        && rootRestartCount < MAX_ROOT_RESTARTS
                        && source != null) {
                    rootRestartCount++;
                    rootNotReadySince = now;
                    DragShareLog.w(TAG, "restarting unavailable Root input attempt="
                            + rootRestartCount);
                    source.stop();
                    mainHandler.postDelayed(() -> {
                        if (runtimeStarted && rootTouchSource == source && !source.isReady()) {
                            source.start();
                        }
                    }, 250L);
                }
            }
            mainHandler.postDelayed(this, ready ? 1_000L : 400L);
        }
    };

    private ContentObserver settingsObserver;
    private BroadcastReceiver screenReceiver;
    private volatile boolean screenInteractive = true;
    private volatile String foregroundPackage;
    private volatile int windowGeneration;
    private long rootNotReadySince;
    private int rootRestartCount;
    private boolean lastReportedRootReady;
    private boolean runtimeStarted;
    private int runtimeLongPressTimeoutMillis = Integer.MIN_VALUE;
    private int runtimeRecognitionSensitivityPercent = Integer.MIN_VALUE;
    private RootTouchSource rootTouchSource;
    private DragShareController controller;
    private AccessibilityContentCaptureSource captureSource;
    private ExecutorService classifierExecutor;
    private AccessibilityScreenshotter screenshotter;

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        instance = this;
        AccessibilityTrace.reset(this);
        AccessibilityRuntimeStatus.setConnected(true);
        screenInteractive = isScreenInteractive();
        trace("service connected mode="
                + DragShareSettings.readLocal(this).contentCaptureMode
                + " interactive=" + screenInteractive
                + " locked=" + isDeviceLocked()
                + " sdk=" + Build.VERSION.SDK_INT);
        registerSettingsObserver();
        registerScreenReceiver();
        applyMode();
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (event == null) {
            return;
        }
        CharSequence packageName = event.getPackageName();
        foregroundPackage = packageName == null ? null : packageName.toString();
        int type = event.getEventType();
        if (type == AccessibilityEvent.TYPE_WINDOWS_CHANGED
                || type == AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED
                || type == AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED
                || type == AccessibilityEvent.TYPE_VIEW_SCROLLED) {
            windowGeneration++;
        }
    }

    @Override
    public void onInterrupt() {
        AccessibilityContentCaptureSource source = captureSource;
        if (source != null) {
            source.cancel();
        }
        AccessibilityScreenshotter activeScreenshotter = screenshotter;
        if (activeScreenshotter != null) {
            activeScreenshotter.cancelAll();
        }
    }

    @Override
    public void onDestroy() {
        unregisterSettingsObserver();
        unregisterScreenReceiver();
        stopRuntime();
        AccessibilityRuntimeStatus.setConnected(false);
        if (instance == this) {
            instance = null;
        }
        super.onDestroy();
    }

    private boolean[] performPaste(int displayId, CharSequence content) {
        SparseArray<List<AccessibilityWindowInfo>> allDisplays = getWindowsOnAllDisplays();
        StringBuilder known = new StringBuilder();
        if (allDisplays != null) {
            for (int i = 0; i < allDisplays.size(); i++) {
                known.append(allDisplays.keyAt(i)).append(' ');
            }
        }
        StringBuilder diagnosis = new StringBuilder();
        AccessibilityNodeInfo target = findPasteTarget(allDisplays, displayId, diagnosis);
        if (target == null) {
            
            try {
                Thread.sleep(PASTE_RESCAN_DELAY_MS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            diagnosis.append(" | retry:");
            target = findPasteTarget(allDisplays, displayId, diagnosis);
        }
        if (target == null) {
            Log.w(TAG, "no editable node on display=" + displayId
                    + ", visible displays=[" + known.toString().trim() + "] " + diagnosis);
            return new boolean[]{false, false};
        }
        Log.i(TAG, "paste target on display=" + displayId + " " + diagnosis
                + " class=" + target.getClassName());
        boolean edited = writeIntoEditor(target, content);
        Log.println(edited ? Log.INFO : Log.WARN, TAG,
                "fill display=" + displayId + " edited=" + edited);
        return new boolean[]{true, edited};
    }

    private boolean writeIntoEditor(AccessibilityNodeInfo target, CharSequence content) {
        Bundle setTextArgs = new Bundle();
        setTextArgs.putCharSequence(
                AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, content);
        CharSequence existing = target.getText();
        if (TextUtils.isEmpty(existing)
                && target.performAction(
                        AccessibilityNodeInfo.ACTION_SET_TEXT, setTextArgs)) {
            return true;
        }
        if (!target.isFocused()) {
            target.performAction(AccessibilityNodeInfo.ACTION_FOCUS);
            try {
                Thread.sleep(PASTE_FOCUS_SETTLE_MS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        if (target.performAction(AccessibilityNodeInfo.ACTION_PASTE)) {
            return true;
        }
        String merged = (existing == null ? "" : existing.toString()) + content;
        setTextArgs.putCharSequence(
                AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, merged);
        return target.performAction(AccessibilityNodeInfo.ACTION_SET_TEXT, setTextArgs);
    }

    private AccessibilityNodeInfo findPasteTarget(
            SparseArray<List<AccessibilityWindowInfo>> allDisplays, int displayId,
            StringBuilder diagnosis) {
        List<AccessibilityWindowInfo> windows =
                allDisplays == null ? null : allDisplays.get(displayId);
        if (windows == null || windows.isEmpty()) {
            diagnosis.append(" no-windows");
            return null;
        }
        AccessibilityNodeInfo focused = null;
        AccessibilityNodeInfo viewFocusedEditable = null;
        AccessibilityNodeInfo firstEditable = null;
        long[] visited = {0L};
        int emptyRoots = 0;
        int liveRoots = 0;
        for (int i = 0; i < windows.size(); i++) {
            AccessibilityNodeInfo root = windows.get(i).getRoot();
            if (root == null) {
                emptyRoots++;
                continue;
            }
            liveRoots++;
            if (focused == null) {
                AccessibilityNodeInfo inputFocus =
                        root.findFocus(AccessibilityNodeInfo.FOCUS_INPUT);
                if (inputFocus != null && looksEditable(inputFocus)) {
                    focused = inputFocus;
                }
            }
            AccessibilityNodeInfo[] viewFocusedOut = new AccessibilityNodeInfo[1];
            AccessibilityNodeInfo editable = findFirstVisibleEditable(
                    root, 0, visited, viewFocusedOut);
            if (viewFocusedEditable == null && viewFocusedOut[0] != null) {
                
                
                viewFocusedEditable = viewFocusedOut[0];
            }
            if (firstEditable == null) {
                firstEditable = editable;
            }
        }
        diagnosis.append(" windows=").append(windows.size())
                .append(" liveRoots=").append(liveRoots)
                .append(" emptyRoots=").append(emptyRoots)
                .append(" visited=").append(visited[0])
                .append(focused != null ? " focusHit"
                        : viewFocusedEditable != null ? " viewFocusHit"
                        : firstEditable != null ? " editableHit" : " noneHit");
        if (focused != null) {
            return focused;
        }
        return viewFocusedEditable != null ? viewFocusedEditable : firstEditable;
    }

    private static boolean looksEditable(AccessibilityNodeInfo node) {
        
        return node.isEditable()
                || String.valueOf(node.getClassName()).endsWith("EditText");
    }

    private AccessibilityNodeInfo findFirstVisibleEditable(
            AccessibilityNodeInfo node, int depth, long[] visited,
            AccessibilityNodeInfo[] viewFocusedOut) {
        if (node == null || depth > PASTE_MAX_SCAN_DEPTH || visited[0] > PASTE_MAX_SCAN_NODES) {
            return null;
        }
        visited[0]++;
        boolean looksEditable = looksEditable(node);
        if (looksEditable && node.isVisibleToUser()) {
            if (viewFocusedOut[0] == null && node.isFocused()) {
                viewFocusedOut[0] = node;
            }
            return node;
        }
        int count = node.getChildCount();
        for (int i = 0; i < count; i++) {
            AccessibilityNodeInfo hit = findFirstVisibleEditable(
                    node.getChild(i), depth + 1, visited, viewFocusedOut);
            if (hit != null) {
                return hit;
            }
        }
        return null;
    }

    boolean isAccessibilityCaptureEnabled() {
        DragShareSettings settings = DragShareSettings.readLocal(this);
        return isAccessibilityRuntimeEnabled(settings)
                && settings.isAccessibilityRecognitionEnabledForOrientation(
                getResources().getConfiguration().orientation);
    }

    private boolean isAccessibilityRuntimeEnabled() {
        return isAccessibilityRuntimeEnabled(DragShareSettings.readLocal(this));
    }

    private boolean isAccessibilityRuntimeEnabled(DragShareSettings settings) {
        return screenInteractive
                && !isDeviceLocked()
                && settings.isAccessibilityRuntimeEnabled();
    }

    AccessibilityCandidateSelector.Selection selectCandidateAt(float x, float y, long gestureId) {
        if (!isAccessibilityCaptureEnabled()) {
            trace("gesture=" + gestureId + " selection skipped disabled");
            return null;
        }
        DragShareSettings settings = DragShareSettings.readLocal(this);
        
        
        
        VirtualDisplayRegionRegistry.Region region =
                VirtualDisplayRegionRegistry.regionAt(x, y);
        float pointX = x;
        float pointY = y;
        int boundsWidth;
        int boundsHeight;
        List<WindowRoot> roots;
        if (region != null) {
            float[] displayPoint = region.toDisplayCoords(x, y);
            pointX = displayPoint[0];
            pointY = displayPoint[1];
            boundsWidth = Math.max(1, region.displayWidth);
            boundsHeight = Math.max(1, region.displayHeight);
            roots = rootsOnVirtualDisplay(region, pointX, pointY, settings);
        } else {
            int[] screen = screenSize();
            boundsWidth = screen[0];
            boundsHeight = screen[1];
            roots = rootsAtPoint(x, y, settings);
        }
        trace("gesture=" + gestureId + " roots=" + roots.size()
                + " point=" + Math.round(x) + "," + Math.round(y)
                + (region != null ? " display=" + region.displayId : ""));
        for (WindowRoot windowRoot : roots) {
            try {
                List<AccessibilityNodeSnapshot> snapshots = snapshotTree(
                        windowRoot.root,
                        windowRoot.layer);
                AccessibilityNodeClassifier classifier = new AccessibilityNodeClassifier(
                        getResources().getDisplayMetrics().density,
                        boundsWidth,
                        boundsHeight);
                AccessibilityNodeClassifier.Buckets buckets = classifier.classify(snapshots);
                AccessibilityCandidateSelector.Selection selection = AccessibilityCandidateSelector.select(
                        buckets,
                        pointX,
                        pointY);
                DragShareLog.i(TAG, "gesture=" + gestureId
                        + " nodes=" + snapshots.size()
                        + " candidates=" + buckets.candidateCount());
                if (selection != null) {
                    if (AccessibilityBlacklist.isBlocked(
                            this,
                            settings,
                            selection.candidate.sourcePackage)) {
                        trace("gesture=" + gestureId + " candidate skipped blacklist");
                        continue;
                    }
                    if (region != null) {
                        
                        selection.candidate.bounds.set(
                                region.toPhysicalBounds(selection.candidate.bounds));
                    }
                    trace("gesture=" + gestureId + " selected="
                            + selection.candidate.kind
                            + " bounds=" + selection.candidate.bounds.flattenToString());
                    return selection;
                }
            } catch (Throwable error) {
                DragShareLog.w(TAG, "gesture=" + gestureId + " window snapshot failed", error);
            } finally {
                recycleNode(windowRoot.root);
            }
        }
        trace("gesture=" + gestureId + " no candidate");
        return null;
    }

    private List<WindowRoot> rootsOnVirtualDisplay(
            VirtualDisplayRegionRegistry.Region region,
            float pointX,
            float pointY,
            DragShareSettings settings) {
        List<WindowRoot> result = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        AccessibilityNodeInfo activeRoot = null;
        try {
            activeRoot = getRootInActiveWindow();
            if (activeRoot != null && windowDisplayIdOf(activeRoot) != region.displayId) {
                recycleNode(activeRoot);
                activeRoot = null;
            }
        } catch (Throwable ignored) {
            recycleNode(activeRoot);
            activeRoot = null;
        }
        if (activeRoot != null) {
            addRootIfUsable(result, seen, activeRoot, Integer.MAX_VALUE, settings);
        }
        SparseArray<List<AccessibilityWindowInfo>> allDisplays = null;
        try {
            allDisplays = getWindowsOnAllDisplays();
        } catch (Throwable ignored) {
        }
        List<AccessibilityWindowInfo> windows =
                allDisplays == null ? null : allDisplays.get(region.displayId);
        if (windows == null) {
            sortWindowRoots(result);
            return result;
        }
        for (AccessibilityWindowInfo window : windows) {
            AccessibilityNodeInfo root = null;
            try {
                if (window == null || window.getType()
                        == AccessibilityWindowInfo.TYPE_ACCESSIBILITY_OVERLAY) {
                    continue;
                }
                Rect bounds = new Rect();
                window.getBoundsInScreen(bounds);
                if (!contains(bounds, pointX, pointY)) {
                    continue;
                }
                root = window.getRoot();
                int layer = window.getLayer();
                if (window.isActive()) layer += 1_000_000;
                if (window.isFocused()) layer += 100_000;
                addRootIfUsable(result, seen, root, layer, settings);
                root = null;
            } catch (Throwable ignored) {
                
            } finally {
                recycleNode(root);
                recycleWindow(window);
            }
        }
        sortWindowRoots(result);
        return result;
    }

    private int windowDisplayIdOf(AccessibilityNodeInfo node) {
        try {
            AccessibilityWindowInfo window = node.getWindow();
            if (window != null) {
                int displayId = window.getDisplayId();
                window.recycle();
                return displayId;
            }
        } catch (Throwable ignored) {
        }
        return Integer.MIN_VALUE;
    }

    private void applyMode() {
        if (isAccessibilityRuntimeEnabled()) {
            startRuntime();
        } else {
            stopRuntime();
        }
    }

    private void startRuntime() {
        if (runtimeStarted) {
            return;
        }
        DragShareSettings settings = DragShareSettings.readLocal(this);
        runtimeStarted = true;
        runtimeLongPressTimeoutMillis = settings.accessibilityLongPressTimeoutMillis;
        runtimeRecognitionSensitivityPercent = settings.accessibilityRecognitionSensitivityPercent;
        rootNotReadySince = 0L;
        rootRestartCount = 0;
        lastReportedRootReady = false;
        classifierExecutor = Executors.newSingleThreadExecutor(runnable -> {
            Thread thread = new Thread(runnable, "drag-share-accessibility-classifier");
            thread.setDaemon(true);
            return thread;
        });
        controller = new DragShareController(
                this,
                OverlayWindowPolicy.accessibility());
        screenshotter = new AccessibilityScreenshotter(this, classifierExecutor);
        rootTouchSource = new RootTouchSource(
                getApplicationContext(),
                (action, x, y, eventTime) -> {
                    if (action == android.view.MotionEvent.ACTION_DOWN
                            || action == android.view.MotionEvent.ACTION_UP
                            || action == android.view.MotionEvent.ACTION_CANCEL) {
                        trace("root action=" + android.view.MotionEvent.actionToString(action)
                                + " point=" + Math.round(x) + "," + Math.round(y));
                    }
                    if (panelDragActive) {
                        
                        
                        DragShareController activeController = controller;
                        if (activeController != null) {
                            activeController.acceptPointerEvent(action, x, y, eventTime, "root");
                        }
                        return;
                    }
                    AccessibilityContentCaptureSource source = captureSource;
                    if (source != null) {
                        source.onPointerEvent(action, x, y, eventTime);
                    }
                });
        captureSource = new AccessibilityContentCaptureSource(
                this,
                controller,
                rootTouchSource,
                classifierExecutor,
                screenshotter);
        rootTouchSource.start();
        mainHandler.removeCallbacks(rootReadyReporter);
        mainHandler.post(rootReadyReporter);
        DragShareLog.i(TAG, "accessibility runtime started");
        trace("runtime started");
    }

    private void stopRuntime() {
        if (!runtimeStarted && controller == null && rootTouchSource == null) {
            AccessibilityRuntimeStatus.setRootInputReady(false);
            return;
        }
        runtimeStarted = false;
        runtimeLongPressTimeoutMillis = Integer.MIN_VALUE;
        runtimeRecognitionSensitivityPercent = Integer.MIN_VALUE;
        rootNotReadySince = 0L;
        rootRestartCount = 0;
        lastReportedRootReady = false;
        mainHandler.removeCallbacks(rootReadyReporter);
        AccessibilityRuntimeStatus.setRootInputReady(false);
        AccessibilityContentCaptureSource source = captureSource;
        captureSource = null;
        if (source != null) {
            source.cancel();
        }
        AccessibilityScreenshotter activeScreenshotter = screenshotter;
        screenshotter = null;
        if (activeScreenshotter != null) {
            activeScreenshotter.close();
        }
        RootTouchSource input = rootTouchSource;
        rootTouchSource = null;
        if (input != null) {
            input.stop();
        }
        ExecutorService executor = classifierExecutor;
        classifierExecutor = null;
        if (executor != null) {
            executor.shutdownNow();
        }
        DragShareController activeController = controller;
        controller = null;
        if (activeController != null) {
            activeController.destroy();
        }
        DragShareLog.i(TAG, "accessibility runtime stopped");
        trace("runtime stopped");
    }

    private List<WindowRoot> rootsAtPoint(
            float x,
            float y,
            DragShareSettings settings) {
        List<WindowRoot> result = new ArrayList<>();
        Set<String> seen = new HashSet<>();
        AccessibilityNodeInfo activeRoot = null;
        try {
            activeRoot = getRootInActiveWindow();
            if (activeRoot != null
                    && Build.VERSION.SDK_INT >= Build.VERSION_CODES.R
                    && windowDisplayIdOf(activeRoot) != Display.DEFAULT_DISPLAY) {
                
                
                recycleNode(activeRoot);
                activeRoot = null;
            }
        } catch (Throwable ignored) {
            recycleNode(activeRoot);
            activeRoot = null;
        }
        if (activeRoot != null) {
            addRootIfUsable(result, seen, activeRoot, Integer.MAX_VALUE, settings);
        }
        List<AccessibilityWindowInfo> windows;
        try {
            windows = getWindows();
        } catch (Throwable ignored) {
            windows = null;
        }
        if (windows != null) {
            for (AccessibilityWindowInfo window : windows) {
                AccessibilityNodeInfo root = null;
                try {
                    if (window == null || window.getType()
                            == AccessibilityWindowInfo.TYPE_ACCESSIBILITY_OVERLAY) {
                        continue;
                    }
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R
                            && window.getDisplayId() != Display.DEFAULT_DISPLAY) {
                        continue;
                    }
                    Rect bounds = new Rect();
                    window.getBoundsInScreen(bounds);
                    if (!contains(bounds, x, y)) {
                        continue;
                    }
                    root = window.getRoot();
                    int layer = window.getLayer();
                    if (window.isActive()) layer += 1_000_000;
                    if (window.isFocused()) layer += 100_000;
                    addRootIfUsable(result, seen, root, layer, settings);
                    root = null;
                } catch (Throwable ignored) {
                    
                } finally {
                    recycleNode(root);
                    recycleWindow(window);
                }
            }
        }
        sortWindowRoots(result);
        return result;
    }

    private void addRootIfUsable(
            List<WindowRoot> roots,
            Set<String> seen,
            AccessibilityNodeInfo root,
            int layer,
            DragShareSettings settings) {
        if (root == null) {
            return;
        }
        Rect bounds = new Rect();
        root.getBoundsInScreen(bounds);
        String packageName = asString(root.getPackageName());
        
        
        if (getPackageName().equals(packageName)) {
            recycleNode(root);
            return;
        }
        if (AccessibilityBlacklist.isBlocked(this, settings, packageName)) {
            recycleNode(root);
            return;
        }
        String key = packageName + ":" + bounds.flattenToString();
        if (!seen.add(key)) {
            recycleNode(root);
            return;
        }
        roots.add(new WindowRoot(root, layer));
    }

    private static void sortWindowRoots(List<WindowRoot> roots) {
        roots.sort(new Comparator<WindowRoot>() {
            @Override
            public int compare(WindowRoot first, WindowRoot second) {
                return Integer.compare(second.layer, first.layer);
            }
        });
    }

    private List<AccessibilityNodeSnapshot> snapshotTree(
            AccessibilityNodeInfo root,
            int layer) {
        List<AccessibilityNodeSnapshot> snapshots = new ArrayList<>();
        TraversalBudget budget = new TraversalBudget();
        traverse(root, 0, false, layer, snapshots, budget);
        if (budget.exhausted) {
            DragShareLog.w(TAG, "node traversal budget exhausted nodes=" + budget.nodeCount);
        }
        return snapshots;
    }

    private void traverse(
            AccessibilityNodeInfo node,
            int depth,
            boolean inheritedWebView,
            int layer,
            List<AccessibilityNodeSnapshot> snapshots,
            TraversalBudget budget) {
        if (node == null || budget.exhausted || depth > MAX_NODE_DEPTH) {
            return;
        }
        if (++budget.nodeCount > MAX_NODE_COUNT
                || SystemClock.uptimeMillis() - budget.startedAt > NODE_BUDGET_MILLIS) {
            budget.exhausted = true;
            return;
        }
        Rect bounds = new Rect();
        node.getBoundsInScreen(bounds);
        String className = asString(node.getClassName());
        boolean insideWebView = inheritedWebView || "android.webkit.WebView".equals(className);
        int childCount = node.getChildCount();
        snapshots.add(new AccessibilityNodeSnapshot.Builder()
                .bounds(bounds)
                .packageName(asString(node.getPackageName()))
                .className(className)
                .viewId(node.getViewIdResourceName())
                .text(asString(node.getText()))
                .contentDescription(asString(node.getContentDescription()))
                .visible(node.isVisibleToUser())
                .editable(node.isEditable())
                .password(node.isPassword())
                .clickable(node.isClickable())
                .longClickable(node.isLongClickable())
                .important(node.isImportantForAccessibility())
                .leaf(childCount == 0)
                .insideWebView(insideWebView)
                .depth(depth)
                .windowLayer(layer)
                .traversalOrder(budget.nodeCount)
                .build());
        for (int index = 0; index < childCount && !budget.exhausted; index++) {
            AccessibilityNodeInfo child = null;
            try {
                child = node.getChild(index);
                traverse(child, depth + 1, insideWebView, layer, snapshots, budget);
            } finally {
                recycleNode(child);
            }
        }
    }

    private int[] screenSize() {
        android.util.DisplayMetrics metrics = getResources().getDisplayMetrics();
        return new int[]{metrics.widthPixels, metrics.heightPixels};
    }

    private void registerSettingsObserver() {
        unregisterSettingsObserver();
        settingsObserver = new ContentObserver(mainHandler) {
            @Override
            public void onChange(boolean selfChange) {
                DragShareSettings settings = DragShareSettings.readLocal(
                        DragShareAccessibilityService.this);
                if (runtimeStarted && (settings.accessibilityLongPressTimeoutMillis
                        != runtimeLongPressTimeoutMillis
                        || settings.accessibilityRecognitionSensitivityPercent
                        != runtimeRecognitionSensitivityPercent)) {
                    stopRuntime();
                }
                applyMode();
            }
        };
        getContentResolver().registerContentObserver(
                DragShareSettings.settingsUri(),
                false,
                settingsObserver);
    }

    private void unregisterSettingsObserver() {
        if (settingsObserver == null) {
            return;
        }
        try {
            getContentResolver().unregisterContentObserver(settingsObserver);
        } catch (Throwable ignored) {
            
        }
        settingsObserver = null;
    }

    private void registerScreenReceiver() {
        if (screenReceiver != null) {
            return;
        }
        screenReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                String action = intent == null ? null : intent.getAction();
                if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                    screenInteractive = false;
                    stopRuntime();
                } else if (Intent.ACTION_USER_PRESENT.equals(action)
                        || Intent.ACTION_SCREEN_ON.equals(action)) {
                    screenInteractive = isScreenInteractive();
                    applyMode();
                }
            }
        };
        IntentFilter filter = new IntentFilter();
        filter.addAction(Intent.ACTION_SCREEN_OFF);
        filter.addAction(Intent.ACTION_SCREEN_ON);
        filter.addAction(Intent.ACTION_USER_PRESENT);
        ContextCompat.registerReceiver(
                this,
                screenReceiver,
                filter,
                ContextCompat.RECEIVER_NOT_EXPORTED);
    }

    private void unregisterScreenReceiver() {
        if (screenReceiver == null) {
            return;
        }
        try {
            unregisterReceiver(screenReceiver);
        } catch (Throwable ignored) {
            
        }
        screenReceiver = null;
    }

    private boolean isScreenInteractive() {
        PowerManager manager = (PowerManager) getSystemService(Context.POWER_SERVICE);
        return manager == null || manager.isInteractive();
    }

    private boolean isDeviceLocked() {
        KeyguardManager manager = (KeyguardManager) getSystemService(Context.KEYGUARD_SERVICE);
        return manager != null && manager.isKeyguardLocked();
    }

    void trace(String message) {
        AccessibilityTrace.record(this, message);
    }

    private static boolean contains(Rect bounds, float x, float y) {
        return bounds != null && x >= bounds.left && x <= bounds.right
                && y >= bounds.top && y <= bounds.bottom;
    }

    private static String asString(CharSequence value) {
        return value == null ? null : value.toString();
    }

    @SuppressWarnings("deprecation")
    private static void recycleNode(AccessibilityNodeInfo node) {
        if (node != null) {
            node.recycle();
        }
    }

    @SuppressWarnings("deprecation")
    private static void recycleWindow(AccessibilityWindowInfo window) {
        if (window != null) {
            window.recycle();
        }
    }

    private static final class WindowRoot {
        final AccessibilityNodeInfo root;
        final int layer;

        WindowRoot(AccessibilityNodeInfo root, int layer) {
            this.root = root;
            this.layer = layer;
        }
    }

    private static final class TraversalBudget {
        final long startedAt = SystemClock.uptimeMillis();
        int nodeCount;
        boolean exhausted;
    }
}
