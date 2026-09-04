package com.leaf.hyperdragshare.codex;

import java.util.UUID;

final class ShareUriToken {
    static final String PNG_SUFFIX = ".png";
    static final String JPEG_SUFFIX = ".jpg";

    private ShareUriToken() {}

    static String fileName(String token) {
        return fileName(token, PNG_SUFFIX);
    }

    static String fileName(String token, String suffix) {
        if (parse(token) == null) {
            throw new IllegalArgumentException("Invalid share token");
        }
        if (!PNG_SUFFIX.equals(suffix) && !JPEG_SUFFIX.equals(suffix)) {
            throw new IllegalArgumentException("Invalid image suffix");
        }
        return token + suffix;
    }

    static String parse(String pathSegment) {
        if (pathSegment == null) {
            return null;
        }
        String token = pathSegment;
        if (pathSegment.endsWith(PNG_SUFFIX)) {
            token = pathSegment.substring(0, pathSegment.length() - PNG_SUFFIX.length());
        } else if (pathSegment.endsWith(JPEG_SUFFIX)) {
            token = pathSegment.substring(0, pathSegment.length() - JPEG_SUFFIX.length());
        }
        try {
            UUID.fromString(token);
            return token;
        } catch (IllegalArgumentException ignored) {
            return null;
        }
    }

    static String suffix(String pathSegment) {
        if (parse(pathSegment) == null) {
            return null;
        }
        if (pathSegment.endsWith(PNG_SUFFIX)) {
            return PNG_SUFFIX;
        }
        
        return JPEG_SUFFIX;
    }
}
