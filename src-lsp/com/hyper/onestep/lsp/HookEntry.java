package com.hyper.onestep.lsp;
import java.lang.reflect.Method;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface.ModuleLoadedParam;
import io.github.libxposed.api.XposedModuleInterface.PackageLoadedParam;
import io.github.libxposed.api.XposedModuleInterface.SystemServerStartingParam;
// Xposed 模块入口，按进程装载 OneStep 各类 Hook
public class HookEntry extends XposedModule {
    private static final String SYSTEMUI_PACKAGE = "com.android.systemui";
    private static final String LAUNCHER_PACKAGE = "com.miui.home";
    private static final String SYSTEM_SERVER_PACKAGE = "android";
    private static final String EMBEDDING_CONTROLLER =
            "com.android.server.wm.MiuiActivityEmbeddingController";
    private static volatile boolean sEmbeddingVideoHookInstalled;
    private static volatile boolean sLargeAreaGestureHookInstalled;
    public HookEntry() {
        super();
        LSPLogger.i("HookEntry constructed");
    }
    // 模块加载完成时回调，记录启动日志
    @Override
    public void onModuleLoaded(ModuleLoadedParam param) {
        super.onModuleLoaded(param);
        LSPLogger.logBoot();
        LSPLogger.i("HookEntry.onModuleLoaded: module loaded systemServer="
                + param.isSystemServer());
    }
    // 系统服务启动时回调，挂载系统服务端相关Hook
    @Override
    public void onSystemServerStarting(SystemServerStartingParam param) {
        LSPLogger.i("HookEntry.onSystemServerStarting: attaching to system_server");
        try {
            hookSystemServerRelaunchPolicy(param.getClassLoader());
        } catch (Throwable t) {
            LSPLogger.e("HookEntry.onSystemServerStarting: hook failed", t);
        }
    }
    // 包加载时回调，按进程分发SystemUI/Launcher/system_server等各类Hook
    @Override
    public void onPackageLoaded(PackageLoadedParam param) {
        String pkg = param.getPackageName();
        boolean first = param.isFirstPackage();
        LSPLogger.i("HookEntry.onPackageLoaded: pkg=" + pkg + " isFirst=" + first);
        if (!first) {
            LSPLogger.d("HookEntry.onPackageLoaded: skip non-first package load");
            return;
        }
        ClassLoader cl = param.getDefaultClassLoader();
        LSPLogger.d("HookEntry.onPackageLoaded: classLoader=" + cl);
        if (SYSTEMUI_PACKAGE.equals(pkg)) {
            LSPLogger.i("HookEntry.onPackageLoaded: attaching to SystemUI process");
            TaskSurfaceTransformer.setHostClassLoader(cl);
            try {
                hookCentralSurfacesImpl(cl);
                hookCornerGestures(cl);
            } catch (Throwable t) {
                LSPLogger.e("HookEntry.onPackageLoaded: SystemUI hook failed", t);
            }
            return;
        }
        if (LAUNCHER_PACKAGE.equals(pkg)) {
            LSPLogger.i("HookEntry.onPackageLoaded: attaching to Launcher process");
            try {
                hookLauncher(cl);
            } catch (Throwable t) {
                LSPLogger.e("HookEntry.onPackageLoaded: Launcher hook failed", t);
            }
            return;
        }
        if (SYSTEM_SERVER_PACKAGE.equals(pkg)) {
            LSPLogger.i("HookEntry.onPackageLoaded: attaching to system_server");
            try {
                hookSystemServerRelaunchPolicy(cl);
            } catch (Throwable t) {
                LSPLogger.e("HookEntry.onPackageLoaded: system_server hook failed", t);
            }
            return;
        }
        LSPLogger.i("HookEntry.onPackageLoaded: attaching client configuration patch");
        try {
            hookClientConfiguration(cl);
        } catch (Throwable t) {
            LSPLogger.e("HookEntry.onPackageLoaded: client hook failed", t);
        }
    }
    private void hookClientConfiguration(ClassLoader classLoader) throws Throwable {
        Class<?> activityThread = classLoader.loadClass("android.app.ActivityThread");
        int installed = 0;
        for (Method method : activityThread.getDeclaredMethods()) {
            Class<?>[] parameters = method.getParameterTypes();
            if (!"handleActivityConfigurationChanged".equals(method.getName())
                    || parameters.length < 2
                    || parameters[1] != android.content.res.Configuration.class) {
                continue;
            }
            method.setAccessible(true);
            hook(method).intercept(new ActivityClientConfigurationHooker());
            installed++;
            LSPLogger.i("hookClientConfiguration: installed " + method);
        }
        if (installed == 0) {
            throw new NoSuchMethodException(
                    "ActivityThread#handleActivityConfigurationChanged(*, Configuration, ...)");
        }
    }
    private void hookLauncher(ClassLoader classLoader) throws Throwable {
        Class<?> launcher = classLoader.loadClass("com.miui.home.launcher.Launcher");
        LSPLogger.i("hookLauncher: class loaded " + launcher.getName());
        int lifecycleHooks = 0;
        Method onCreate = findMethod(launcher, "onCreate", android.os.Bundle.class);
        if (onCreate != null) {
            onCreate.setAccessible(true);
            hook(onCreate).intercept(new LauncherLifecycleHooker());
            lifecycleHooks++;
            LSPLogger.i("hookLauncher: installed Launcher#onCreate");
        }
        Method onResume = findMethod(launcher, "onResume");
        if (onResume != null && onResume != onCreate) {
            onResume.setAccessible(true);
            hook(onResume).intercept(new LauncherLifecycleHooker());
            lifecycleHooks++;
            LSPLogger.i("hookLauncher: installed Launcher#onResume");
        }
        Method dispatchTouch = findMethod(launcher, "dispatchTouchEvent",
                android.view.MotionEvent.class);
        if (dispatchTouch != null) {
            dispatchTouch.setAccessible(true);
            hook(dispatchTouch).intercept(new LauncherTouchHooker());
            LSPLogger.i("hookLauncher: installed Launcher#dispatchTouchEvent");
        }
        LSPLogger.i("hookLauncher: lifecycleHooks=" + lifecycleHooks
                + " touchHook=" + (dispatchTouch != null));
    }
    private void hookSystemServerRelaunchPolicy(ClassLoader classLoader) {
        HookTally tally = new HookTally();
        install(tally, "GlobalLargeAreaGesture",
                () -> hookGlobalLargeAreaGesture(classLoader));
        install(tally, "DisplayManagerGlobal#wasUIAgentDisplay", () -> {
            Class<?> displayManagerGlobal = requireClass(classLoader,
                    "android.hardware.display.DisplayManagerGlobal");
            Method method = requireMethod(displayManagerGlobal,
                    names("wasUIAgentDisplay"), signature(int.class));
            hook(method).intercept(new SystemServerRelaunchHooker());
        });
        install(tally, "ActivityTaskManagerService#startActivityFromRecents", () -> {
            Class<?> activityTaskManagerService = requireClass(classLoader,
                    "com.android.server.wm.ActivityTaskManagerService");
            Method startActivityFromRecents = requireMethod(activityTaskManagerService,
                    names("startActivityFromRecents"),
                    signature(int.class, android.os.Bundle.class));
            hook(startActivityFromRecents).intercept(new BackgroundTaskActivationHooker());
        });
        install(tally, "ActivityRecordImpl#getRelaunchFlag", () -> {
            Class<?> activityRecordImpl = requireClass(classLoader,
                    "com.android.server.wm.ActivityRecordImpl");
            Method relaunchMethod = requireMethod(activityRecordImpl,
                    names("getRelaunchFlag"),
                    signature(android.content.res.Configuration.class,
                            android.content.res.Configuration.class, int.class));
            java.lang.reflect.Field forceNotRelaunch = relaunchMethod.getReturnType()
                    .getDeclaredField("FORCE_NOT_RELAUNCH");
            forceNotRelaunch.setAccessible(true);
            hook(relaunchMethod).intercept(
                    new ActivityRelaunchPolicyHooker(forceNotRelaunch.get(null)));
        });
        install(tally, "AppCompatAspectRatioOverrides#getFixedOrientationLetterboxAspectRatio",
                () -> {
                    Class<?> aspectRatioOverrides = requireClass(classLoader,
                            "com.android.server.wm.AppCompatAspectRatioOverrides",
                            "com.android.server.wm.LetterboxUiController");
                    Method aspectRatioMethod = requireMethod(aspectRatioOverrides,
                            names("getFixedOrientationLetterboxAspectRatio"),
                            signature(android.content.res.Configuration.class));
                    hook(aspectRatioMethod).intercept(new OneStepLetterboxAspectRatioHooker());
                });
        install(tally, "AppCompatAspectRatioPolicy#fixed-letterbox-bounds", () -> {
            Class<?> aspectRatioPolicy = requireClass(classLoader,
                    "com.android.server.wm.AppCompatAspectRatioPolicy",
                    "com.android.server.wm.LetterboxUiController");
            Method setFixedLetterboxBounds = requireMethod(aspectRatioPolicy,
                    names("setLetterboxBoundsForFixedOrientationAndAspectRatio"),
                    signature(android.graphics.Rect.class));
            hook(setFixedLetterboxBounds).intercept(new FixedOrientationBoundsHooker(false));
            Method resetAspectRatioPolicy = requireMethod(aspectRatioPolicy,
                    names("reset"), signature());
            hook(resetAspectRatioPolicy).intercept(new FixedOrientationBoundsHooker(true));
        });
        Class<?> activityRecord = null;
        try {
            activityRecord = requireClass(classLoader, "com.android.server.wm.ActivityRecord");
        } catch (Throwable t) {
            LSPLogger.e("hookSystemServerRelaunchPolicy: ActivityRecord unavailable,"
                    + " skipping every ActivityRecord hook", t);
        }
        if (activityRecord != null) {
            final Class<?> record = activityRecord;
            install(tally, "ActivityRecord#resolveOverrideConfiguration", () -> {
                Method resolveOverrideConfiguration = requireMethod(record,
                        names("resolveOverrideConfiguration"),
                        signature(android.content.res.Configuration.class));
                hook(resolveOverrideConfiguration).intercept(new LandscapeConfigurationHooker());
            });
            install(tally, "ActivityRecord#configurationDispatch",
                    () -> hookActivityConfigurationDispatch(record));
            install(tally, "ActivityRecord#setRequestedOrientation", () -> {
                Method setRequestedOrientation = requireMethod(record,
                        names("setRequestedOrientation"), signature(int.class));
                hook(setRequestedOrientation).intercept(new RequestedOrientationHooker());
            });
            install(tally, "MiuiEmbeddingWindowPolicy",
                    () -> hookMiuiEmbeddingWindowPolicy(classLoader, record));
        }
        install(tally, "WindowState#getSurfaceTouchableRegion", () -> {
            Class<?> windowState = requireClass(classLoader,
                    "com.android.server.wm.WindowState");
            Method getSurfaceTouchableRegion = requireMethod(windowState,
                    names("getSurfaceTouchableRegion"),
                    signature(android.graphics.Region.class,
                            android.view.WindowManager.LayoutParams.class));
            hook(getSurfaceTouchableRegion).intercept(new LandscapeInputRegionHooker());
        });
        LSPLogger.i("hookSystemServerRelaunchPolicy: " + tally
                + " sdk=" + android.os.Build.VERSION.SDK_INT);
    }
    /** One hook installation, isolated so a platform change cannot cascade. */
    private interface HookInstaller {
        void install() throws Throwable;
    }
    private static final class HookTally {
        int installed;
        int skipped;
        @Override
        public String toString() {
            return "installed=" + installed + " skipped=" + skipped;
        }
    }
    private void install(HookTally tally, String label, HookInstaller installer) {
        try {
            installer.install();
            tally.installed++;
            LSPLogger.i("hookSystemServerRelaunchPolicy: installed " + label);
        } catch (Throwable t) {
            tally.skipped++;
            LSPLogger.w("hookSystemServerRelaunchPolicy: SKIPPED " + label + " -> " + t);
        }
    }
    private static String[] names(String... candidates) {
        return candidates;
    }
    private static Class<?>[] signature(Class<?>... parameters) {
        return parameters;
    }
    /** Loads the first class that exists, so a renamed platform class does not kill the hook. */
    private static Class<?> requireClass(ClassLoader classLoader, String... candidates)
            throws ClassNotFoundException {
        for (String candidate : candidates) {
            try {
                return classLoader.loadClass(candidate);
            } catch (Throwable ignored) {
            }
        }
        throw new ClassNotFoundException("none of " + java.util.Arrays.toString(candidates));
    }
    private static Method requireMethod(Class<?> type, String[] candidateNames,
            Class<?>... parameters) throws NoSuchMethodException {
        for (Class<?> current = type; current != null && current != Object.class;
                current = current.getSuperclass()) {
            for (String name : candidateNames) {
                try {
                    Method method = current.getDeclaredMethod(name, parameters);
                    method.setAccessible(true);
                    return method;
                } catch (NoSuchMethodException ignored) {
                }
            }
        }
        for (Class<?> current = type; current != null && current != Object.class;
                current = current.getSuperclass()) {
            for (Method method : current.getDeclaredMethods()) {
                for (String name : candidateNames) {
                    if (name.equals(method.getName())
                            && method.getParameterTypes().length == parameters.length) {
                        method.setAccessible(true);
                        LSPLogger.w("requireMethod: " + type.getName() + "#" + name
                                + " matched by arity; signature changed to "
                                + java.util.Arrays.toString(method.getParameterTypes()));
                        return method;
                    }
                }
            }
        }
        throw new NoSuchMethodException(type.getName() + "#"
                + java.util.Arrays.toString(candidateNames)
                + java.util.Arrays.toString(parameters));
    }
    private void hookActivityConfigurationDispatch(Class<?> activityRecord) {
        try {
            Method moved = findConfigurationDispatchMethod(activityRecord,
                    "scheduleActivityMovedToDisplay", 3);
            if (moved == null) throw new NoSuchMethodException("scheduleActivityMovedToDisplay");
            moved.setAccessible(true);
            hook(moved).intercept(new LandscapeConfigurationDispatchHooker(true));
            LSPLogger.i("hookSystemServerRelaunchPolicy: installed ActivityRecord"
                    + "#scheduleActivityMovedToDisplay");
        } catch (Throwable t) {
            LSPLogger.d("hookActivityConfigurationDispatch: moved hook unavailable: " + t);
        }
        try {
            Method changed = findConfigurationDispatchMethod(activityRecord,
                    "scheduleConfigurationChanged", 2);
            if (changed == null) throw new NoSuchMethodException("scheduleConfigurationChanged");
            changed.setAccessible(true);
            hook(changed).intercept(new LandscapeConfigurationDispatchHooker(false));
            LSPLogger.i("hookSystemServerRelaunchPolicy: installed ActivityRecord"
                    + "#scheduleConfigurationChanged");
        } catch (Throwable t) {
            LSPLogger.d("hookActivityConfigurationDispatch: config hook unavailable: " + t);
        }
    }
    private static Method findConfigurationDispatchMethod(Class<?> type, String name,
            int parameterCount) {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            for (Method method : current.getDeclaredMethods()) {
                Class<?>[] parameters = method.getParameterTypes();
                if (name.equals(method.getName()) && parameters.length == parameterCount
                        && parameters[0] == (parameterCount == 3 ? int.class
                                : android.content.res.Configuration.class)
                        && parameters[parameterCount == 3 ? 1 : 0]
                                == android.content.res.Configuration.class) {
                    return method;
                }
            }
            current = current.getSuperclass();
        }
        return null;
    }
    private void hookMiuiEmbeddingWindowPolicy(ClassLoader systemClassLoader,
            Class<?> activityRecord) {
        try {
            Class<?> controller = systemClassLoader.loadClass(EMBEDDING_CONTROLLER);
            installMiuiEmbeddingVideoHook(controller, activityRecord);
        } catch (Throwable t) {
            LSPLogger.d("hookMiuiEmbeddingWindowPolicy: controller not on base class path: "
                    + t);
        }
        try {
            Class<?> registry = systemClassLoader.loadClass("com.miui.base.MiuiStubRegistry");
            Method loadJar = registry.getDeclaredMethod("loadJar", String.class, boolean.class,
                    ClassLoader.class);
            loadJar.setAccessible(true);
            hook(loadJar).intercept(new XposedInterface.Hooker() {
                @Override
                public Object intercept(XposedInterface.Chain chain) throws Throwable {
                    Object result = chain.proceed();
                    if (result instanceof ClassLoader) {
                        try {
                            Class<?> controller = ((ClassLoader) result).loadClass(
                                    EMBEDDING_CONTROLLER);
                            installMiuiEmbeddingVideoHook(controller, activityRecord);
                            LSPLogger.i("hookMiuiEmbeddingWindowPolicy: controller resolved from "
                                    + result);
                        } catch (Throwable t) {
                            LSPLogger.e("hookMiuiEmbeddingWindowPolicy: controller install from "
                                    + "dynamic loader failed", t);
                        }
                    } else {
                        LSPLogger.d("hookMiuiEmbeddingWindowPolicy: loadJar returned " + result);
                    }
                    return result;
                }
            });
            LSPLogger.i("hookSystemServerRelaunchPolicy: watching MiuiStubRegistry#loadJar");
        } catch (Throwable t) {
            LSPLogger.d("hookMiuiEmbeddingWindowPolicy: loadJar hook unavailable: " + t);
        }
        try {
            Class<?> embeddingWindowService = systemClassLoader.loadClass(
                    "com.android.server.wm.MiuiEmbeddingWindowService");
            installMiuiEmbeddingWindowHook(embeddingWindowService, activityRecord);
        } catch (Throwable t) {
            LSPLogger.d("hookMiuiEmbeddingWindowPolicy: implementation not on base class path: "
                    + t);
        }
        try {
            Class<?> loader = systemClassLoader.loadClass(
                    "com.android.server.wm.MiuiEmbeddingWindowServiceLoader");
            Method init = loader.getDeclaredMethod("init");
            init.setAccessible(true);
            hook(init).intercept(new XposedInterface.Hooker() {
                @Override
                public Object intercept(XposedInterface.Chain chain) throws Throwable {
                    Object result = chain.proceed();
                    try {
                        Class<?> stub = systemClassLoader.loadClass(
                                "com.android.server.wm.MiuiEmbeddingWindowServiceStub");
                        Method getDefault = stub.getDeclaredMethod("getDefault");
                        getDefault.setAccessible(true);
                        Object service = getDefault.invoke(null);
                        if (service != null) {
                            installMiuiEmbeddingWindowHook(service.getClass(), activityRecord);
                            ClassLoader implementationLoader = service.getClass().getClassLoader();
                            if (implementationLoader != null) {
                                Class<?> controller = implementationLoader.loadClass(
                                        EMBEDDING_CONTROLLER);
                                installMiuiEmbeddingVideoHook(controller, activityRecord);
                            }
                        } else {
                            LSPLogger.d("hookMiuiEmbeddingWindowPolicy: default service is null");
                        }
                    } catch (Throwable t) {
                        LSPLogger.d("hookMiuiEmbeddingWindowPolicy: post-load install failed: "
                                + t);
                    }
                    return result;
                }
            });
            LSPLogger.i("hookSystemServerRelaunchPolicy: watching"
                    + " MiuiEmbeddingWindowServiceLoader#init");
        } catch (Throwable t) {
            LSPLogger.d("hookMiuiEmbeddingWindowPolicy: loader hook unavailable: " + t);
        }
    }
    private void installMiuiEmbeddingWindowHook(Class<?> serviceClass,
            Class<?> activityRecord) throws Throwable {
        if (sEmbeddingVideoHookInstalled || serviceClass == null) return;
        Method resizeSpecialVideo = serviceClass.getDeclaredMethod(
                "resizeSpecialVideoInEmbedded", activityRecord, int.class, String.class);
        resizeSpecialVideo.setAccessible(true);
        hook(resizeSpecialVideo).intercept(new EmbeddedVideoFullscreenHooker());
        sEmbeddingVideoHookInstalled = true;
        LSPLogger.i("hookSystemServerRelaunchPolicy: installed " + serviceClass.getName()
                + "#resizeSpecialVideoInEmbedded");
    }
    private void installMiuiEmbeddingVideoHook(Class<?> controllerClass,
            Class<?> activityRecord) throws Throwable {
        if (sEmbeddingVideoHookInstalled || controllerClass == null) return;
        Method resizeSpecialVideo = controllerClass.getDeclaredMethod(
                "resizeSpecialVideoInEmbedded", activityRecord, int.class, String.class);
        resizeSpecialVideo.setAccessible(true);
        hook(resizeSpecialVideo).intercept(new EmbeddedVideoFullscreenHooker());
        sEmbeddingVideoHookInstalled = true;
        LSPLogger.i("hookSystemServerRelaunchPolicy: installed " + controllerClass.getName()
                + "#resizeSpecialVideoInEmbedded");
    }
    private static Method findMethod(Class<?> type, String name, Class<?>... parameterTypes) {
        Class<?> current = type;
        while (current != null && current != Object.class) {
            try {
                return current.getDeclaredMethod(name, parameterTypes);
            } catch (NoSuchMethodException ignored) {
                current = current.getSuperclass();
            }
        }
        LSPLogger.w("HookEntry.findMethod: missing " + type.getName() + "#" + name);
        return null;
    }
    private void hookGlobalLargeAreaGesture(ClassLoader classLoader) {
        if (sLargeAreaGestureHookInstalled) return;
        synchronized (HookEntry.class) {
            if (sLargeAreaGestureHookInstalled) return;
            try {
                Class<?> listener = classLoader.loadClass(
                        "com.android.server.wm.SystemGesturesPointerEventListener");
                Method onPointerEvent = findMethod(listener, "onPointerEvent",
                        android.view.MotionEvent.class);
                if (onPointerEvent == null) {
                    throw new NoSuchMethodException(listener.getName() + "#onPointerEvent");
                }
                onPointerEvent.setAccessible(true);
                hook(onPointerEvent).intercept(new LargeAreaSwipeGestureHooker(classLoader));
                sLargeAreaGestureHookInstalled = true;
                LSPLogger.i("hookGlobalLargeAreaGesture: installed "
                        + listener.getName() + "#onPointerEvent");
            } catch (Throwable t) {
                LSPLogger.e("hookGlobalLargeAreaGesture: unavailable", t);
            }
        }
    }
    private void hookCornerGestures(ClassLoader classLoader) {
        String[][] candidates = new String[][] {
                { "com.android.systemui.statusbar.phone.PhoneStatusBarView", "onTouchEvent" },
                { "com.android.systemui.shade.NotificationShadeWindowView", "dispatchTouchEvent" },
                { "com.android.systemui.statusbar.phone.NotificationShadeWindowView", "dispatchTouchEvent" },
        };
        int installed = 0;
        for (String[] candidate : candidates) {
            try {
                Class<?> type = classLoader.loadClass(candidate[0]);
                Method method = type.getDeclaredMethod(candidate[1],
                        android.view.MotionEvent.class);
                method.setAccessible(true);
                hook(method).intercept(new CornerGestureHooker());
                installed++;
                LSPLogger.i("hookCornerGestures: installed "
                        + candidate[0] + "#" + candidate[1]);
            } catch (Throwable t) {
                LSPLogger.d("hookCornerGestures: unavailable "
                        + candidate[0] + "#" + candidate[1] + ": " + t);
            }
        }
        LSPLogger.i("hookCornerGestures: installedCount=" + installed);
    }
    private void hookCentralSurfacesImpl(ClassLoader cl) throws Throwable {
        String className = "com.android.systemui.statusbar.phone.CentralSurfacesImpl";
        String[] candidates = new String[] {
                "startCentralSurfaces",
                "start",
        };
        Class<?> clazz;
        try {
            clazz = cl.loadClass(className);
            LSPLogger.i("hookCentralSurfacesImpl: class loaded " + className);
        } catch (ClassNotFoundException e) {
            LSPLogger.e("hookCentralSurfacesImpl: class not found " + className, e);
            return;
        }
        Method target = null;
        Method[] declared = clazz.getDeclaredMethods();
        for (String name : candidates) {
            for (Method m : declared) {
                if (name.equals(m.getName())) {
                    target = m;
                    LSPLogger.i("hookCentralSurfacesImpl: found method "
                            + name + " with params="
                            + arrayToString(m.getParameterTypes()));
                    break;
                }
            }
            if (target != null) {
                break;
            }
        }
        if (target == null) {
            LSPLogger.e("hookCentralSurfacesImpl: none of "
                    + java.util.Arrays.toString(candidates)
                    + " found in " + className
                    + " (listing all declared methods for diagnosis)");
            for (Method m : declared) {
                LSPLogger.d("  declared: " + m.getName()
                        + " params=" + arrayToString(m.getParameterTypes()));
            }
            return;
        }
        LSPLogger.i("hookCentralSurfacesImpl: installing hook on "
                + className + "#" + target.getName());
        hook(target).intercept(new SystemUIStartupHooker());
        LSPLogger.i("hookCentralSurfacesImpl: hook installed successfully");
    }
    private static String arrayToString(Class<?>[] arr) {
        if (arr == null) return "null";
        if (arr.length == 0) return "()";
        StringBuilder sb = new StringBuilder("(");
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) sb.append(',');
            sb.append(arr[i].getName());
        }
        sb.append(')');
        return sb.toString();
    }
}
