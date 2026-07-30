package com.hyper.onestep.util;
import java.util.ArrayList;
import java.util.List;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
// 录音文件信息封装，从 Recorder Provider 读取
public class RecorderInfo {
    public static final Uri RECORDER_URI = Uri
            .parse("content://com.smartisanos.recorder.provider/recorderentry/recorder_files");
    private String mPath;
    public RecorderInfo(Cursor cursor) {
        mPath = cursor.getString(cursor.getColumnIndex(Impl.COLUMN_PATH));
    }
    public String getPath() {
        return mPath;
    }
    public static final class Impl implements BaseColumns {
        public static final String COLUMN_PATH = "path";
        public static final String COLUMN_NAME = "name";
        public static final String COLUMN_FORMAT = "format";
        public static final String COLUMN_MARK = "mark";
        public static final String COLUMN_SAMPLING_RATE = "samplingRate";
        public static final String COLUMN_CREATE_TIME = "createTime";
        public static final String COLUMN_DURATION = "duration";
        public static final String COLUMN_ORDER = "recorder_order";
    }
    public static List<FileInfo> getFileInfoFromRecorder(Context context) {
        List<FileInfo> ret = new ArrayList<FileInfo>();
        Cursor cursor = context.getContentResolver().query(RECORDER_URI,
                new String[] { Impl.COLUMN_PATH }, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    do {
                        RecorderInfo ri = new RecorderInfo(cursor);
                        FileInfo fi = new FileInfo(ri.getPath());
                        ret.add(fi);
                    } while (cursor.moveToNext());
                }
            } catch (Exception e) {
            } finally {
                cursor.close();
            }
        }
        return ret;
    }
}
