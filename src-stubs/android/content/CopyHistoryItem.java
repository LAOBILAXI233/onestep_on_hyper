package android.content;

/**
 * Stub for SmartisanOS CopyHistoryItem.
 * Real one is a framework class for clipboard history entries.
 */
public class CopyHistoryItem {
    public String mContent;
    public long mTimeStamp;

    public CopyHistoryItem() {
    }

    public CopyHistoryItem(String content, long timeStamp) {
        mContent = content;
        mTimeStamp = timeStamp;
    }
}
