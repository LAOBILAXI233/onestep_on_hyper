package com.leaf.hyperdragshare.codex;

import android.graphics.PointF;
import android.graphics.Rect;

final class CircleMenuGeometry {
    static final int EDGE_NONE = 0;
    static final int EDGE_LEFT = 1;
    static final int EDGE_RIGHT = 2;
    static final int EDGE_TOP = 3;
    static final int EDGE_BOTTOM = 4;

    private CircleMenuGeometry() {}

    static int nearestEdge(float x, float y, int width, int height, float trigger) {
        if (width <= 0 || height <= 0 || trigger <= 0
                || !Float.isFinite(x) || !Float.isFinite(y)) {
            return EDGE_NONE;
        }
        if (y < height * 0.1f || y > height * 0.9f) {
            return EDGE_NONE;
        }
        float left = Math.max(0f, x);
        float right = Math.max(0f, width - x);
        float minimum = Math.min(left, right);
        if (minimum > trigger) {
            return EDGE_NONE;
        }
        return left <= right ? EDGE_LEFT : EDGE_RIGHT;
    }

    static float edgeProgress(float x, float y, int width, int height, float softDistance) {
        if (width <= 0 || height <= 0 || softDistance <= 0
                || !Float.isFinite(x) || !Float.isFinite(y)) {
            return 0f;
        }
        if (y < height * 0.1f || y > height * 0.9f) {
            return 0f;
        }
        float distance = Math.min(Math.max(0f, x), Math.max(0f, width - x));
        return clamp01(1f - distance / softDistance);
    }

    static int startAngle(int edge, int itemCount) {
        
        
        
        int base;
        int count = Math.max(1, Math.min(5, itemCount));
        switch (edge) {
            case EDGE_LEFT:
                base = count == 1 ? 90 : count <= 3 ? 54 : 18;
                break;
            case EDGE_TOP:
                base = count == 1 ? 180 : count <= 4 ? 144 : 108;
                break;
            case EDGE_RIGHT:
                base = count == 1 ? 270 : count <= 4 ? 234 : 198;
                break;
            case EDGE_BOTTOM:
                base = count == 1 ? 0 : count <= 3 ? 324 : 288;
                break;
            default:
                base = 288;
                break;
        }
        return base;
    }

    static int[] displayOrder(int edge, int itemCount) {
        int count = Math.max(0, Math.min(5, itemCount));
        int[] natural = new int[count];
        for (int index = 0; index < count; index++) {
            natural[index] = index;
        }
        return natural;
    }

    static PointF itemCenter(
            int edge,
            float originX,
            float originY,
            float containerSize,
            float radius,
            int index,
            int itemCount) {
        float[] values = itemCenterValues(
                edge, originX, originY, containerSize, radius, index, itemCount);
        return new PointF(values[0], values[1]);
    }

    static float[] itemCenterValues(
            int edge,
            float originX,
            float originY,
            float containerSize,
            float radius,
            int index,
            int itemCount) {
        
        
        int count = Math.max(1, Math.min(5, itemCount));
        float centeredOffset = (index - (count - 1) / 2f) * 36f;
        float degrees;
        if (edge == EDGE_LEFT) {
            degrees = centeredOffset;
        } else if (edge == EDGE_RIGHT) {
            degrees = 180f - centeredOffset;
        } else {
            degrees = startAngle(edge, count) - 90f + index * 36f;
        }
        float angle = (float) Math.toRadians(degrees);
        float depth = containerSize / 2f;
        float centerX;
        float centerY;
        switch (edge) {
            case EDGE_LEFT:
                centerX = originX;
                centerY = originY + containerSize / 2f;
                break;
            case EDGE_RIGHT:
                centerX = originX + depth;
                centerY = originY + containerSize / 2f;
                break;
            case EDGE_TOP:
                centerX = originX + containerSize / 2f;
                centerY = originY;
                break;
            case EDGE_BOTTOM:
                centerX = originX + containerSize / 2f;
                centerY = originY + depth;
                break;
            default:
                centerX = originX;
                centerY = originY + containerSize / 2f;
                break;
        }
        return new float[]{
                centerX + radius * (float) Math.cos(angle),
                centerY + radius * (float) Math.sin(angle)};
    }

    static Rect containerRect(
            int edge,
            float pointer,
            int width,
            int height,
            int containerSize,
            int topInset,
            int bottomInset) {
        int[] bounds = containerBounds(
                edge, pointer, width, height, containerSize, topInset, bottomInset);
        return new Rect(bounds[0], bounds[1], bounds[2], bounds[3]);
    }

    static int[] containerBounds(
            int edge,
            float pointer,
            int width,
            int height,
            int containerSize,
            int topInset,
            int bottomInset) {
        int left;
        int top;
        int depth = Math.max(1, containerSize / 2);
        int right;
        int bottom;
        switch (edge) {
            case EDGE_LEFT:
                left = 0;
                top = Math.round(pointer - containerSize / 2f);
                right = depth;
                bottom = top + containerSize;
                break;
            case EDGE_RIGHT:
                left = width - depth;
                top = Math.round(pointer - containerSize / 2f);
                right = width;
                bottom = top + containerSize;
                break;
            case EDGE_TOP:
                left = Math.round(pointer - containerSize / 2f);
                top = topInset;
                right = left + containerSize;
                bottom = top + depth;
                break;
            case EDGE_BOTTOM:
                left = Math.round(pointer - containerSize / 2f);
                top = height - bottomInset - depth;
                right = left + containerSize;
                bottom = height - bottomInset;
                break;
            default:
                left = 0;
                top = Math.round(pointer - containerSize / 2f);
                right = depth;
                bottom = top + containerSize;
                break;
        }
        int minTop = Math.max(0, topInset);
        int maxTop = Math.max(minTop, height - bottomInset - containerSize);
        if (edge == EDGE_LEFT || edge == EDGE_RIGHT || edge == EDGE_NONE) {
            top = clamp(top, minTop, maxTop);
            bottom = top + containerSize;
        } else {
            left = clamp(left, 0, Math.max(0, width - containerSize));
            right = left + containerSize;
        }
        return new int[]{left, top, right, bottom};
    }

    static float clamp01(float value) {
        return Math.max(0f, Math.min(1f, value));
    }

    private static int clamp(int value, int minimum, int maximum) {
        return Math.max(minimum, Math.min(maximum, value));
    }
}
