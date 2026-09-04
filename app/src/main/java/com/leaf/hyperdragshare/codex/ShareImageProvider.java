package com.leaf.hyperdragshare.codex;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.provider.OpenableColumns;
import android.provider.MediaStore;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

public final class ShareImageProvider extends ContentProvider {
    private static final String TAG = "DragShareProvider";
    private static final String MIME_PNG = "image/png";
    private static final String MIME_JPEG = "image/jpeg";
    private static final long MAX_CACHE_AGE_MS = 24L * 60L * 60L * 1000L;
    private static final long MAX_FILE_BYTES = 32L * 1024L * 1024L;

    private File shareDirectory;

    @Override
    public boolean onCreate() {
        if (getContext() == null) {
            return false;
        }
        shareDirectory = new File(getContext().getCacheDir(), "shared-images");
        return shareDirectory.exists() || shareDirectory.mkdirs();
    }

    @Override
    public Bundle call(String method, String arg, Bundle extras) {
        if (ModuleActivation.METHOD_REPORT_INJECTED.equals(method)) {
            enforcePortalCaller();
            ModuleActivation.recordInjected(contextOrThrow(), extras);
            return Bundle.EMPTY;
        }
        if (DragShareSettings.METHOD_GET_SETTINGS.equals(method)) {
            enforcePortalCaller();
            return DragShareSettings.readLocal(contextOrThrow()).toBundle();
        }
        if (ImageStagingClient.METHOD_GRANT.equals(method)) {
            enforcePortalCaller();
            return grantImage(extras);
        }
        if (ImageStagingClient.METHOD_REVOKE.equals(method)) {
            enforcePortalCaller();
            return revokeImage(extras);
        }
        if (!ImageStagingClient.METHOD_STAGE.equals(method)) {
            return super.call(method, arg, extras);
        }
        enforcePortalCaller();
        return stageImage(extras);
    }

    private Bundle stageImage(Bundle extras) {
        if (extras == null) {
            throw new IllegalArgumentException("Missing image data");
        }
        ParcelFileDescriptor stream = extras.getParcelable(
                ImageStagingClient.EXTRA_STREAM,
                ParcelFileDescriptor.class);
        byte[] bytes = extras.getByteArray(ImageStagingClient.EXTRA_BYTES);
        boolean png = stream != null;
        if (!png && (bytes == null || bytes.length == 0 || bytes.length > MAX_FILE_BYTES)) {
            throw new IllegalArgumentException("Invalid staged image size");
        }

        cleanupExpiredFiles();
        String token = UUID.randomUUID().toString();
        String suffix = png ? ShareUriToken.PNG_SUFFIX : ShareUriToken.JPEG_SUFFIX;
        File temporary = new File(shareDirectory, token + ".tmp");
        File destination = fileForToken(token, suffix);
        long written;
        try (FileOutputStream output = new FileOutputStream(temporary)) {
            if (stream != null) {
                try (InputStream input =
                             new ParcelFileDescriptor.AutoCloseInputStream(stream)) {
                    written = copyImage(input, output);
                }
            } else {
                output.write(bytes);
                written = bytes.length;
            }
            output.getFD().sync();
        } catch (IOException error) {
            temporary.delete();
            throw new IllegalStateException("Unable to stage shared image", error);
        } finally {
            if (stream != null) {
                try {
                    stream.close();
                } catch (IOException ignored) {
                    
                }
            }
        }
        if (!temporary.renameTo(destination)) {
            temporary.delete();
            throw new IllegalStateException("Unable to publish staged image");
        }

        Uri uri = uriForToken(token, suffix);
        grantReadAccessAsOwner(
                MainHook.TAPLUS_PACKAGE,
                uri);
        DragShareLog.i(TAG, "staged format=" + (png ? "png" : "jpeg")
                + " bytes=" + written);
        Bundle result = new Bundle();
        result.putString(ImageStagingClient.RESULT_URI, uri.toString());
        return result;
    }

    private static long copyImage(InputStream input, FileOutputStream output) throws IOException {
        byte[] buffer = new byte[64 * 1024];
        long total = 0L;
        int read;
        while ((read = input.read(buffer)) >= 0) {
            if (read == 0) {
                continue;
            }
            total += read;
            if (total > MAX_FILE_BYTES) {
                throw new IOException("Staged PNG exceeds size limit");
            }
            output.write(buffer, 0, read);
        }
        if (total == 0L) {
            throw new IOException("Staged PNG is empty");
        }
        return total;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        if (!"r".equals(mode)) {
            throw new FileNotFoundException("Read-only provider");
        }
        try {
            File file = resolveFile(uri);
            if (!file.isFile()) {
                throw new FileNotFoundException("Staged image is missing");
            }
            DragShareLog.i(TAG, "open uid=" + Binder.getCallingUid()
                    + " bytes=" + file.length());
            return ParcelFileDescriptor.open(file, ParcelFileDescriptor.MODE_READ_ONLY);
        } catch (FileNotFoundException | RuntimeException error) {
            DragShareLog.w(TAG, "open failed uid=" + Binder.getCallingUid()
                    + " uri=" + describeUri(uri), error);
            throw error;
        }
    }

    @Override
    public String getType(Uri uri) {
        String suffix = resolveSuffix(uri);
        DragShareLog.d(TAG, "getType uid=" + Binder.getCallingUid()
                + " uri=" + describeUri(uri) + " result="
                + (suffix == null ? null : mimeTypeForSuffix(suffix)));
        return suffix == null ? null : mimeTypeForSuffix(suffix);
    }

    @Override
    public Cursor query(
            Uri uri,
            String[] projection,
            String selection,
            String[] selectionArgs,
            String sortOrder) {
        File file;
        try {
            file = resolveFile(uri);
        } catch (RuntimeException error) {
            DragShareLog.w(TAG, "query failed uid=" + Binder.getCallingUid()
                    + " uri=" + describeUri(uri), error);
            throw error;
        }
        DragShareLog.d(TAG, "query uid=" + Binder.getCallingUid()
                + " uri=" + describeUri(uri) + " bytes=" + file.length());
        String[] columns = projection == null
                ? new String[]{
                        OpenableColumns.DISPLAY_NAME,
                        OpenableColumns.SIZE,
                        MediaStore.MediaColumns.MIME_TYPE}
                : projection;
        MatrixCursor cursor = new MatrixCursor(columns, 1);
        MatrixCursor.RowBuilder row = cursor.newRow();
        for (String column : columns) {
            if (OpenableColumns.DISPLAY_NAME.equals(column)) {
                String token = resolveToken(uri);
                String suffix = resolveSuffix(uri);
                row.add(token == null || suffix == null
                        ? "drag-share.png"
                        : ShareUriToken.fileName(token, suffix));
            } else if (OpenableColumns.SIZE.equals(column)) {
                row.add(file.length());
            } else if (MediaStore.MediaColumns.MIME_TYPE.equals(column)) {
                row.add(mimeTypeForSuffix(resolveSuffix(uri)));
            } else if (MediaStore.MediaColumns.DATE_MODIFIED.equals(column)) {
                row.add(file.lastModified() / 1000L);
            } else if (MediaStore.MediaColumns.TITLE.equals(column)) {
                row.add("DragShare image");
            } else {
                row.add(null);
            }
        }
        return cursor;
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException("Use call(stage_image)");
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    private Bundle grantImage(Bundle extras) {
        Uri uri = requireShareUri(extras);
        String packageName = requirePackageName(extras);
        File file = resolveFile(uri);
        if (!file.isFile()) {
            throw new IllegalArgumentException("Staged image no longer exists");
        }
        grantReadAccessAsOwner(
                packageName,
                uri);
        DragShareLog.i(TAG, "granted package=" + packageName);
        Bundle result = new Bundle();
        result.putBoolean(ImageStagingClient.RESULT_GRANTED, true);
        return result;
    }

    private Bundle revokeImage(Bundle extras) {
        Uri uri = requireShareUri(extras);
        String packageName = requirePackageName(extras);
        revokeReadAccessAsOwner(
                packageName,
                uri);
        return Bundle.EMPTY;
    }

    private Uri requireShareUri(Bundle extras) {
        String value = extras == null
                ? null
                : extras.getString(ImageStagingClient.RESULT_URI);
        Uri uri = value == null ? null : Uri.parse(value);
        if (uri == null || resolveToken(uri) == null) {
            throw new IllegalArgumentException("Invalid share URI");
        }
        return uri;
    }

    private String requirePackageName(Bundle extras) {
        String packageName = extras == null
                ? null
                : extras.getString(ImageStagingClient.EXTRA_PACKAGE);
        if (packageName == null || packageName.trim().isEmpty()) {
            throw new IllegalArgumentException("Missing target package");
        }
        return packageName;
    }

    private void enforcePortalCaller() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == Process.myUid()) {
            return;
        }
        PackageManager packageManager = contextOrThrow().getPackageManager();
        String[] packages = packageManager.getPackagesForUid(callingUid);
        if (packages != null) {
            for (String packageName : packages) {
                if (MainHook.TAPLUS_PACKAGE.equals(packageName)) {
                    return;
                }
            }
        }
        throw new SecurityException("Only Taplus can stage share images");
    }

    private File resolveFile(Uri uri) {
        String token = resolveToken(uri);
        String suffix = resolveSuffix(uri);
        if (token == null || suffix == null) {
            throw new IllegalArgumentException("Invalid share URI");
        }
        return fileForToken(token, suffix);
    }

    static File stagedFileFor(Context context, Uri uri) {
        if (context == null || uri == null
                || !ImageStagingClient.AUTHORITY.equals(uri.getAuthority())
                || !"content".equals(uri.getScheme())) {
            return null;
        }
        try {
            String pathSegment = uri.getLastPathSegment();
            String token = pathSegment == null ? null : ShareUriToken.parse(pathSegment);
            String suffix = pathSegment == null ? null : ShareUriToken.suffix(pathSegment);
            if (token == null || suffix == null) {
                return null;
            }
            return new File(new File(context.getCacheDir(), "shared-images"),
                    ShareUriToken.fileName(token, suffix));
        } catch (RuntimeException e) {
            return null;
        }
    }

    private String resolveToken(Uri uri) {
        String pathSegment = resolvePathSegment(uri);
        return pathSegment == null ? null : ShareUriToken.parse(pathSegment);
    }

    private String resolveSuffix(Uri uri) {
        String pathSegment = resolvePathSegment(uri);
        return pathSegment == null ? null : ShareUriToken.suffix(pathSegment);
    }

    private String resolvePathSegment(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (!ImageStagingClient.AUTHORITY.equals(uri.getAuthority())) {
            return null;
        }
        if (uri.getPathSegments().size() != 2
                || !"shared".equals(uri.getPathSegments().get(0))) {
            return null;
        }
        return uri.getPathSegments().get(1);
    }

    private static String describeUri(Uri uri) {
        if (uri == null) {
            return "null";
        }
        return uri.getScheme() + "://" + uri.getAuthority()
                + "/" + (uri.getPathSegments().isEmpty()
                ? "" : uri.getPathSegments().get(0)) + "/<redacted>";
    }

    private File fileForToken(String token, String suffix) {
        return new File(shareDirectory, ShareUriToken.fileName(token, suffix));
    }

    private void cleanupExpiredFiles() {
        File[] files = shareDirectory.listFiles();
        if (files == null) {
            return;
        }
        long cutoff = System.currentTimeMillis() - MAX_CACHE_AGE_MS;
        for (File file : files) {
            if (file.lastModified() < cutoff) {
                String token = ShareUriToken.parse(file.getName());
                if (token != null) {
                    String suffix = ShareUriToken.suffix(file.getName());
                    revokeReadAccessAsOwner(null, uriForToken(token, suffix));
                }
                file.delete();
            }
        }
    }

    private Uri uriForToken(String token, String suffix) {
        return ImageStagingClient.BASE_URI.buildUpon()
                .appendPath("shared")
                .appendPath(ShareUriToken.fileName(token, suffix))
                .build();
    }

    private static String mimeTypeForSuffix(String suffix) {
        return ShareUriToken.JPEG_SUFFIX.equals(suffix) ? MIME_JPEG : MIME_PNG;
    }

    private void grantReadAccessAsOwner(String packageName, Uri uri) {
        long identity = Binder.clearCallingIdentity();
        try {
            contextOrThrow().grantUriPermission(
                    packageName,
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private void revokeReadAccessAsOwner(String packageName, Uri uri) {
        long identity = Binder.clearCallingIdentity();
        try {
            if (packageName == null) {
                contextOrThrow().revokeUriPermission(
                        uri,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION);
            } else {
                contextOrThrow().revokeUriPermission(
                        packageName,
                        uri,
                        Intent.FLAG_GRANT_READ_URI_PERMISSION);
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private android.content.Context contextOrThrow() {
        android.content.Context context = getContext();
        if (context == null) {
            throw new IllegalStateException("Provider is not attached");
        }
        return context;
    }
}
