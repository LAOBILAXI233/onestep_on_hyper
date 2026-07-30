package com.hyper.onestep.lsp;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.provider.OpenableColumns;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.regex.Pattern;

/** Grant-gated cache provider used to move extracted screenshots out of system_server. */
public final class BigBangImageProvider extends ContentProvider {
    static final String AUTHORITY = "com.hyper.onestep.bigbang.images";
    private static final String PATH_IMAGES = "images";
    private static final String CACHE_DIRECTORY = "bigbang-images";
    private static final Pattern FILE_NAME = Pattern.compile(
            "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\\.png");
    private static final long MAX_AGE_MS = 24L * 60L * 60L * 1000L;
    private static final int MAX_FILES = 16;

    private File mDirectory;
    private int mOwnerUid;

    @Override
    public boolean onCreate() {
        Context context = getContext();
        if (context == null) return false;
        mOwnerUid = context.getApplicationInfo().uid;
        mDirectory = new File(context.getCacheDir(), CACHE_DIRECTORY);
        if (!mDirectory.exists() && !mDirectory.mkdirs()) {
            LSPLogger.w("BigBangImageProvider: cache directory unavailable");
        }
        cleanupOldFiles();
        return true;
    }

    static Uri uriFor(String fileName) {
        return new Uri.Builder().scheme("content").authority(AUTHORITY)
                .appendPath(PATH_IMAGES).appendPath(fileName).build();
    }

    @Override
    public String getType(Uri uri) {
        return resolveFile(uri) == null ? null : "image/png";
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        File file = resolveFile(uri);
        if (file == null) throw new FileNotFoundException("Unknown BigBang image URI");

        boolean write = mode != null && mode.contains("w");
        if (write) {
            enforcePrivilegedCaller();
            ensureDirectory();
            cleanupOldFiles();
            return ParcelFileDescriptor.open(file,
                    ParcelFileDescriptor.MODE_CREATE
                            | ParcelFileDescriptor.MODE_TRUNCATE
                            | ParcelFileDescriptor.MODE_WRITE_ONLY);
        }

        enforceReadAccess(uri);
        if (!file.isFile()) throw new FileNotFoundException(file.getName());
        return ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY);
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection,
            String[] selectionArgs, String sortOrder) {
        File file = resolveFile(uri);
        if (file == null) return null;
        enforceReadAccess(uri);

        String[] columns = projection == null || projection.length == 0
                ? new String[] { OpenableColumns.DISPLAY_NAME, OpenableColumns.SIZE }
                : projection;
        MatrixCursor cursor = new MatrixCursor(columns, 1);
        MatrixCursor.RowBuilder row = cursor.newRow();
        for (String column : columns) {
            if (OpenableColumns.DISPLAY_NAME.equals(column)) {
                row.add(file.getName());
            } else if (OpenableColumns.SIZE.equals(column)) {
                row.add(file.isFile() ? file.length() : 0L);
            } else {
                row.add(null);
            }
        }
        return cursor;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        enforcePrivilegedCaller();
        File file = resolveFile(uri);
        return file != null && file.delete() ? 1 : 0;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException("Use openFile with write mode");
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection,
            String[] selectionArgs) {
        throw new UnsupportedOperationException("BigBang images are immutable");
    }

    private File resolveFile(Uri uri) {
        if (uri == null || !AUTHORITY.equals(uri.getAuthority())) return null;
        java.util.List<String> segments = uri.getPathSegments();
        if (segments.size() != 2 || !PATH_IMAGES.equals(segments.get(0))) return null;
        String fileName = segments.get(1);
        if (!FILE_NAME.matcher(fileName).matches() || mDirectory == null) return null;
        return new File(mDirectory, fileName);
    }

    private void enforcePrivilegedCaller() {
        int uid = Binder.getCallingUid();
        if (uid != mOwnerUid && uid != Process.SYSTEM_UID && uid != Process.ROOT_UID) {
            throw new SecurityException("BigBang image writes require a privileged caller");
        }
    }

    private void enforceReadAccess(Uri uri) {
        int uid = Binder.getCallingUid();
        if (uid == mOwnerUid || uid == Process.SYSTEM_UID || uid == Process.ROOT_UID) return;
        Context context = getContext();
        int permission = context == null ? PackageManager.PERMISSION_DENIED
                : context.checkUriPermission(uri, Binder.getCallingPid(), uid,
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
        if (permission != PackageManager.PERMISSION_GRANTED) {
            throw new SecurityException("Missing read grant for BigBang image");
        }
    }

    private void ensureDirectory() throws FileNotFoundException {
        if (mDirectory == null || (!mDirectory.exists() && !mDirectory.mkdirs())) {
            throw new FileNotFoundException("BigBang cache directory unavailable");
        }
    }

    private void cleanupOldFiles() {
        if (mDirectory == null) return;
        File[] files = mDirectory.listFiles();
        if (files == null || files.length == 0) return;

        long cutoff = System.currentTimeMillis() - MAX_AGE_MS;
        for (File file : files) {
            if (!file.isFile() || !FILE_NAME.matcher(file.getName()).matches()
                    || file.lastModified() < cutoff) {
                if (!file.delete()) {
                    LSPLogger.d("BigBangImageProvider: could not remove " + file.getName());
                }
            }
        }

        files = mDirectory.listFiles(pathname -> pathname.isFile()
                && FILE_NAME.matcher(pathname.getName()).matches());
        if (files == null || files.length <= MAX_FILES) return;
        Arrays.sort(files, Comparator.comparingLong(File::lastModified).reversed());
        for (int i = MAX_FILES; i < files.length; i++) {
            if (!files[i].delete()) {
                LSPLogger.d("BigBangImageProvider: could not trim " + files[i].getName());
            }
        }
    }
}
