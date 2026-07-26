package com.hyper.sidebar.lsp;

import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/** Local, deterministic tokenizer used instead of the retired TextBoom HTTP endpoint. */
final class TextBoomTokenizer {
    static final class Token {
        final int start;
        final int end;
        final boolean punctuation;

        Token(int start, int end, boolean punctuation) {
            this.start = start;
            this.end = end;
            this.punctuation = punctuation;
        }

        String textFrom(String source) {
            return source.substring(start, end);
        }
    }

    private TextBoomTokenizer() {}

    /** Tokenizes with a locale inferred from the script of {@code source}. */
    static List<Token> tokenize(String source) {
        return tokenize(source, chooseLocale(source));
    }

    /**
     * Picks the segmentation locale from the text itself instead of the device locale, so CJK
     * input always gets ICU's dictionary-based word segmentation even on non-Chinese devices.
     */
    static Locale chooseLocale(String source) {
        if (source != null) {
            for (int offset = 0; offset < source.length();) {
                int codePoint = source.codePointAt(offset);
                Character.UnicodeScript script = Character.UnicodeScript.of(codePoint);
                if (script == Character.UnicodeScript.HAN) {
                    return Locale.SIMPLIFIED_CHINESE;
                }
                if (script == Character.UnicodeScript.HIRAGANA
                        || script == Character.UnicodeScript.KATAKANA) {
                    return Locale.JAPANESE;
                }
                if (script == Character.UnicodeScript.HANGUL) {
                    return Locale.KOREAN;
                }
                offset += Character.charCount(codePoint);
            }
        }
        return Locale.getDefault();
    }

    static List<Token> tokenize(String source, Locale locale) {
        if (source == null || source.isEmpty()) return Collections.emptyList();

        BreakIterator iterator = BreakIterator.getWordInstance(
                locale == null ? Locale.getDefault() : locale);
        iterator.setText(source);
        ArrayList<Token> result = new ArrayList<>();
        int start = iterator.first();
        for (int end = iterator.next(); end != BreakIterator.DONE;
                start = end, end = iterator.next()) {
            addNonWhitespaceRuns(source, start, end, result);
        }
        return result;
    }

    private static void addNonWhitespaceRuns(String source, int start, int end,
            List<Token> output) {
        int runStart = -1;
        boolean wordLike = false;
        for (int offset = start; offset < end;) {
            int codePoint = source.codePointAt(offset);
            int next = offset + Character.charCount(codePoint);
            if (Character.isWhitespace(codePoint) || Character.isSpaceChar(codePoint)) {
                if (runStart >= 0) {
                    output.add(new Token(runStart, offset, !wordLike));
                    runStart = -1;
                    wordLike = false;
                }
            } else {
                if (runStart < 0) runStart = offset;
                int type = Character.getType(codePoint);
                wordLike |= Character.isLetterOrDigit(codePoint)
                        || type == Character.NON_SPACING_MARK
                        || type == Character.COMBINING_SPACING_MARK;
            }
            offset = next;
        }
        if (runStart >= 0) output.add(new Token(runStart, end, !wordLike));
    }
}
