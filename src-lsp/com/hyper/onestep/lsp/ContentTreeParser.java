package com.hyper.onestep.lsp;

import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

import java.io.StringReader;
import java.util.ArrayDeque;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.xml.parsers.SAXParserFactory;

/** Converts HyperOS AICollector view XML into TextBoom text and touch metadata. */
final class ContentTreeParser {
    private static final int MAX_XML_CHARS = 4_000_000;
    private static final int MAX_TEXT_CHARS = 40_000;
    private static final int MAX_NODE_TEXT_CHARS = 4_000;
    private static final int MIN_IMAGE_EDGE_PX = 48;

    private static final Pattern INTEGER_PATTERN = Pattern.compile("-?\\d+");
    private static final String[] TEXT_ATTRIBUTES = {
            "text", "content-desc", "contentDescription", "content_description",
            "label", "title", "value", "hint", "hintText"
    };
    private static final String[] BOUNDS_ATTRIBUTES = {
            "bounds", "screenBounds", "screen_bounds", "rect", "position"
    };

    private ContentTreeParser() {}

    static Result parse(String xml, int touchX, int touchY) {
        if (xml == null || xml.trim().isEmpty()) return Result.empty();

        String source = xml.length() > MAX_XML_CHARS
                ? xml.substring(0, MAX_XML_CHARS) : xml;
        Handler handler = new Handler(touchX, touchY);
        try {
            SAXParserFactory factory = SAXParserFactory.newInstance();
            factory.setNamespaceAware(false);
            factory.setValidating(false);
            setFeatureQuietly(factory, "http://apache.org/xml/features/disallow-doctype-decl", true);
            setFeatureQuietly(factory, "http://xml.org/sax/features/external-general-entities", false);
            setFeatureQuietly(factory, "http://xml.org/sax/features/external-parameter-entities", false);

            XMLReader reader = factory.newSAXParser().getXMLReader();
            reader.setEntityResolver((publicId, systemId) ->
                    new InputSource(new StringReader("")));
            reader.setContentHandler(handler);
            reader.parse(new InputSource(new StringReader(source)));
        } catch (Throwable ignored) {
            // AICollector occasionally truncates a hierarchy while an app is relaying out.
            // SAX still leaves all complete nodes parsed before the malformed tail available.
        }
        return handler.result();
    }

    private static void setFeatureQuietly(SAXParserFactory factory, String feature,
            boolean enabled) {
        try {
            factory.setFeature(feature, enabled);
        } catch (Throwable ignored) {
        }
    }

    static final class Result {
        final String text;
        final int touchIndex;
        final Bounds imageBounds;

        Result(String text, int touchIndex, Bounds imageBounds) {
            this.text = text == null ? "" : text;
            this.touchIndex = touchIndex;
            this.imageBounds = imageBounds;
        }

        static Result empty() {
            return new Result("", -1, null);
        }

        boolean hasText() {
            return !text.trim().isEmpty();
        }
    }

    /** Android-free rectangle value so hierarchy parsing remains covered by local unit tests. */
    static final class Bounds {
        final int left;
        final int top;
        final int right;
        final int bottom;

        Bounds(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        int width() {
            return Math.max(0, right - left);
        }

        int height() {
            return Math.max(0, bottom - top);
        }

        long area() {
            return (long) width() * height();
        }

        boolean contains(int x, int y) {
            return left <= x && x < right && top <= y && y < bottom;
        }
    }

    private static final class Node {
        final Bounds bounds;
        final boolean image;
        final boolean hadAttributeText;
        final StringBuilder body = new StringBuilder();

        Node(Bounds bounds, boolean image, boolean hadAttributeText) {
            this.bounds = bounds;
            this.image = image;
            this.hadAttributeText = hadAttributeText;
        }
    }

    private static final class Handler extends DefaultHandler {
        private final int mTouchX;
        private final int mTouchY;
        private final StringBuilder mText = new StringBuilder();
        private final ArrayDeque<Node> mNodes = new ArrayDeque<>();

        private int mTouchIndex = -1;
        private long mTouchedTextArea = Long.MAX_VALUE;
        private Bounds mImageBounds;
        private long mImageArea = Long.MAX_VALUE;

        Handler(int touchX, int touchY) {
            mTouchX = touchX;
            mTouchY = touchY;
        }

        @Override
        public void startElement(String uri, String localName, String qName,
                Attributes attributes) {
            Bounds bounds = parseBounds(attributes);
            boolean image = isImageElement(localName, qName, attributes);
            Set<String> candidates = new LinkedHashSet<>();
            for (String name : TEXT_ATTRIBUTES) {
                addCandidate(candidates, attribute(attributes, name));
            }

            Node node = new Node(bounds, image, !candidates.isEmpty());
            mNodes.push(node);
            for (String candidate : candidates) {
                appendText(candidate, bounds);
            }
            considerImage(bounds, image);
        }

        @Override
        public void characters(char[] chars, int start, int length) {
            if (mNodes.isEmpty() || length <= 0) return;
            Node node = mNodes.peek();
            if (node.hadAttributeText || node.body.length() >= MAX_NODE_TEXT_CHARS) return;
            int allowed = Math.min(length, MAX_NODE_TEXT_CHARS - node.body.length());
            node.body.append(chars, start, allowed);
        }

        @Override
        public void endElement(String uri, String localName, String qName) {
            if (mNodes.isEmpty()) return;
            Node node = mNodes.pop();
            if (!node.hadAttributeText) appendText(node.body.toString(), node.bounds);
        }

        Result result() {
            return new Result(mText.toString(), mTouchIndex, mImageBounds);
        }

        private void appendText(String raw, Bounds bounds) {
            if (mText.length() >= MAX_TEXT_CHARS) return;
            String normalized = normalizeText(raw);
            if (normalized.isEmpty()) return;
            if (normalized.length() > MAX_NODE_TEXT_CHARS) {
                normalized = normalized.substring(0, MAX_NODE_TEXT_CHARS);
            }

            if (mText.length() > 0) mText.append('\n');
            int start = mText.length();
            int remaining = MAX_TEXT_CHARS - start;
            if (normalized.length() > remaining) normalized = normalized.substring(0, remaining);
            mText.append(normalized);

            if (bounds != null && bounds.contains(mTouchX, mTouchY)
                    && bounds.area() < mTouchedTextArea) {
                mTouchedTextArea = bounds.area();
                mTouchIndex = start;
            }
        }

        private void considerImage(Bounds bounds, boolean image) {
            if (!image || bounds == null || !bounds.contains(mTouchX, mTouchY)
                    || bounds.width() < MIN_IMAGE_EDGE_PX
                    || bounds.height() < MIN_IMAGE_EDGE_PX) {
                return;
            }
            long area = bounds.area();
            if (area > 0L && area < mImageArea) {
                mImageArea = area;
                mImageBounds = bounds;
            }
        }
    }

    private static void addCandidate(Set<String> candidates, String value) {
        String normalized = normalizeText(value);
        if (!normalized.isEmpty()) candidates.add(normalized);
    }

    private static String normalizeText(String raw) {
        if (raw == null) return "";
        StringBuilder result = new StringBuilder(Math.min(raw.length(), MAX_NODE_TEXT_CHARS));
        boolean pendingSpace = false;
        for (int i = 0; i < raw.length() && result.length() < MAX_NODE_TEXT_CHARS; i++) {
            char c = raw.charAt(i);
            if (Character.isWhitespace(c) || Character.isISOControl(c)) {
                pendingSpace = result.length() > 0;
            } else {
                if (pendingSpace) result.append(' ');
                result.append(c);
                pendingSpace = false;
            }
        }
        return result.toString().trim();
    }

    private static Bounds parseBounds(Attributes attributes) {
        for (String name : BOUNDS_ATTRIBUTES) {
            Bounds parsed = parseFourIntegers(attribute(attributes, name));
            if (parsed != null) return parsed;
        }

        Integer left = integerAttribute(attributes, "left");
        Integer top = integerAttribute(attributes, "top");
        Integer right = integerAttribute(attributes, "right");
        Integer bottom = integerAttribute(attributes, "bottom");
        if (left != null && top != null && right != null && bottom != null) {
            return validBounds(left, top, right, bottom);
        }

        Integer x = integerAttribute(attributes, "x");
        Integer y = integerAttribute(attributes, "y");
        Integer width = integerAttribute(attributes, "width");
        Integer height = integerAttribute(attributes, "height");
        if (x != null && y != null && width != null && height != null) {
            return validBounds(x, y, x + Math.max(0, width), y + Math.max(0, height));
        }
        return null;
    }

    private static Bounds parseFourIntegers(String value) {
        if (value == null) return null;
        Matcher matcher = INTEGER_PATTERN.matcher(value);
        int[] numbers = new int[4];
        int count = 0;
        while (count < numbers.length && matcher.find()) {
            try {
                numbers[count++] = Integer.parseInt(matcher.group());
            } catch (NumberFormatException ignored) {
                return null;
            }
        }
        return count == 4 ? validBounds(numbers[0], numbers[1], numbers[2], numbers[3])
                : null;
    }

    private static Bounds validBounds(int left, int top, int right, int bottom) {
        return right > left && bottom > top ? new Bounds(left, top, right, bottom) : null;
    }

    private static Integer integerAttribute(Attributes attributes, String name) {
        String value = attribute(attributes, name);
        if (value == null) return null;
        try {
            return Integer.valueOf(value.trim());
        } catch (NumberFormatException ignored) {
            return null;
        }
    }

    private static boolean isImageElement(String localName, String qName,
            Attributes attributes) {
        StringBuilder identity = new StringBuilder();
        identity.append(localName).append(' ').append(qName);
        String[] names = { "class", "className", "role", "type", "mimeType", "contentType" };
        for (String name : names) {
            String value = attribute(attributes, name);
            if (value != null) identity.append(' ').append(value);
        }
        String normalized = identity.toString().toLowerCase(Locale.ROOT);
        return normalized.contains("image") || normalized.contains("photo")
                || normalized.contains("picture") || normalized.contains("bitmap")
                || normalized.contains("image/");
    }

    private static String attribute(Attributes attributes, String requestedName) {
        if (attributes == null) return null;
        String direct = attributes.getValue(requestedName);
        if (direct != null) return direct;
        for (int i = 0; i < attributes.getLength(); i++) {
            String local = attributes.getLocalName(i);
            String qualified = attributes.getQName(i);
            if (requestedName.equalsIgnoreCase(local)
                    || requestedName.equalsIgnoreCase(qualified)) {
                return attributes.getValue(i);
            }
        }
        return null;
    }
}
