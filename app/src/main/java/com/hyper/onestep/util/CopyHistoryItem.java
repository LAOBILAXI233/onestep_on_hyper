package com.hyper.onestep.util;

public class CopyHistoryItem {
    public final String mContent;
    public final long mTimeStamp;

    public CopyHistoryItem(String content, long timeStamp) {
        mContent = content;
        mTimeStamp = timeStamp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CopyHistoryItem)) return false;
        CopyHistoryItem other = (CopyHistoryItem) o;
        return mTimeStamp == other.mTimeStamp
                && (mContent == null ? other.mContent == null : mContent.equals(other.mContent));
    }

    @Override
    public int hashCode() {
        int result = mContent == null ? 0 : mContent.hashCode();
        result = 31 * result + (int) (mTimeStamp ^ (mTimeStamp >>> 32));
        return result;
    }
}
