package com.hyper.onestep.lsp;
import java.util.Locale;
// 将触摸轨迹分类为左滑、右滑或无意图
final class GestureIntentClassifier {
    enum Outcome {
        NONE,
        SWIPE_LEFT,
        SWIPE_RIGHT
    }
    static final long STEADY_PRESS_TIME_MS = 260L;
    static final long MAX_GESTURE_TIME_MS = 2400L;
    private static final float STEADY_RADIUS_DP = 12f;
    private static final float MAX_STEADY_PATH_DP = 28f;
    private static final float DIRECTION_LOCK_DP = 8f;
    private static final float MIN_HORIZONTAL_DP = 32f;
    private static final float MIN_DOWNWARD_DP = 26f;
    private static final float MAX_UPWARD_DP = 18f;
    private static final float MAX_REVERSE_DP = 12f;
    private static final float MIN_SEGMENT_DP = 0.5f;
    private static final float MIN_SLOPE = 0.46f;
    private static final float MAX_SLOPE = 1.43f;
    private static final float READY_MIN_SLOPE = 0.31f;
    private static final float READY_MAX_SLOPE = 1.96f;
    private static final float READY_DISTANCE_RETENTION = 0.75f;
    private static final float READY_MAX_REVERSE_DP = 24f;
    private static final float READY_MIN_PATH_EFFICIENCY = 0.58f;
    private static final float MIN_PATH_EFFICIENCY = 0.72f;
    private static final long MIN_SWIPE_TIME_MS = 60L;
    private static final long SWIPE_BASELINE_IDLE_MS = 100L;
    private static final int MIN_MOVEMENT_SAMPLES = 4;
    private boolean mTracking;
    private boolean mArmed;
    private boolean mSoftwareRejected;
    private boolean mTimedOut;
    private Outcome mOutcome = Outcome.NONE;
    private float mDensity = 1f;
    private float mDownX;
    private float mDownY;
    private float mLastX;
    private float mLastY;
    private float mCurrentX;
    private float mCurrentY;
    private float mSwipeBaselineX;
    private float mSwipeBaselineY;
    private float mMaxSteadyRadius;
    private float mSteadyPath;
    private float mPathAfterArm;
    private float mReverseDistance;
    private long mDownTime;
    private long mLastSampleTime;
    private long mArmTime;
    private long mSwipeStartTime;
    private int mDirectionSign;
    private int mMovementSamples;
    private String mArmSource = "none";
    private String mRejectReason = "not-armed";
    // 开始一次手势轨迹追踪并记录起始坐标
    void start(float x, float y, long eventTime, float density) {
        reset();
        mTracking = true;
        mDensity = Math.max(1f, density);
        mDownX = x;
        mDownY = y;
        mLastX = x;
        mLastY = y;
        mCurrentX = x;
        mCurrentY = y;
        mDownTime = eventTime;
        mLastSampleTime = eventTime;
    }
    // 添加触摸采样点并更新武装状态与滑动方向判定
    void addSample(float x, float y, long eventTime, boolean strongAreaEvidence,
            String areaSource) {
        if (!mTracking) return;
        if (strongAreaEvidence && !mArmed) {
            arm(areaSource == null ? "contact-area" : areaSource,
                    Math.max(mLastSampleTime, eventTime));
        }
        if (eventTime < mLastSampleTime) return;
        if (eventTime == mLastSampleTime
                && Float.compare(x, mLastX) == 0
                && Float.compare(y, mLastY) == 0) {
            return;
        }
        long sampleTime = eventTime;
        float segmentX = x - mLastX;
        float segmentY = y - mLastY;
        float segmentDistance = distance(segmentX, segmentY);
        float dx = x - mDownX;
        float dy = y - mDownY;
        float radius = distance(dx, dy);
        if (!mArmed && !mSoftwareRejected) {
            long previousElapsed = mLastSampleTime - mDownTime;
            long elapsed = sampleTime - mDownTime;
            boolean steadyThroughDeadline = mMaxSteadyRadius <= dp(STEADY_RADIUS_DP)
                    && mSteadyPath <= dp(MAX_STEADY_PATH_DP)
                    && (previousElapsed >= STEADY_PRESS_TIME_MS
                            || (elapsed >= STEADY_PRESS_TIME_MS
                                    && radius <= dp(STEADY_RADIUS_DP)));
            if (steadyThroughDeadline) {
                arm("steady-press", mDownTime + STEADY_PRESS_TIME_MS);
            }
            if (!mArmed) {
                mMaxSteadyRadius = Math.max(mMaxSteadyRadius, radius);
                mSteadyPath += segmentDistance;
                if (mMaxSteadyRadius > dp(STEADY_RADIUS_DP)) {
                    rejectSoftware("moved-before-steady");
                } else if (mSteadyPath > dp(MAX_STEADY_PATH_DP)) {
                    rejectSoftware("unstable-before-steady");
                }
            }
        }
        if (mArmed) {
            if (mDirectionSign == 0
                    && sampleTime - mLastSampleTime >= SWIPE_BASELINE_IDLE_MS) {
                resetSwipeBaseline(mLastX, mLastY);
            }
            float swipeDx = x - mSwipeBaselineX;
            float swipeDy = y - mSwipeBaselineY;
            if (mDirectionSign == 0 && Math.abs(swipeDx) >= dp(DIRECTION_LOCK_DP)) {
                int directionSign = swipeDx < 0f ? -1 : 1;
                mPathAfterArm = segmentDistance;
                mReverseDistance = 0f;
                mMovementSamples = segmentDistance >= dp(MIN_SEGMENT_DP) ? 1 : 0;
                mSwipeStartTime = sampleTime;
                mDirectionSign = directionSign;
            } else if (mDirectionSign != 0) {
                mPathAfterArm += segmentDistance;
                if (segmentDistance >= dp(MIN_SEGMENT_DP)) {
                    mMovementSamples++;
                }
            }
            if (mDirectionSign != 0 && segmentX * mDirectionSign < 0f) {
                mReverseDistance += Math.abs(segmentX);
            }
            evaluate(swipeDx, swipeDy, sampleTime);
        }
        mCurrentX = x;
        mCurrentY = y;
        mLastX = x;
        mLastY = y;
        mLastSampleTime = sampleTime;
    }
    // 长按兜底武装，满足静止条件时激活手势识别
    void armFallback(long eventTime) {
        if (!mTracking || mArmed || mSoftwareRejected) return;
        if (mMaxSteadyRadius <= dp(STEADY_RADIUS_DP)
                && mSteadyPath <= dp(MAX_STEADY_PATH_DP)) {
            arm("long-press-fallback", eventTime);
        }
    }
    boolean canArmFallback() {
        return mTracking && !mArmed && !mSoftwareRejected
                && mMaxSteadyRadius <= dp(STEADY_RADIUS_DP)
                && mSteadyPath <= dp(MAX_STEADY_PATH_DP);
    }
    boolean canConfirmLongPressFallback() {
        if (!mTracking || mSoftwareRejected || mTimedOut
                || mOutcome != Outcome.NONE || mDirectionSign != 0) {
            return false;
        }
        float radius = distance(mCurrentX - mDownX, mCurrentY - mDownY);
        return radius <= dp(STEADY_RADIUS_DP)
                && mMaxSteadyRadius <= dp(STEADY_RADIUS_DP)
                && mSteadyPath + mPathAfterArm <= dp(MAX_STEADY_PATH_DP);
    }
    Outcome getOutcome() {
        return mOutcome;
    }
    boolean isArmed() {
        return mArmed;
    }
    float getHorizontalDelta() {
        if (mOutcome == Outcome.SWIPE_LEFT) {
            return -Math.max(1f, Math.abs(mCurrentX - mSwipeBaselineX));
        }
        if (mOutcome == Outcome.SWIPE_RIGHT) {
            return Math.max(1f, Math.abs(mCurrentX - mSwipeBaselineX));
        }
        return mCurrentX - mDownX;
    }
    String summary(long eventTime) {
        float dx = mCurrentX - mDownX;
        float dy = mCurrentY - mDownY;
        float net = distance(mCurrentX - mSwipeBaselineX,
                mCurrentY - mSwipeBaselineY);
        float efficiency = mPathAfterArm <= 0f ? 0f
                : Math.min(1f, net / mPathAfterArm);
        String reason = mOutcome != Outcome.NONE ? "ready"
                : (mTimedOut ? "timeout" : mRejectReason);
        return String.format(Locale.US,
                "source=%s outcome=%s elapsed=%d dx=%.1f dy=%.1f "
                        + "steadyRadius=%.1f pathEfficiency=%.2f reverse=%.1f reason=%s",
                mArmSource, mOutcome, Math.max(0L, eventTime - mDownTime), dx, dy,
                mMaxSteadyRadius, efficiency, mReverseDistance, reason);
    }
    // 重置分类器所有状态以备下次手势追踪
    void reset() {
        mTracking = false;
        mArmed = false;
        mSoftwareRejected = false;
        mTimedOut = false;
        mOutcome = Outcome.NONE;
        mDensity = 1f;
        mDownX = 0f;
        mDownY = 0f;
        mLastX = 0f;
        mLastY = 0f;
        mCurrentX = 0f;
        mCurrentY = 0f;
        mSwipeBaselineX = 0f;
        mSwipeBaselineY = 0f;
        mMaxSteadyRadius = 0f;
        mSteadyPath = 0f;
        mPathAfterArm = 0f;
        mReverseDistance = 0f;
        mDownTime = 0L;
        mLastSampleTime = 0L;
        mArmTime = 0L;
        mSwipeStartTime = 0L;
        mDirectionSign = 0;
        mMovementSamples = 0;
        mArmSource = "none";
        mRejectReason = "not-armed";
    }
    private void evaluate(float dx, float dy, long eventTime) {
        if (eventTime - mDownTime > MAX_GESTURE_TIME_MS) {
            mTimedOut = true;
            mOutcome = Outcome.NONE;
            mRejectReason = "timeout";
            return;
        }
        if (mOutcome != Outcome.NONE) {
            if (retainsReadyOutcome(dx, dy)) {
                mRejectReason = "ready";
            } else {
                mOutcome = Outcome.NONE;
                mRejectReason = "ready-cancelled";
            }
            return;
        }
        if (dy < -dp(MAX_UPWARD_DP)) {
            mRejectReason = "upward";
            return;
        }
        float absDx = Math.abs(dx);
        if (mDirectionSign == 0 || absDx < dp(MIN_HORIZONTAL_DP)
                || dy < dp(MIN_DOWNWARD_DP)) {
            mRejectReason = "distance";
            return;
        }
        if ((dx < 0f ? -1 : 1) != mDirectionSign) {
            mRejectReason = "direction-reversed";
            return;
        }
        float slope = dy / absDx;
        if (slope < MIN_SLOPE || slope > MAX_SLOPE) {
            mRejectReason = "angle";
            return;
        }
        if (mReverseDistance > dp(MAX_REVERSE_DP)) {
            mRejectReason = "horizontal-reversal";
            return;
        }
        float net = distance(dx, dy);
        float efficiency = mPathAfterArm <= 0f ? 0f
                : Math.min(1f, net / mPathAfterArm);
        if (efficiency < MIN_PATH_EFFICIENCY) {
            mRejectReason = "curved-path";
            return;
        }
        if (mSwipeStartTime == 0L || eventTime - mSwipeStartTime < MIN_SWIPE_TIME_MS
                || mMovementSamples < MIN_MOVEMENT_SAMPLES) {
            mRejectReason = "too-fast";
            return;
        }
        mOutcome = mDirectionSign < 0 ? Outcome.SWIPE_LEFT : Outcome.SWIPE_RIGHT;
        mRejectReason = "ready";
    }
    private void arm(String source, long eventTime) {
        mArmed = true;
        mArmSource = source;
        mArmTime = Math.max(mDownTime, eventTime);
        resetSwipeBaseline(mLastX, mLastY);
        mRejectReason = "distance";
    }
    private void resetSwipeBaseline(float x, float y) {
        mSwipeBaselineX = x;
        mSwipeBaselineY = y;
        mPathAfterArm = 0f;
        mReverseDistance = 0f;
        mDirectionSign = 0;
        mMovementSamples = 0;
        mSwipeStartTime = 0L;
    }
    private boolean retainsReadyOutcome(float dx, float dy) {
        int outcomeSign = mOutcome == Outcome.SWIPE_LEFT ? -1 : 1;
        if ((dx < 0f ? -1 : 1) != outcomeSign) return false;
        float absDx = Math.abs(dx);
        if (absDx < dp(MIN_HORIZONTAL_DP * READY_DISTANCE_RETENTION)
                || dy < dp(MIN_DOWNWARD_DP * READY_DISTANCE_RETENTION)) {
            return false;
        }
        float slope = dy / absDx;
        if (slope < READY_MIN_SLOPE || slope > READY_MAX_SLOPE) return false;
        if (mReverseDistance > dp(READY_MAX_REVERSE_DP)) return false;
        float net = distance(dx, dy);
        float efficiency = mPathAfterArm <= 0f ? 0f
                : Math.min(1f, net / mPathAfterArm);
        return efficiency >= READY_MIN_PATH_EFFICIENCY;
    }
    private void rejectSoftware(String reason) {
        mSoftwareRejected = true;
        mRejectReason = reason;
    }
    private float dp(float value) {
        return value * mDensity;
    }
    private static float distance(float x, float y) {
        return (float) Math.hypot(x, y);
    }
}
