.class public Lcom/smartisan/moreapps/HttpData;
.super Ljava/lang/Object;
.source "HttpData.java"


.field private static final RETRY_TIMES:I = 0x3


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "resource"    # Ljava/io/InputStream;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v5, 0x0

    .line 75
    :goto_0
    return-object v5

    .line 53
    :cond_0
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 54
    .local v0, "buffer":[C
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v4, "stringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v3, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_2

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 61
    .end local v1    # "count":I
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz p1, :cond_1

    .line 68
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 67
    .restart local v1    # "count":I
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_2
    if-eqz p1, :cond_1

    .line 68
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 70
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v1    # "count":I
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 64
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    if-eqz p1, :cond_1

    .line 68
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 70
    :catch_4
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 67
    if-eqz p1, :cond_3

    .line 68
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 72
    :cond_3
    :goto_3
    throw v5

    .line 70
    :catch_5
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


.method public executeHttpGet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "Url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 44
    .end local v0    # "Url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "count":I
    const/4 v1, 0x0

    .line 19
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    :cond_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisan/moreapps/HttpData;->executeHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 29
    :cond_1
    invoke-direct {p0, v1}, Lcom/smartisan/moreapps/HttpData;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
