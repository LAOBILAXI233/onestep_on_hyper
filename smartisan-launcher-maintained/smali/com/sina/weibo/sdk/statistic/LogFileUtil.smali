.class Lcom/sina/weibo/sdk/statistic/LogFileUtil;
.super Ljava/lang/Object;
.source "LogFileUtil.java"


.field public static final ANALYTICS_FILE_NAME:Ljava/lang/String; = "app_logs"

.field private static final ANALYTICS_FILE_SUFFIX:Ljava/lang/String; = ".txt"

.field private static final SDCARD_WEIBO_ANALYTICS_DIR:Ljava/lang/String; = "/sina/weibo/.applogs/"


.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAppLogPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const-string v0, ""

    .line 37
    const-string v0, ""

    .line 38
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogReport;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogReport;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/sina/weibo/.applogs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static getAppLogs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, ""

    .line 32
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/statistic/LogFileUtil;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 51
    :goto_0
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_4

    .line 84
    if-eqz v1, :cond_3

    .line 86
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 92
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_4
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    if-eqz v1, :cond_3

    .line 86
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    goto :goto_2

    .line 81
    :catch_2
    move-exception v0

    .line 82
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    if-eqz v2, :cond_3

    .line 86
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 87
    :catch_3
    move-exception v0

    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :goto_5
    if-eqz v2, :cond_5

    .line 86
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 91
    :cond_5
    :goto_6
    throw v0

    .line 87
    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 81
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 79
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method public static declared-synchronized writeToFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 104
    const-class v2, Lcom/sina/weibo/sdk/statistic/LogFileUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 107
    :cond_1
    :try_start_1
    const-string v0, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_2

    .line 113
    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_3

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ","

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 126
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_5
    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v4, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    if-eqz v1, :cond_0

    .line 139
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 128
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    move p2, v1

    .line 130
    goto :goto_1

    .line 135
    :catch_1
    move-exception v1

    .line 137
    :goto_2
    if-eqz v0, :cond_0

    .line 139
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 136
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 137
    :goto_3
    if-eqz v1, :cond_7

    .line 139
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 144
    :cond_7
    :goto_4
    :try_start_a
    throw v0

    .line 140
    :catch_3
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 136
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 135
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
