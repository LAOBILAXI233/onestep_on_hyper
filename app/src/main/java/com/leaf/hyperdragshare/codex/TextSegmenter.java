package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.content.res.AssetManager;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public final class TextSegmenter {
    private static final String TAG = "DragShare/Jieba";
    private static final String DICTIONARY_DIRECTORY = "dragshare_jieba";
    private static final String ASSET_DIRECTORY = "dict";
    private static final String[] REQUIRED_FILES = {
            "jieba.dict.utf8",
            "hmm_model.utf8",
            "user.dict.utf8"
    };

    private static volatile TextSegmenter instance;
    private static volatile boolean nativeLibraryLoaded;

    private final Context appContext;
    private boolean initialized;
    private boolean preloading;

    private TextSegmenter(Context context) {
        appContext = context.getApplicationContext();
    }

    static TextSegmenter get(Context context) {
        if (instance == null) {
            synchronized (TextSegmenter.class) {
                if (instance == null) {
                    instance = new TextSegmenter(context);
                }
            }
        }
        return instance;
    }

    public static void preloadIfEnabled(Context context) {
        if (context == null) {
            return;
        }
        DragShareSettings settings = DragShareSettings.readLocal(context);
        if (!settings.masterEnabled || !settings.preloadTextSegmenter) {
            return;
        }
        preload(context);
    }

    static void preload(Context context) {
        if (context != null) {
            get(context).preloadAsync();
        }
    }

    synchronized int[] segment(String text) {
        if (text == null || text.isEmpty()) {
            return null;
        }
        ensureNativeLibraryLoaded();
        ensureInitialized();
        return buildSegments(text, nativeCut(text));
    }

    private void preloadAsync() {
        synchronized (this) {
            if (initialized || preloading) {
                return;
            }
            preloading = true;
        }
        Thread worker = new Thread(() -> {
            try {
                synchronized (TextSegmenter.this) {
                    ensureNativeLibraryLoaded();
                    ensureInitialized();
                }
                DragShareLog.d(TAG, "tokenizer preloaded");
            } catch (Throwable error) {
                
                DragShareLog.w(TAG, "tokenizer preload failed", error);
            } finally {
                synchronized (TextSegmenter.this) {
                    preloading = false;
                }
            }
        }, "drag-share-jieba-preload");
        worker.setDaemon(true);
        try {
            worker.start();
        } catch (Throwable error) {
            synchronized (this) {
                preloading = false;
            }
            DragShareLog.w(TAG, "unable to start tokenizer preload", error);
        }
    }

    static int[] buildSegments(String text, int[] tokenSpans) {
        if (text == null || text.isEmpty() || tokenSpans == null || tokenSpans.length == 0) {
            return null;
        }
        ArrayList<Integer> words = new ArrayList<>();
        ArrayList<Integer> punctuations = new ArrayList<>();
        int cursor = 0;
        for (int index = 0; index + 1 < tokenSpans.length; index += 2) {
            int start = tokenSpans[index];
            int endExclusive = tokenSpans[index + 1];
            if (start < cursor || start < 0 || endExclusive <= start
                    || endExclusive > text.length()) {
                continue;
            }
            appendPunctuation(text, cursor, start, punctuations);
            if (hasWordCodePoint(text, start, endExclusive)) {
                words.add(start);
                words.add(endExclusive - 1);
            } else {
                appendPunctuation(text, start, endExclusive, punctuations);
            }
            cursor = endExclusive;
        }
        appendPunctuation(text, cursor, text.length(), punctuations);
        if (words.isEmpty() && punctuations.isEmpty()) {
            return null;
        }
        int[] result = new int[words.size() + punctuations.size() + 1];
        int outputIndex = 0;
        for (Integer value : words) {
            result[outputIndex++] = value;
        }
        result[outputIndex++] = -1;
        for (Integer value : punctuations) {
            result[outputIndex++] = value;
        }
        return result;
    }

    private void ensureInitialized() {
        if (initialized) {
            return;
        }
        File dictionaryDirectory = ensureDictionaryDirectory();
        if (!nativeInit(dictionaryDirectory.getAbsolutePath())) {
            throw new IllegalStateException("cppjieba init failed");
        }
        initialized = true;
    }

    private static void ensureNativeLibraryLoaded() {
        if (nativeLibraryLoaded) {
            return;
        }
        synchronized (TextSegmenter.class) {
            if (!nativeLibraryLoaded) {
                System.loadLibrary("dragshare_jieba");
                nativeLibraryLoaded = true;
            }
        }
    }

    private File ensureDictionaryDirectory() {
        File directory = new File(appContext.getFilesDir(), DICTIONARY_DIRECTORY);
        if (hasRequiredFiles(directory)) {
            return directory;
        }
        if (!directory.exists() && !directory.mkdirs()) {
            throw new IllegalStateException("Unable to create tokenizer dictionary directory");
        }
        AssetManager assets = appContext.getAssets();
        for (String fileName : REQUIRED_FILES) {
            File destination = new File(directory, fileName);
            if (destination.isFile() && destination.length() > 0L) {
                continue;
            }
            copyAsset(assets, ASSET_DIRECTORY + "/" + fileName, destination);
        }
        if (!hasRequiredFiles(directory)) {
            throw new IllegalStateException("Tokenizer dictionary files are missing");
        }
        return directory;
    }

    private static boolean hasRequiredFiles(File directory) {
        if (!directory.isDirectory()) {
            return false;
        }
        for (String fileName : REQUIRED_FILES) {
            File dictionaryFile = new File(directory, fileName);
            if (!dictionaryFile.isFile() || dictionaryFile.length() <= 0L) {
                return false;
            }
        }
        return true;
    }

    private static void copyAsset(AssetManager assets, String assetPath, File destination) {
        try (InputStream input = assets.open(assetPath);
             FileOutputStream output = new FileOutputStream(destination, false)) {
            byte[] buffer = new byte[32 * 1024];
            int read;
            while ((read = input.read(buffer)) != -1) {
                output.write(buffer, 0, read);
            }
            output.getFD().sync();
        } catch (IOException error) {
            throw new IllegalStateException("Unable to copy tokenizer dictionary", error);
        }
    }

    private static void appendPunctuation(
            String text, int start, int endExclusive, ArrayList<Integer> out) {
        for (int index = start; index < endExclusive;) {
            int codePoint = text.codePointAt(index);
            int next = index + Character.charCount(codePoint);
            if (!Character.isWhitespace(codePoint) && !Character.isSpaceChar(codePoint)) {
                out.add(index);
                out.add(next - 1);
            }
            index = next;
        }
    }

    private static boolean hasWordCodePoint(String text, int start, int endExclusive) {
        for (int index = start; index < endExclusive;) {
            int codePoint = text.codePointAt(index);
            if (Character.isLetterOrDigit(codePoint) || codePoint == '_') {
                return true;
            }
            index += Character.charCount(codePoint);
        }
        return false;
    }

    private static native boolean nativeInit(String dictionaryDirectory);
    private static native int[] nativeCut(String text);
}
