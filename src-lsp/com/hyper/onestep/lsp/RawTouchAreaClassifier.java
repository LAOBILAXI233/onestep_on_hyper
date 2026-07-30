package com.hyper.onestep.lsp;

import java.util.Arrays;

/**
 * Classifies a large contact from a touch controller's raw or difference matrix.
 *
 * <p>This class intentionally has no {@code MotionEvent} dependency. A pointer event only carries
 * the reported contact centroid on devices whose input driver omits {@code ABS_MT_TOUCH_MAJOR}; it
 * cannot be used to reconstruct the capacitive footprint. Callers must feed the matrix produced by
 * the touch controller/HAL.</p>
 */
public final class RawTouchAreaClassifier {
    public static final int NO_SEED = -1;

    private static final Config DEFAULT_CONFIG = new Config(
            6,      // Raw frames used to establish a baseline.
            18.0,   // Minimum controller delta considered signal.
            6.0,    // Global MAD multiplier.
            6.0,    // Per-cell learned-noise multiplier.
            0.025,  // Idle baseline adaptation.
            0.05,   // Idle noise adaptation.
            4,      // Maximum seed-to-component distance, in matrix cells.
            11,     // Xiaomi's algorithm uses a strictly-greater-than-ten cell criterion.
            7,
            16.0,
            8.0,
            3,
            3);

    private final int mRows;
    private final int mColumns;
    private final int mCellCount;
    private final Config mConfig;
    private final double[] mBaseline;
    private final double[] mLearnedNoise;
    private final double[] mSignal;
    private final double[] mThresholds;
    private final double[] mScratch;
    private final boolean[] mActiveCells;
    private final boolean[] mVisited;
    private final int[] mQueue;

    private int mCalibrationSamples;
    private boolean mLargeContact;
    private int mEnterStreak;
    private int mReleaseStreak;
    private FrameResult mLastResult = FrameResult.empty(false);

    public RawTouchAreaClassifier(int rows, int columns) {
        this(rows, columns, DEFAULT_CONFIG);
    }

    RawTouchAreaClassifier(int rows, int columns, Config config) {
        if (rows < 2 || columns < 2) {
            throw new IllegalArgumentException("Matrix must be at least 2x2");
        }
        if (config == null) {
            throw new NullPointerException("config");
        }
        mRows = rows;
        mColumns = columns;
        mCellCount = Math.multiplyExact(rows, columns);
        mConfig = config;
        mBaseline = new double[mCellCount];
        mLearnedNoise = new double[mCellCount];
        mSignal = new double[mCellCount];
        mThresholds = new double[mCellCount];
        mScratch = new double[mCellCount];
        mActiveCells = new boolean[mCellCount];
        mVisited = new boolean[mCellCount];
        mQueue = new int[mCellCount];
        Arrays.fill(mLearnedNoise, config.minimumSignal / config.localNoiseMultiplier);
    }

    /** Establishes the raw-frame baseline immediately, for a known no-contact frame. */
    public void calibrate(int[] noContactFrame) {
        validateFrame(noContactFrame);
        for (int i = 0; i < mCellCount; i++) {
            mBaseline[i] = noContactFrame[i];
            mLearnedNoise[i] = mConfig.minimumSignal / mConfig.localNoiseMultiplier;
        }
        mCalibrationSamples = mConfig.calibrationFrames;
        resetState();
        mLastResult = FrameResult.empty(true);
    }

    /**
     * Consumes an absolute raw-capacitance frame. Initial no-contact frames are learned as the
     * baseline; callers that already own a baseline should call {@link #calibrate(int[])} first.
     */
    public FrameResult consumeRawFrame(int[] frame, int seedRow, int seedColumn) {
        validateFrame(frame);
        validateSeed(seedRow, seedColumn);
        if (mCalibrationSamples < mConfig.calibrationFrames) {
            learnCalibrationFrame(frame);
            mLastResult = FrameResult.empty(isCalibrated());
            return mLastResult;
        }

        for (int i = 0; i < mCellCount; i++) {
            mSignal[i] = Math.abs(frame[i] - mBaseline[i]);
        }
        FrameResult result = classifySignal(seedRow, seedColumn, true, frame);
        mLastResult = result;
        return result;
    }

    /** Consumes a signed controller difference frame; no raw baseline is required. */
    public FrameResult consumeDifferenceFrame(int[] differenceFrame,
            int seedRow, int seedColumn) {
        validateFrame(differenceFrame);
        validateSeed(seedRow, seedColumn);
        for (int i = 0; i < mCellCount; i++) {
            mSignal[i] = Math.abs((double) differenceFrame[i]);
        }
        FrameResult result = classifySignal(seedRow, seedColumn, false, null);
        mLastResult = result;
        return result;
    }

    public boolean isCalibrated() {
        return mCalibrationSamples >= mConfig.calibrationFrames;
    }

    public boolean isLargeContact() {
        return mLargeContact;
    }

    public FrameResult getLastResult() {
        return mLastResult;
    }

    /** Clears temporal enter/release state while retaining the learned controller baseline. */
    public void resetState() {
        mLargeContact = false;
        mEnterStreak = 0;
        mReleaseStreak = 0;
        mLastResult = FrameResult.empty(isCalibrated());
    }

    /** Clears both temporal state and raw-frame calibration. */
    public void clearCalibration() {
        Arrays.fill(mBaseline, 0.0);
        Arrays.fill(mLearnedNoise,
                mConfig.minimumSignal / mConfig.localNoiseMultiplier);
        mCalibrationSamples = 0;
        resetState();
    }

    private void learnCalibrationFrame(int[] frame) {
        int sampleNumber = ++mCalibrationSamples;
        double alpha = 1.0 / sampleNumber;
        for (int i = 0; i < mCellCount; i++) {
            double previous = mBaseline[i];
            double delta = frame[i] - previous;
            mBaseline[i] = previous + delta * alpha;
            if (sampleNumber > 1) {
                double deviation = Math.abs(delta);
                mLearnedNoise[i] += (deviation - mLearnedNoise[i]) * alpha;
            }
        }
    }

    private FrameResult classifySignal(int seedRow, int seedColumn,
            boolean adaptRawBaseline, int[] rawFrame) {
        double median = medianOfSignal();
        double mad = medianAbsoluteDeviation(median);
        double robustNoise = Math.max(1.0, mad * 1.4826);
        double adaptiveThreshold = Math.max(mConfig.minimumSignal,
                median + mConfig.madMultiplier * robustNoise);

        Arrays.fill(mActiveCells, false);
        Arrays.fill(mVisited, false);
        for (int i = 0; i < mCellCount; i++) {
            double localThreshold = Math.max(adaptiveThreshold,
                    mLearnedNoise[i] * mConfig.localNoiseMultiplier);
            mThresholds[i] = localThreshold;
            mActiveCells[i] = mSignal[i] >= localThreshold;
        }

        Component candidate = findCandidate(seedRow, seedColumn);
        int candidateCells = candidate == null ? 0 : candidate.cellCount;
        double weightedScore = candidate == null ? 0.0 : candidate.weightedScore;
        boolean coherentShape = candidate != null
                && candidate.rowSpan() >= 2
                && candidate.columnSpan() >= 2;
        boolean qualifiesEnter = coherentShape
                && candidateCells >= mConfig.enterCellCount
                && weightedScore >= mConfig.enterWeightedScore;
        boolean qualifiesKeep = coherentShape
                && candidateCells >= mConfig.releaseCellCount
                && weightedScore >= mConfig.releaseWeightedScore;

        updateTemporalState(qualifiesEnter, qualifiesKeep);
        if (adaptRawBaseline && rawFrame != null) {
            adaptBaseline(rawFrame);
        }

        return new FrameResult(true, mLargeContact, candidateCells, weightedScore,
                adaptiveThreshold, mEnterStreak, mReleaseStreak);
    }

    private void updateTemporalState(boolean qualifiesEnter, boolean qualifiesKeep) {
        if (!mLargeContact) {
            mReleaseStreak = 0;
            mEnterStreak = qualifiesEnter ? mEnterStreak + 1 : 0;
            if (mEnterStreak >= mConfig.enterFrames) {
                mLargeContact = true;
                mEnterStreak = mConfig.enterFrames;
            }
            return;
        }

        mEnterStreak = mConfig.enterFrames;
        mReleaseStreak = qualifiesKeep ? 0 : mReleaseStreak + 1;
        if (mReleaseStreak >= mConfig.releaseFrames) {
            mLargeContact = false;
            mEnterStreak = 0;
            mReleaseStreak = 0;
        }
    }

    private void adaptBaseline(int[] rawFrame) {
        for (int i = 0; i < mCellCount; i++) {
            // Never learn a touched/noisy cell into the baseline, even before the large-state latch.
            if (mActiveCells[i]) continue;
            double residual = rawFrame[i] - mBaseline[i];
            mBaseline[i] += residual * mConfig.baselineAlpha;
            double absoluteResidual = Math.abs(residual);
            mLearnedNoise[i] += (absoluteResidual - mLearnedNoise[i])
                    * mConfig.noiseAlpha;
        }
    }

    private Component findCandidate(int seedRow, int seedColumn) {
        Component best = null;
        boolean hasSeed = seedRow != NO_SEED;
        int maximumSeedDistanceSquared = mConfig.seedRadius * mConfig.seedRadius;

        for (int index = 0; index < mCellCount; index++) {
            if (!mActiveCells[index] || mVisited[index]) continue;
            Component component = floodFill(index, seedRow, seedColumn, hasSeed);
            if (hasSeed) {
                if (component.minimumSeedDistanceSquared > maximumSeedDistanceSquared) continue;
                if (best == null
                        || component.minimumSeedDistanceSquared
                        < best.minimumSeedDistanceSquared
                        || (component.minimumSeedDistanceSquared
                        == best.minimumSeedDistanceSquared
                        && component.weightedScore > best.weightedScore)) {
                    best = component;
                }
            } else {
                // Unseeded single-line edge activity is a common controller/electrical artifact.
                if (component.touchesEdge
                        && (component.rowSpan() == 1 || component.columnSpan() == 1)) {
                    continue;
                }
                if (best == null || component.weightedScore > best.weightedScore) {
                    best = component;
                }
            }
        }
        return best;
    }

    private Component floodFill(int startIndex, int seedRow, int seedColumn, boolean hasSeed) {
        Component component = new Component();
        int head = 0;
        int tail = 0;
        mQueue[tail++] = startIndex;
        mVisited[startIndex] = true;

        while (head < tail) {
            int index = mQueue[head++];
            int row = index / mColumns;
            int column = index - row * mColumns;
            component.add(row, column, mSignal[index] / mThresholds[index],
                    hasSeed ? squaredDistance(row, column, seedRow, seedColumn)
                            : Integer.MAX_VALUE,
                    row == 0 || column == 0 || row == mRows - 1
                            || column == mColumns - 1);

            for (int rowDelta = -1; rowDelta <= 1; rowDelta++) {
                for (int columnDelta = -1; columnDelta <= 1; columnDelta++) {
                    if (rowDelta == 0 && columnDelta == 0) continue;
                    int neighborRow = row + rowDelta;
                    int neighborColumn = column + columnDelta;
                    if (neighborRow < 0 || neighborRow >= mRows
                            || neighborColumn < 0 || neighborColumn >= mColumns) {
                        continue;
                    }
                    int neighbor = neighborRow * mColumns + neighborColumn;
                    if (mActiveCells[neighbor] && !mVisited[neighbor]) {
                        mVisited[neighbor] = true;
                        mQueue[tail++] = neighbor;
                    }
                }
            }
        }
        return component;
    }

    private double medianOfSignal() {
        System.arraycopy(mSignal, 0, mScratch, 0, mCellCount);
        return median(mScratch);
    }

    private double medianAbsoluteDeviation(double median) {
        for (int i = 0; i < mCellCount; i++) {
            mScratch[i] = Math.abs(mSignal[i] - median);
        }
        return median(mScratch);
    }

    private static double median(double[] values) {
        Arrays.sort(values);
        int middle = values.length / 2;
        if ((values.length & 1) != 0) return values[middle];
        return (values[middle - 1] + values[middle]) * 0.5;
    }

    private static int squaredDistance(int row, int column, int seedRow, int seedColumn) {
        int rowDelta = row - seedRow;
        int columnDelta = column - seedColumn;
        return rowDelta * rowDelta + columnDelta * columnDelta;
    }

    private void validateFrame(int[] frame) {
        if (frame == null || frame.length != mCellCount) {
            throw new IllegalArgumentException("Expected " + mCellCount + " matrix cells");
        }
    }

    private void validateSeed(int seedRow, int seedColumn) {
        boolean noSeed = seedRow == NO_SEED && seedColumn == NO_SEED;
        boolean validSeed = seedRow >= 0 && seedRow < mRows
                && seedColumn >= 0 && seedColumn < mColumns;
        if (!noSeed && !validSeed) {
            throw new IllegalArgumentException("Seed must be inside the matrix or NO_SEED");
        }
    }

    static final class Config {
        final int calibrationFrames;
        final double minimumSignal;
        final double madMultiplier;
        final double localNoiseMultiplier;
        final double baselineAlpha;
        final double noiseAlpha;
        final int seedRadius;
        final int enterCellCount;
        final int releaseCellCount;
        final double enterWeightedScore;
        final double releaseWeightedScore;
        final int enterFrames;
        final int releaseFrames;

        Config(int calibrationFrames, double minimumSignal, double madMultiplier,
                double localNoiseMultiplier, double baselineAlpha, double noiseAlpha,
                int seedRadius, int enterCellCount, int releaseCellCount,
                double enterWeightedScore, double releaseWeightedScore,
                int enterFrames, int releaseFrames) {
            if (calibrationFrames < 1 || minimumSignal <= 0.0
                    || madMultiplier <= 0.0 || localNoiseMultiplier <= 0.0
                    || baselineAlpha <= 0.0 || baselineAlpha > 1.0
                    || noiseAlpha <= 0.0 || noiseAlpha > 1.0
                    || seedRadius < 0 || enterCellCount < 1
                    || releaseCellCount < 1 || releaseCellCount > enterCellCount
                    || enterWeightedScore <= 0.0 || releaseWeightedScore <= 0.0
                    || releaseWeightedScore > enterWeightedScore
                    || enterFrames < 1 || releaseFrames < 1) {
                throw new IllegalArgumentException("Invalid classifier config");
            }
            this.calibrationFrames = calibrationFrames;
            this.minimumSignal = minimumSignal;
            this.madMultiplier = madMultiplier;
            this.localNoiseMultiplier = localNoiseMultiplier;
            this.baselineAlpha = baselineAlpha;
            this.noiseAlpha = noiseAlpha;
            this.seedRadius = seedRadius;
            this.enterCellCount = enterCellCount;
            this.releaseCellCount = releaseCellCount;
            this.enterWeightedScore = enterWeightedScore;
            this.releaseWeightedScore = releaseWeightedScore;
            this.enterFrames = enterFrames;
            this.releaseFrames = releaseFrames;
        }
    }

    public static final class FrameResult {
        public final boolean calibrated;
        public final boolean largeContact;
        public final int candidateCellCount;
        public final double weightedScore;
        public final double adaptiveThreshold;
        public final int enterStreak;
        public final int releaseStreak;

        FrameResult(boolean calibrated, boolean largeContact, int candidateCellCount,
                double weightedScore, double adaptiveThreshold,
                int enterStreak, int releaseStreak) {
            this.calibrated = calibrated;
            this.largeContact = largeContact;
            this.candidateCellCount = candidateCellCount;
            this.weightedScore = weightedScore;
            this.adaptiveThreshold = adaptiveThreshold;
            this.enterStreak = enterStreak;
            this.releaseStreak = releaseStreak;
        }

        static FrameResult empty(boolean calibrated) {
            return new FrameResult(calibrated, false, 0, 0.0, 0.0, 0, 0);
        }
    }

    private static final class Component {
        int cellCount;
        double weightedScore;
        int minimumRow = Integer.MAX_VALUE;
        int maximumRow = Integer.MIN_VALUE;
        int minimumColumn = Integer.MAX_VALUE;
        int maximumColumn = Integer.MIN_VALUE;
        int minimumSeedDistanceSquared = Integer.MAX_VALUE;
        boolean touchesEdge;

        void add(int row, int column, double normalizedSignal,
                int seedDistanceSquared, boolean edge) {
            cellCount++;
            // Cap each cell's contribution so one electrical spike cannot imitate a palm.
            weightedScore += Math.min(2.5, Math.max(1.0, normalizedSignal));
            minimumRow = Math.min(minimumRow, row);
            maximumRow = Math.max(maximumRow, row);
            minimumColumn = Math.min(minimumColumn, column);
            maximumColumn = Math.max(maximumColumn, column);
            minimumSeedDistanceSquared = Math.min(
                    minimumSeedDistanceSquared, seedDistanceSquared);
            touchesEdge |= edge;
        }

        int rowSpan() {
            return maximumRow - minimumRow + 1;
        }

        int columnSpan() {
            return maximumColumn - minimumColumn + 1;
        }
    }
}
