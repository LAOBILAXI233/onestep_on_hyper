package com.leaf.hyperdragshare.codex;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

final class FrameworkBinderTransactionResolver {
    private static final String INPUT_MANAGER_STUB =
            "Landroid/hardware/input/IInputManager$Stub;";
    private static final String CANCEL_CURRENT_TOUCH = "TRANSACTION_cancelCurrentTouch";
    private static final int DEX_HEADER_SIZE = 0x70;
    private static final int STRING_IDS_SIZE_OFFSET = 0x38;
    private static final int STRING_IDS_OFFSET = 0x3c;
    private static final int TYPE_IDS_SIZE_OFFSET = 0x40;
    private static final int TYPE_IDS_OFFSET = 0x44;
    private static final int FIELD_IDS_SIZE_OFFSET = 0x50;
    private static final int FIELD_IDS_OFFSET = 0x54;
    private static final int CLASS_DEFS_SIZE_OFFSET = 0x60;
    private static final int CLASS_DEFS_OFFSET = 0x64;
    private static final int FIELD_ID_SIZE = 8;
    private static final int CLASS_DEF_SIZE = 32;
    private static final int VALUE_BYTE = 0x00;
    private static final int VALUE_SHORT = 0x02;
    private static final int VALUE_CHAR = 0x03;
    private static final int VALUE_INT = 0x04;
    private static final int VALUE_LONG = 0x06;
    private static final int VALUE_FLOAT = 0x10;
    private static final int VALUE_DOUBLE = 0x11;
    private static final int VALUE_METHOD_TYPE = 0x15;
    private static final int VALUE_METHOD_HANDLE = 0x16;
    private static final int VALUE_STRING = 0x17;
    private static final int VALUE_TYPE = 0x18;
    private static final int VALUE_FIELD = 0x19;
    private static final int VALUE_METHOD = 0x1a;
    private static final int VALUE_ENUM = 0x1b;
    private static final int VALUE_ARRAY = 0x1c;
    private static final int VALUE_ANNOTATION = 0x1d;
    private static final int VALUE_NULL = 0x1e;
    private static final int VALUE_BOOLEAN = 0x1f;

    private FrameworkBinderTransactionResolver() {}

    static int resolveCancelCurrentTouchTransactionCode() throws IOException {
        IOException lastFailure = null;
        for (String archivePath : frameworkArchivePaths()) {
            File archive = new File(archivePath);
            if (!archive.isFile() || !archive.canRead()) {
                continue;
            }
            try (ZipFile zipFile = new ZipFile(archive)) {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry entry = entries.nextElement();
                    if (entry.isDirectory() || !isDexEntry(entry.getName())) {
                        continue;
                    }
                    try (InputStream input = zipFile.getInputStream(entry)) {
                        int transactionCode = findStaticInt(
                                input.readAllBytes(), INPUT_MANAGER_STUB, CANCEL_CURRENT_TOUCH);
                        if (transactionCode > 0) {
                            return transactionCode;
                        }
                    }
                }
            } catch (IOException error) {
                lastFailure = error;
            }
        }
        if (lastFailure != null) {
            throw new IOException("Unable to resolve IInputManager transaction from this ROM", lastFailure);
        }
        throw new IOException("IInputManager transaction is unavailable on this ROM");
    }

    static int findStaticInt(byte[] dex, String classDescriptor, String fieldName) throws IOException {
        if (dex == null || classDescriptor == null || fieldName == null) {
            return -1;
        }
        return new DexReader(dex).findStaticInt(classDescriptor, fieldName);
    }

    private static Set<String> frameworkArchivePaths() {
        LinkedHashSet<String> result = new LinkedHashSet<>();
        String bootClassPath = System.getenv("BOOTCLASSPATH");
        if (bootClassPath != null) {
            String[] entries = bootClassPath.split(":");
            for (String entry : entries) {
                if (entry.endsWith("/framework.jar")) {
                    result.add(entry);
                }
            }
        }
        result.add("/system/framework/framework.jar");
        return result;
    }

    private static boolean isDexEntry(String name) {
        return name != null && name.startsWith("classes") && name.endsWith(".dex");
    }

    private static final class DexReader {
        private final byte[] data;
        private final int stringIdsSize;
        private final int stringIdsOffset;
        private final int typeIdsSize;
        private final int typeIdsOffset;
        private final int fieldIdsSize;
        private final int fieldIdsOffset;
        private final int classDefsSize;
        private final int classDefsOffset;
        private final String[] strings;

        DexReader(byte[] data) throws IOException {
            this.data = data;
            requireRange(0, DEX_HEADER_SIZE);
            if (data[0] != 'd' || data[1] != 'e' || data[2] != 'x' || data[3] != '\n') {
                throw new IOException("Not a DEX file");
            }
            stringIdsSize = readInt(STRING_IDS_SIZE_OFFSET);
            stringIdsOffset = readInt(STRING_IDS_OFFSET);
            typeIdsSize = readInt(TYPE_IDS_SIZE_OFFSET);
            typeIdsOffset = readInt(TYPE_IDS_OFFSET);
            fieldIdsSize = readInt(FIELD_IDS_SIZE_OFFSET);
            fieldIdsOffset = readInt(FIELD_IDS_OFFSET);
            classDefsSize = readInt(CLASS_DEFS_SIZE_OFFSET);
            classDefsOffset = readInt(CLASS_DEFS_OFFSET);
            requireTable(stringIdsOffset, stringIdsSize, 4);
            requireTable(typeIdsOffset, typeIdsSize, 4);
            requireTable(fieldIdsOffset, fieldIdsSize, FIELD_ID_SIZE);
            requireTable(classDefsOffset, classDefsSize, CLASS_DEF_SIZE);
            strings = new String[stringIdsSize];
        }

        int findStaticInt(String classDescriptor, String fieldName) throws IOException {
            for (int classNumber = 0; classNumber < classDefsSize; classNumber++) {
                int classDefOffset = offsetOf(classDefsOffset, classNumber, CLASS_DEF_SIZE);
                int classIndex = readInt(classDefOffset);
                if (!classDescriptor.equals(typeDescriptor(classIndex))) {
                    continue;
                }
                return findStaticIntInClass(classDefOffset, fieldName);
            }
            return -1;
        }

        private int findStaticIntInClass(int classDefOffset, String fieldName) throws IOException {
            int classDataOffset = readInt(classDefOffset + 24);
            int staticValuesOffset = readInt(classDefOffset + 28);
            if (classDataOffset == 0 || staticValuesOffset == 0) {
                return -1;
            }
            Cursor classData = new Cursor(classDataOffset);
            int staticFieldCount = readUleb128(classData);
            readUleb128(classData);
            readUleb128(classData);
            readUleb128(classData);

            int fieldIndex = 0;
            int targetPosition = -1;
            for (int position = 0; position < staticFieldCount; position++) {
                fieldIndex += readUleb128(classData);
                readUleb128(classData);
                if (fieldName.equals(fieldName(fieldIndex))) {
                    targetPosition = position;
                }
            }
            if (targetPosition < 0) {
                return -1;
            }

            Cursor values = new Cursor(staticValuesOffset);
            int valueCount = readUleb128(values);
            for (int position = 0; position < valueCount; position++) {
                Integer value = readEncodedValue(values);
                if (position == targetPosition) {
                    return value == null ? -1 : value;
                }
            }
            return -1;
        }

        private String typeDescriptor(int typeIndex) throws IOException {
            if (typeIndex < 0 || typeIndex >= typeIdsSize) {
                throw new IOException("Invalid DEX type index");
            }
            return stringAt(readInt(offsetOf(typeIdsOffset, typeIndex, 4)));
        }

        private String fieldName(int fieldIndex) throws IOException {
            if (fieldIndex < 0 || fieldIndex >= fieldIdsSize) {
                throw new IOException("Invalid DEX field index");
            }
            int fieldOffset = offsetOf(fieldIdsOffset, fieldIndex, FIELD_ID_SIZE);
            return stringAt(readInt(fieldOffset + 4));
        }

        private String stringAt(int stringIndex) throws IOException {
            if (stringIndex < 0 || stringIndex >= stringIdsSize) {
                throw new IOException("Invalid DEX string index");
            }
            String cached = strings[stringIndex];
            if (cached != null) {
                return cached;
            }
            Cursor cursor = new Cursor(readInt(offsetOf(stringIdsOffset, stringIndex, 4)));
            readUleb128(cursor);
            int start = cursor.offset;
            while (cursor.offset < data.length && data[cursor.offset] != 0) {
                cursor.offset++;
            }
            if (cursor.offset >= data.length) {
                throw new IOException("Unterminated DEX string");
            }
            String value = new String(data, start, cursor.offset - start, StandardCharsets.UTF_8);
            strings[stringIndex] = value;
            return value;
        }

        private Integer readEncodedValue(Cursor cursor) throws IOException {
            int header = readByte(cursor);
            int valueType = header & 0x1f;
            int byteCount = (header >>> 5) + 1;
            switch (valueType) {
                case VALUE_BYTE:
                case VALUE_SHORT:
                case VALUE_INT:
                case VALUE_LONG:
                case VALUE_CHAR:
                    return readIntegralValue(cursor, valueType, byteCount);
                case VALUE_FLOAT:
                case VALUE_DOUBLE:
                case VALUE_METHOD_TYPE:
                case VALUE_METHOD_HANDLE:
                case VALUE_STRING:
                case VALUE_TYPE:
                case VALUE_FIELD:
                case VALUE_METHOD:
                case VALUE_ENUM:
                    skipBytes(cursor, byteCount);
                    return null;
                case VALUE_ARRAY:
                    int arraySize = readUleb128(cursor);
                    for (int index = 0; index < arraySize; index++) {
                        readEncodedValue(cursor);
                    }
                    return null;
                case VALUE_ANNOTATION:
                    readUleb128(cursor);
                    int annotationSize = readUleb128(cursor);
                    for (int index = 0; index < annotationSize; index++) {
                        readUleb128(cursor);
                        readEncodedValue(cursor);
                    }
                    return null;
                case VALUE_NULL:
                case VALUE_BOOLEAN:
                    return null;
                default:
                    throw new IOException("Unsupported DEX encoded value");
            }
        }

        private Integer readIntegralValue(Cursor cursor, int valueType, int byteCount)
                throws IOException {
            if (byteCount > 8) {
                throw new IOException("Invalid DEX integral value");
            }
            long value = 0L;
            for (int index = 0; index < byteCount; index++) {
                value |= (long) readByte(cursor) << (index * 8);
            }
            if (valueType != VALUE_CHAR && byteCount < 8
                    && (value & (1L << (byteCount * 8 - 1))) != 0L) {
                value |= -1L << (byteCount * 8);
            }
            return value >= Integer.MIN_VALUE && value <= Integer.MAX_VALUE
                    ? (int) value
                    : null;
        }

        private int readUleb128(Cursor cursor) throws IOException {
            int value = 0;
            for (int shift = 0; shift < 35; shift += 7) {
                int next = readByte(cursor);
                value |= (next & 0x7f) << shift;
                if ((next & 0x80) == 0) {
                    return value;
                }
            }
            throw new IOException("Invalid DEX ULEB128 value");
        }

        private int readInt(int offset) throws IOException {
            requireRange(offset, 4);
            return (data[offset] & 0xff)
                    | ((data[offset + 1] & 0xff) << 8)
                    | ((data[offset + 2] & 0xff) << 16)
                    | ((data[offset + 3] & 0xff) << 24);
        }

        private int readByte(Cursor cursor) throws IOException {
            requireRange(cursor.offset, 1);
            return data[cursor.offset++] & 0xff;
        }

        private void skipBytes(Cursor cursor, int count) throws IOException {
            requireRange(cursor.offset, count);
            cursor.offset += count;
        }

        private int offsetOf(int base, int index, int itemSize) throws IOException {
            long offset = (long) base + (long) index * itemSize;
            if (offset > Integer.MAX_VALUE) {
                throw new IOException("Invalid DEX table offset");
            }
            requireRange((int) offset, itemSize);
            return (int) offset;
        }

        private void requireTable(int offset, int count, int itemSize) throws IOException {
            if (count < 0) {
                throw new IOException("Invalid DEX table size");
            }
            long size = (long) count * itemSize;
            if (size > Integer.MAX_VALUE) {
                throw new IOException("Invalid DEX table length");
            }
            requireRange(offset, (int) size);
        }

        private void requireRange(int offset, int count) throws IOException {
            long end = (long) offset + count;
            if (offset < 0 || count < 0 || end > data.length) {
                throw new IOException("Invalid DEX offset");
            }
        }
    }

    private static final class Cursor {
        int offset;

        Cursor(int offset) {
            this.offset = offset;
        }
    }
}
