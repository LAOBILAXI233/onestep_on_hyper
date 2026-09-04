package com.leaf.hyperdragshare.codex;

import android.graphics.Rect;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

final class AccessibilityNodeClassifier {
    private static final int MAX_TEXT_LENGTH = 100_000;
    private final int minimumImageDimensionPx;
    private final int screenWidth;
    private final int screenHeight;

    AccessibilityNodeClassifier(float density, int screenWidth, int screenHeight) {
        minimumImageDimensionPx = Math.max(1, Math.round(20f * Math.max(0.1f, density)));
        this.screenWidth = Math.max(1, screenWidth);
        this.screenHeight = Math.max(1, screenHeight);
    }

    Buckets classify(List<AccessibilityNodeSnapshot> snapshots) {
        Buckets buckets = new Buckets();
        if (snapshots == null) {
            return buckets;
        }
        for (AccessibilityNodeSnapshot snapshot : snapshots) {
            if (!isUsable(snapshot)) {
                continue;
            }
            boolean strongImage = isStrongImage(snapshot);
            String text = strongImage ? null : preferredText(snapshot);
            if (text != null) {
                if (snapshot.clickable || snapshot.longClickable) {
                    
                    
                    
                    continue;
                }
                AccessibilityCandidate candidate = new AccessibilityCandidate(
                        AccessibilityCandidate.Kind.TEXT,
                        snapshot,
                        text,
                        false);
                if (snapshot.insideWebView) {
                    (snapshot.editable ? buckets.webEditable : buckets.webText).add(candidate);
                } else {
                    (snapshot.editable ? buckets.nativeEditable : buckets.nativeText).add(candidate);
                }
                continue;
            }
            if (strongImage || isLowConfidenceImage(snapshot)) {
                AccessibilityCandidate candidate = new AccessibilityCandidate(
                        AccessibilityCandidate.Kind.IMAGE_REGION,
                        snapshot,
                        null,
                        strongImage);
                if (snapshot.insideWebView) {
                    buckets.webNonText.add(candidate);
                } else {
                    buckets.nativeNonText.add(candidate);
                }
            }
        }
        cleanText(buckets.nativeEditable);
        cleanText(buckets.nativeText);
        cleanText(buckets.webEditable);
        cleanText(buckets.webText);
        cleanImages(buckets.nativeNonText);
        cleanImages(buckets.webNonText);
        rejectTextCoveredHeuristicImages(buckets.nativeNonText, buckets.nativeText, buckets.nativeEditable);
        rejectTextCoveredHeuristicImages(buckets.webNonText, buckets.webText, buckets.webEditable);
        return buckets;
    }

    private boolean isUsable(AccessibilityNodeSnapshot node) {
        return node != null
                && node.visible
                && !node.password
                && node.bounds.width() > 0
                && node.bounds.height() > 0
                && node.bounds.right > 0
                && node.bounds.bottom > 0
                && node.bounds.left < screenWidth
                && node.bounds.top < screenHeight;
    }

    private static String preferredText(AccessibilityNodeSnapshot node) {
        String text = usableText(node.text);
        return text != null ? text : usableText(node.contentDescription);
    }

    private static String usableText(String value) {
        if (value == null || value.trim().isEmpty()) {
            return null;
        }
        return value.length() > MAX_TEXT_LENGTH ? value.substring(0, MAX_TEXT_LENGTH) : value;
    }

    private boolean isStrongImage(AccessibilityNodeSnapshot node) {
        String className = lower(node.className);
        if ("android.widget.imageview".equals(className)
                || "android.widget.image".equals(className)
                || (className.endsWith("imageview") && preferredText(node) == null && !isContainer(node))) {
            return true;
        }
        String description = lower(usableText(node.contentDescription));
        return usableText(node.text) == null
                && ("图片".equals(description)
                || "图像".equals(description)
                || "image".equals(description)
                || "photo".equals(description));
    }

    private boolean isLowConfidenceImage(AccessibilityNodeSnapshot node) {
        if (preferredText(node) != null || node.editable || node.password || isContainer(node)
                || isExplicitControl(node) || !node.leaf || coversMostOfScreen(node.bounds)) {
            return false;
        }
        return node.bounds.width() > minimumImageDimensionPx
                || node.bounds.height() > minimumImageDimensionPx;
    }

    private static boolean isContainer(AccessibilityNodeSnapshot node) {
        String className = lower(node.className);
        return "android.widget.framelayout".equals(className)
                || "android.widget.relativelayout".equals(className)
                || "android.widget.linearlayout".equals(className)
                || "android.view.viewgroup".equals(className)
                || className.endsWith("viewgroup");
    }

    private static boolean isExplicitControl(AccessibilityNodeSnapshot node) {
        String className = lower(node.className);
        return className.contains("button")
                || className.contains("switch")
                || className.contains("checkbox")
                || className.contains("radiobutton")
                || className.contains("seekbar")
                || className.contains("progressbar");
    }

    private boolean coversMostOfScreen(Rect bounds) {
        return bounds.width() >= Math.round(screenWidth * 0.9f)
                && bounds.height() >= Math.round(screenHeight * 0.9f);
    }

    private static void cleanText(List<AccessibilityCandidate> candidates) {
        List<AccessibilityCandidate> result = new ArrayList<>();
        for (AccessibilityCandidate candidate : candidates) {
            boolean discarded = false;
            for (int index = 0; index < result.size(); index++) {
                AccessibilityCandidate existing = result.get(index);
                if (existing.bounds.equals(candidate.bounds)) {
                    discarded = true;
                    break;
                }
                if (sameText(existing, candidate)) {
                    if (existing.bounds.contains(candidate.bounds)) {
                        result.set(index, candidate);
                        discarded = true;
                        break;
                    }
                    if (candidate.bounds.contains(existing.bounds)) {
                        discarded = true;
                        break;
                    }
                }
            }
            if (!discarded) {
                result.add(candidate);
            }
        }
        candidates.clear();
        candidates.addAll(result);
        sortSpecificFirst(candidates);
    }

    private static boolean sameText(AccessibilityCandidate first, AccessibilityCandidate second) {
        return first.text != null && second.text != null
                && first.text.equalsIgnoreCase(second.text);
    }

    private static void cleanImages(List<AccessibilityCandidate> candidates) {
        Set<Rect> seen = new HashSet<>();
        List<AccessibilityCandidate> result = new ArrayList<>();
        for (AccessibilityCandidate candidate : candidates) {
            if (seen.add(new Rect(candidate.bounds))) {
                result.add(candidate);
            }
        }
        candidates.clear();
        candidates.addAll(result);
        sortSpecificFirst(candidates);
    }

    private static void sortSpecificFirst(List<AccessibilityCandidate> candidates) {
        Collections.sort(candidates, new Comparator<AccessibilityCandidate>() {
            @Override
            public int compare(AccessibilityCandidate first, AccessibilityCandidate second) {
                int leaf = Boolean.compare(second.leaf, first.leaf);
                if (leaf != 0) return leaf;
                int area = Long.compare(first.area(), second.area());
                if (area != 0) return area;
                int depth = Integer.compare(second.depth, first.depth);
                if (depth != 0) return depth;
                return Integer.compare(first.traversalOrder, second.traversalOrder);
            }
        });
    }

    private static void rejectTextCoveredHeuristicImages(
            List<AccessibilityCandidate> images,
            List<AccessibilityCandidate> text,
            List<AccessibilityCandidate> editable) {
        List<AccessibilityCandidate> allText = new ArrayList<>(text);
        allText.addAll(editable);
        images.removeIf(image -> !image.strongImage
                && coveredByText(image.bounds, allText) > image.area() / 4L);
    }

    private static long coveredByText(Rect target, List<AccessibilityCandidate> text) {
        List<Rect> intersections = new ArrayList<>();
        for (AccessibilityCandidate candidate : text) {
            Rect intersection = new Rect(target);
            if (intersection.intersect(candidate.bounds)) {
                intersections.add(intersection);
            }
        }
        if (intersections.isEmpty()) {
            return 0L;
        }
        List<Integer> xValues = new ArrayList<>();
        for (Rect rect : intersections) {
            xValues.add(rect.left);
            xValues.add(rect.right);
        }
        Collections.sort(xValues);
        long area = 0L;
        for (int index = 0; index < xValues.size() - 1; index++) {
            int left = xValues.get(index);
            int right = xValues.get(index + 1);
            if (right <= left) continue;
            List<int[]> ranges = new ArrayList<>();
            for (Rect rect : intersections) {
                if (rect.left < right && rect.right > left) {
                    ranges.add(new int[]{rect.top, rect.bottom});
                }
            }
            ranges.sort((a, b) -> Integer.compare(a[0], b[0]));
            int rangeStart = Integer.MIN_VALUE;
            int rangeEnd = Integer.MIN_VALUE;
            for (int[] range : ranges) {
                if (rangeStart == Integer.MIN_VALUE) {
                    rangeStart = range[0];
                    rangeEnd = range[1];
                } else if (range[0] > rangeEnd) {
                    area += (long) (right - left) * Math.max(0, rangeEnd - rangeStart);
                    rangeStart = range[0];
                    rangeEnd = range[1];
                } else {
                    rangeEnd = Math.max(rangeEnd, range[1]);
                }
            }
            if (rangeStart != Integer.MIN_VALUE) {
                area += (long) (right - left) * Math.max(0, rangeEnd - rangeStart);
            }
        }
        return area;
    }

    private static String lower(String value) {
        return value == null ? "" : value.toLowerCase(Locale.ROOT);
    }

    static final class Buckets {
        final List<AccessibilityCandidate> nativeText = new ArrayList<>();
        final List<AccessibilityCandidate> nativeEditable = new ArrayList<>();
        final List<AccessibilityCandidate> nativeNonText = new ArrayList<>();
        final List<AccessibilityCandidate> webText = new ArrayList<>();
        final List<AccessibilityCandidate> webEditable = new ArrayList<>();
        final List<AccessibilityCandidate> webNonText = new ArrayList<>();

        int candidateCount() {
            return nativeText.size() + nativeEditable.size() + nativeNonText.size()
                    + webText.size() + webEditable.size() + webNonText.size();
        }
    }
}
