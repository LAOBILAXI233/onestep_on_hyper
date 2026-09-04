package com.leaf.hyperdragshare.codex;

import java.util.List;

final class AccessibilityCandidateSelector {
    private AccessibilityCandidateSelector() {}

    static Selection select(AccessibilityNodeClassifier.Buckets buckets, float x, float y) {
        if (buckets == null) {
            return null;
        }
        AccessibilityCandidate hit = firstContaining(buckets.webEditable, x, y);
        if (hit != null) return new Selection(hit);
        hit = firstContaining(buckets.nativeEditable, x, y);
        if (hit != null) return new Selection(hit);
        hit = firstContaining(buckets.nativeText, x, y);
        if (hit != null) return new Selection(hit);

        AccessibilityCandidate webText = firstContaining(buckets.webText, x, y);
        AccessibilityCandidate webImage = firstContaining(buckets.webNonText, x, y);
        if (webText != null && webImage != null) {
            return new Selection(webImage.isInside(webText) ? webImage : webText);
        }
        if (webText != null) return new Selection(webText);
        if (webImage != null) return new Selection(webImage);

        hit = firstContaining(buckets.nativeNonText, x, y);
        return hit == null ? null : new Selection(hit);
    }

    private static AccessibilityCandidate firstContaining(
            List<AccessibilityCandidate> candidates,
            float x,
            float y) {
        if (candidates == null) {
            return null;
        }
        for (AccessibilityCandidate candidate : candidates) {
            if (candidate.contains(x, y)) {
                return candidate;
            }
        }
        return null;
    }

    static final class Selection {
        final AccessibilityCandidate candidate;

        Selection(AccessibilityCandidate candidate) {
            this.candidate = candidate;
        }

        boolean isImage() {
            return candidate != null && candidate.kind == AccessibilityCandidate.Kind.IMAGE_REGION;
        }
    }
}
