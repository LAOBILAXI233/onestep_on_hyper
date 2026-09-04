package com.hyper.onestep;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.Surface;
import android.view.View;

import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;

public final class VirtualDisplayRegionRegistry {

    public static final class Region {
        public final int displayId;
        public final int displayWidth;
        public final int displayHeight;
        private final WeakReference<View> viewRef;
        private final int displayRotation;

        Region(int displayId, View view, int displayWidth, int displayHeight,
               int displayRotation) {
            this.displayId = displayId;
            this.displayWidth = displayWidth;
            this.displayHeight = displayHeight;
            this.displayRotation = displayRotation;
            this.viewRef = new WeakReference<>(view);
        }

        private Rect currentViewBounds() {
            View view = viewRef.get();
            if (view == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
                return null;
            }
            try {
                int[] origin = new int[2];
                view.getLocationOnScreen(origin);
                return new Rect(origin[0], origin[1],
                        origin[0] + view.getWidth(), origin[1] + view.getHeight());
            } catch (Throwable ignored) {
                
                return null;
            }
        }

        boolean contains(float physicalX, float physicalY) {
            Rect bounds = currentViewBounds();
            return bounds != null
                    && physicalX >= bounds.left
                    && physicalX < bounds.right
                    && physicalY >= bounds.top
                    && physicalY < bounds.bottom;
        }

        public float[] toDisplayCoords(float physicalX, float physicalY) {
            Rect bounds = currentViewBounds();
            if (bounds == null) {
                return new float[]{physicalX, physicalY};
            }
            View view = viewRef.get();
            float[] point = {
                    physicalX - bounds.left,
                    physicalY - bounds.top};
            buildViewToDisplay(view.getWidth(), view.getHeight()).mapPoints(point);
            return point;
        }

        public Rect toPhysicalBounds(Rect displayBounds) {
            View view = viewRef.get();
            Rect physical = new Rect(displayBounds);
            if (view != null) {
                Matrix displayToView = new Matrix();
                buildViewToDisplay(view.getWidth(), view.getHeight())
                        .invert(displayToView);
                RectF mapped = new RectF();
                displayToView.mapRect(mapped, new RectF(displayBounds));
                Rect bounds = currentViewBounds();
                if (bounds != null) {
                    mapped.offset(bounds.left, bounds.top);
                }
                physical.set(Math.round(mapped.left), Math.round(mapped.top),
                        Math.round(mapped.right), Math.round(mapped.bottom));
            }
            return physical;
        }

        private Matrix buildViewToDisplay(int viewWidth, int viewHeight) {
            Matrix matrix = new Matrix();
            float scaleX = displayWidth / (float) Math.max(1, viewWidth);
            float scaleY = displayHeight / (float) Math.max(1, viewHeight);
            if (displayRotation == Surface.ROTATION_90) {
                matrix.setValues(new float[] {
                        0f, scaleY, 0f,
                        -scaleX, 0f, Math.max(0f, displayWidth - 0.001f),
                        0f, 0f, 1f
                });
            } else if (displayRotation == Surface.ROTATION_270) {
                matrix.setValues(new float[] {
                        0f, -scaleY, Math.max(0f, displayHeight - 0.001f),
                        scaleX, 0f, 0f,
                        0f, 0f, 1f
                });
            } else {
                matrix.setScale(scaleX, scaleY);
            }
            return matrix;
        }
    }

    private static final CopyOnWriteArrayList<Region> REGIONS = new CopyOnWriteArrayList<>();

    private VirtualDisplayRegionRegistry() {}

    public static void put(Region region) {
        if (region == null) {
            return;
        }
        remove(region.displayId);
        REGIONS.add(region);
    }

    public static void remove(int displayId) {
        if (displayId < 0) {
            return;
        }
        REGIONS.removeIf(region -> region.displayId == displayId);
    }

    public static Region regionAt(float physicalX, float physicalY) {
        for (Region region : REGIONS) {
            if (region.contains(physicalX, physicalY)) {
                return region;
            }
        }
        return null;
    }
}
