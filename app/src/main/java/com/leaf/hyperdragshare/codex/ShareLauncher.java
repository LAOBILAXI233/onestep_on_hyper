package com.leaf.hyperdragshare.codex;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
final class ShareLauncher {
    private ShareLauncher() {}

    static void launch(
            Context context,
            CapturedContent payload,
            ShareTarget target,
            Uri stagedImage,
            DragShareToast toast) {
        try {
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType(payload.mimeType());
            intent.setComponent(target.component);
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

            DragShareLog.i("DragShare/Share", "prepare target="
                    + target.component.flattenToShortString()
                    + " kind=" + (payload.isImage() ? "image" : "text")
                    + " mime=" + payload.mimeType());

            if (!payload.isImage()) {
                intent.putExtra(Intent.EXTRA_TEXT, payload.text);
            } else {
                if (stagedImage == null) {
                    throw new IllegalArgumentException("Image URI is not ready");
                }
                intent.setDataAndType(stagedImage, payload.mimeType());
                intent.putExtra(Intent.EXTRA_STREAM, stagedImage);
                intent.putExtra(Intent.EXTRA_TITLE, "drag-share.png");
                intent.setClipData(ClipData.newUri(
                        context.getContentResolver(), "drag-share-image", stagedImage));
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                ImageStagingClient.grantReadAccess(
                        context,
                        stagedImage,
                        target.component.getPackageName());
                DragShareLog.i("DragShare/Share", "intent image data="
                        + describeUri(stagedImage)
                        + " flags=0x" + Integer.toHexString(intent.getFlags())
                        + " clip=true stream=true grant=true");
            }
            context.startActivity(intent);
            DragShareLog.i("DragShare/Share", "startActivity succeeded target="
                    + target.component.flattenToShortString());
        } catch (Throwable error) {
            DragShareLog.w("DragShare/Share", "launch failed target="
                    + target.component.flattenToShortString(), error);
            if (stagedImage != null) {
                try {
                    ImageStagingClient.revokeReadAccess(
                            context,
                            stagedImage,
                            target.component.getPackageName());
                } catch (Throwable ignored) {
                    
                }
            }
            if (toast != null) {
                toast.show("无法打开 " + target.label);
            }
        }
    }

    private static String describeUri(Uri uri) {
        if (uri == null) {
            return "null";
        }
        return uri.getScheme() + "://" + uri.getAuthority()
                + "/" + (uri.getPathSegments().isEmpty()
                ? "" : uri.getPathSegments().get(0)) + "/<redacted>";
    }
}
