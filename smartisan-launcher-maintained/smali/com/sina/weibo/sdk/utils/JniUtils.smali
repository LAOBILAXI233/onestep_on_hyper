.class Lcom/sina/weibo/sdk/utils/JniUtils;
.super Ljava/lang/Object;
.source "JniUtils.java"


.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearDirectory(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/JniUtils;->clearDirectory(Ljava/io/File;)V

    .line 38
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static copyFileFromAssets(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 139
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 140
    new-array v3, v0, [B

    .line 141
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 143
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    if-eqz v0, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 153
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 148
    :goto_2
    if-eqz v0, :cond_2

    .line 150
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 153
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 155
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 148
    :goto_4
    if-eqz v1, :cond_3

    .line 150
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 153
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 155
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 158
    :cond_4
    :goto_6
    throw v0

    .line 151
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 156
    :catch_4
    move-exception v1

    goto :goto_6

    .line 151
    :catch_5
    move-exception v0

    goto :goto_0

    .line 156
    :catch_6
    move-exception v0

    goto :goto_1

    .line 147
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 146
    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static getByteArrLength([B)I
    .locals 1

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method private static getMd5Signature(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v0, ""

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static readFile(Ljava/io/File;)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 186
    :cond_1
    :goto_0
    return-object v0

    .line 172
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 174
    new-array v0, v0, [B

    .line 175
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    if-eqz v2, :cond_1

    .line 181
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 179
    :goto_1
    if-eqz v0, :cond_3

    .line 181
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move-object v0, v1

    .line 186
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 179
    :goto_3
    if-eqz v2, :cond_4

    .line 181
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    :cond_4
    :goto_4
    throw v0

    .line 182
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 178
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 177
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static unzip(Ljava/io/File;Ljava/io/File;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 63
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    .line 114
    if-eqz v5, :cond_1

    .line 116
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 71
    :cond_2
    const/16 v0, 0x1000

    :try_start_3
    new-array v7, v0, [B

    .line 72
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 74
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 78
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v2

    .line 79
    :try_start_6
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 81
    :goto_2
    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_7
    invoke-virtual {v0, v7, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 86
    if-eqz v0, :cond_3

    .line 88
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 92
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 94
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 98
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 100
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 104
    :cond_5
    :goto_5
    if-eqz v4, :cond_0

    .line 106
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0

    .line 82
    :cond_6
    const/4 v9, 0x0

    :try_start_c
    invoke-virtual {v3, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_2

    .line 84
    :catch_1
    move-exception v7

    .line 86
    :goto_6
    if-eqz v0, :cond_7

    .line 88
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 92
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 94
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 98
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 100
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 104
    :cond_9
    :goto_9
    if-eqz v4, :cond_0

    .line 106
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 86
    :goto_a
    if-eqz v1, :cond_a

    .line 88
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 92
    :cond_a
    :goto_b
    if-eqz v2, :cond_b

    .line 94
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 98
    :cond_b
    :goto_c
    if-eqz v3, :cond_c

    .line 100
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 104
    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    .line 106
    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 110
    :cond_d
    :goto_e
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 112
    :catch_3
    move-exception v0

    move-object v1, v5

    .line 114
    :goto_f
    if-eqz v1, :cond_1

    .line 116
    :try_start_16
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_1

    .line 117
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 113
    :catchall_1
    move-exception v0

    move-object v5, v1

    .line 114
    :goto_10
    if-eqz v5, :cond_e

    .line 116
    :try_start_17
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 120
    :cond_e
    :goto_11
    throw v0

    .line 89
    :catch_5
    move-exception v0

    goto :goto_7

    .line 95
    :catch_6
    move-exception v0

    goto :goto_8

    .line 101
    :catch_7
    move-exception v0

    goto :goto_9

    .line 89
    :catch_8
    move-exception v1

    goto :goto_b

    .line 95
    :catch_9
    move-exception v1

    goto :goto_c

    .line 101
    :catch_a
    move-exception v1

    goto :goto_d

    .line 107
    :catch_b
    move-exception v1

    goto :goto_e

    .line 89
    :catch_c
    move-exception v0

    goto :goto_3

    .line 95
    :catch_d
    move-exception v0

    goto :goto_4

    .line 101
    :catch_e
    move-exception v0

    goto :goto_5

    .line 117
    :catch_f
    move-exception v1

    goto :goto_11

    :catch_10
    move-exception v0

    goto/16 :goto_1

    .line 113
    :catchall_2
    move-exception v0

    goto :goto_10

    .line 112
    :catch_11
    move-exception v0

    goto :goto_f

    .line 85
    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_a

    .line 84
    :catch_12
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_13
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_6

    :catch_14
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_6

    :catch_15
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method private static writeFile(Ljava/io/File;[B)V
    .locals 3

    .prologue
    .line 202
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x0

    .line 207
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    if-eqz v0, :cond_0

    .line 213
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 211
    :goto_1
    if-eqz v0, :cond_0

    .line 213
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 214
    :catch_2
    move-exception v0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    :goto_2
    if-eqz v1, :cond_2

    .line 213
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 217
    :cond_2
    :goto_3
    throw v0

    .line 214
    :catch_3
    move-exception v1

    goto :goto_3

    .line 210
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 209
    :catch_4
    move-exception v1

    goto :goto_1
.end method
