package libcore.io;

import android.system.ErrnoException;

/**
 * Stub for hidden libcore.io.Libcore.
 *
 * Original API: Libcore.os.stat(path) returns a StructStat with
 * st_atime, st_ctime, st_mtime fields.
 *
 * This stub emulates the same shape using java.io.File.lastModified()
 * so the FileInfo.getLastTime() call still works (returns mtime for all three).
 */
public class Libcore {

    public static final Os os = new Os();

    public static class Os {
        public StructStat stat(String path) throws ErrnoException {
            return new StructStat(path);
        }
    }

    public static class StructStat {
        public long st_atime;
        public long st_ctime;
        public long st_mtime;

        public StructStat(String path) {
            long mtime = 0;
            try {
                java.io.File f = new java.io.File(path);
                if (f.exists()) {
                    mtime = f.lastModified() / 1000L;
                }
            } catch (Throwable t) {
                // ignore
            }
            st_atime = mtime;
            st_ctime = mtime;
            st_mtime = mtime;
        }
    }
}
