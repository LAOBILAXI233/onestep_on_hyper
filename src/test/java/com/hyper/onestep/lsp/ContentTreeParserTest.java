package com.hyper.onestep.lsp;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import org.junit.Test;
// ContentTreeParser 解析单元测试
public class ContentTreeParserTest {
    @Test
    public void flattensTextAndSelectsSmallestTouchedNode() {
        String xml = "<root bounds=\"[0,0][1440,3200]\">"
                + "<node class=\"android.widget.TextView\" text=\"First\" "
                + "bounds=\"[20,100][800,300]\"/>"
                + "<node class=\"android.widget.TextView\" text=\"Touched words\" "
                + "content-desc=\"Description\" bounds=\"[100,400][700,620]\"/>"
                + "</root>";
        ContentTreeParser.Result result = ContentTreeParser.parse(xml, 250, 500);
        assertEquals("First\nTouched words\nDescription", result.text);
        assertEquals("First\n".length(), result.touchIndex);
        assertNull(result.imageBounds);
    }
    @Test
    public void findsTouchedImageBoundsAndIgnoresOtherImages() {
        String xml = "<hierarchy>"
                + "<node className=\"android.widget.ImageView\" bounds=\"[10,20][410,520]\"/>"
                + "<node className=\"android.widget.ImageView\" bounds=\"[500,20][900,520]\"/>"
                + "</hierarchy>";
        ContentTreeParser.Result result = ContentTreeParser.parse(xml, 200, 200);
        assertNotNull(result.imageBounds);
        assertEquals(10, result.imageBounds.left);
        assertEquals(20, result.imageBounds.top);
        assertEquals(410, result.imageBounds.right);
        assertEquals(520, result.imageBounds.bottom);
    }
    @Test
    public void supportsCoordinateAttributesAndElementBodyText() {
        String xml = "<screen><label x=\"5\" y=\"7\" width=\"200\" height=\"80\">"
                + "  Body   text  </label></screen>";
        ContentTreeParser.Result result = ContentTreeParser.parse(xml, 30, 30);
        assertEquals("Body text", result.text);
        assertEquals(0, result.touchIndex);
    }
    @Test
    public void malformedTailKeepsCompletedNodes() {
        ContentTreeParser.Result result = ContentTreeParser.parse(
                "<root><node text=\"usable\" bounds=\"[0,0][100,100]\"/><broken>", 5, 5);
        assertTrue(result.hasText());
        assertEquals("usable", result.text);
        assertEquals(0, result.touchIndex);
    }
    @Test
    public void rejectsTinyImageIcons() {
        ContentTreeParser.Result result = ContentTreeParser.parse(
                "<node class=\"ImageButton\" bounds=\"[0,0][32,32]\"/>", 10, 10);
        assertNull(result.imageBounds);
    }
}
