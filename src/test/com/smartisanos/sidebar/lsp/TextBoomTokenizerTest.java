package com.hyper.sidebar.lsp;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import java.util.List;
import java.util.Locale;

public class TextBoomTokenizerTest {
    @Test
    public void tokensPreserveSourceOffsetsAndSkipWhitespace() {
        String source = "Hello,  world!";
        List<TextBoomTokenizer.Token> tokens = TextBoomTokenizer.tokenize(source, Locale.ENGLISH);

        assertFalse(tokens.isEmpty());
        for (TextBoomTokenizer.Token token : tokens) {
            assertFalse(token.textFrom(source).trim().isEmpty());
            assertEquals(token.textFrom(source), source.substring(token.start, token.end));
        }
        assertEquals("Hello", tokens.get(0).textFrom(source));
        assertTrue(tokens.stream().anyMatch(token -> token.punctuation));
    }

    @Test
    public void tokenBoundariesDoNotSplitSurrogatePairs() {
        String source = "A \uD83D\uDE80 B";
        List<TextBoomTokenizer.Token> tokens = TextBoomTokenizer.tokenize(source, Locale.ENGLISH);

        for (TextBoomTokenizer.Token token : tokens) {
            String value = token.textFrom(source);
            assertFalse(value.length() == 1 && Character.isSurrogate(value.charAt(0)));
        }
    }
}
