package com.hyper.onestep.lsp;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import org.junit.Test;
// RawTouchAreaClassifier 单元测试
public class RawTouchAreaClassifierTest {
    private static final int ROWS = 12;
    private static final int COLUMNS = 10;
    private static final int SEED_ROW = 6;
    private static final int SEED_COLUMN = 5;
    @Test
    public void smallFingerBlobDoesNotTrigger() {
        RawTouchAreaClassifier classifier = calibratedClassifier();
        int[] frame = matrixWithBlob(5, 4, 3, 3, 160);
        for (int i = 0; i < 8; i++) {
            assertFalse(classifier.consumeRawFrame(frame, SEED_ROW, SEED_COLUMN)
                    .largeContact);
        }
        assertFalse(classifier.isLargeContact());
    }
    @Test
    public void broadContactTriggersAfterThreeFrames() {
        RawTouchAreaClassifier classifier = calibratedClassifier();
        int[] frame = matrixWithBlob(4, 3, 4, 4, 160);
        assertFalse(classifier.consumeRawFrame(frame, SEED_ROW, SEED_COLUMN)
                .largeContact);
        assertFalse(classifier.consumeRawFrame(frame, SEED_ROW, SEED_COLUMN)
                .largeContact);
        RawTouchAreaClassifier.FrameResult result =
                classifier.consumeRawFrame(frame, SEED_ROW, SEED_COLUMN);
        assertTrue(result.largeContact);
        assertTrue(result.candidateCellCount >= 16);
        assertTrue(result.weightedScore >= 16.0);
    }
    @Test
    public void lowNoiseAndDisconnectedEdgeSpikesDoNotTrigger() {
        RawTouchAreaClassifier classifier = calibratedClassifier();
        int[] frame = new int[ROWS * COLUMNS];
        for (int index = 0; index < frame.length; index++) {
            frame[index] = (index * 37 % 11) - 5;
        }
        for (int row = 0; row < ROWS; row++) {
            frame[row * COLUMNS] = 500;
        }
        for (int i = 0; i < 8; i++) {
            RawTouchAreaClassifier.FrameResult result =
                    classifier.consumeRawFrame(frame, SEED_ROW, SEED_COLUMN);
            assertFalse(result.largeContact);
            assertTrue(result.candidateCellCount == 0);
        }
    }
    @Test
    public void releaseUsesThreeFrameHysteresis() {
        RawTouchAreaClassifier classifier = calibratedClassifier();
        int[] broadContact = matrixWithBlob(4, 3, 4, 4, 160);
        int[] released = new int[ROWS * COLUMNS];
        for (int i = 0; i < 3; i++) {
            classifier.consumeRawFrame(broadContact, SEED_ROW, SEED_COLUMN);
        }
        assertTrue(classifier.isLargeContact());
        assertTrue(classifier.consumeRawFrame(released, SEED_ROW, SEED_COLUMN)
                .largeContact);
        assertTrue(classifier.consumeRawFrame(released, SEED_ROW, SEED_COLUMN)
                .largeContact);
        assertFalse(classifier.consumeRawFrame(released, SEED_ROW, SEED_COLUMN)
                .largeContact);
    }
    @Test
    public void signedDifferenceFramesWorkWithoutRawCalibration() {
        RawTouchAreaClassifier classifier = new RawTouchAreaClassifier(ROWS, COLUMNS);
        int[] difference = matrixWithBlob(4, 3, 4, 4, -160);
        classifier.consumeDifferenceFrame(difference, SEED_ROW, SEED_COLUMN);
        classifier.consumeDifferenceFrame(difference, SEED_ROW, SEED_COLUMN);
        RawTouchAreaClassifier.FrameResult result =
                classifier.consumeDifferenceFrame(difference, SEED_ROW, SEED_COLUMN);
        assertTrue(result.calibrated);
        assertTrue(result.largeContact);
    }
    private static RawTouchAreaClassifier calibratedClassifier() {
        RawTouchAreaClassifier classifier = new RawTouchAreaClassifier(ROWS, COLUMNS);
        classifier.calibrate(new int[ROWS * COLUMNS]);
        return classifier;
    }
    private static int[] matrixWithBlob(int firstRow, int firstColumn,
            int height, int width, int value) {
        int[] frame = new int[ROWS * COLUMNS];
        for (int row = firstRow; row < firstRow + height; row++) {
            for (int column = firstColumn; column < firstColumn + width; column++) {
                frame[row * COLUMNS + column] = value;
            }
        }
        return frame;
    }
}
