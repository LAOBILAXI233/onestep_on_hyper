.class Ltqt/weibo/cn/tqtsdk/b/b/d;
.super Ljava/lang/Object;
.source "HttpRunnable.java"

.implements Ljava/lang/Runnable;


.field private static b:Ltqt/weibo/cn/tqtsdk/b/b/a;

.field private static c:Ltqt/weibo/cn/tqtsdk/b/b/e;


.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private g:Z

.field private h:Ljava/io/File;

.field private i:Ltqt/weibo/cn/tqtsdk/b/b/e;

.field private j:Ltqt/weibo/cn/tqtsdk/b/b/a;

.field private k:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ltqt/weibo/cn/tqtsdk/b/b/d$1;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/b/b/d$1;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/b/b/d;->b:Ltqt/weibo/cn/tqtsdk/b/b/a;

    .line 33
    new-instance v0, Ltqt/weibo/cn/tqtsdk/b/b/d$2;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/b/b/d$2;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/b/b/d;->c:Ltqt/weibo/cn/tqtsdk/b/b/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[BLtqt/weibo/cn/tqtsdk/b/b/b;)Ljava/net/HttpURLConnection;
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 77
    .line 82
    if-eqz p2, :cond_2

    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "POST"

    move-object v3, v0

    .line 90
    :goto_0
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/b/b/c;->a()V

    .line 92
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    move v2, v0

    .line 96
    :goto_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :goto_2
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 140
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 142
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    const-string v2, "Accept"

    const-string v3, "*, */*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "accept-charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p3, :cond_0

    .line 149
    invoke-interface {p3, v0}, Ltqt/weibo/cn/tqtsdk/b/b/b;->a(Ljava/net/HttpURLConnection;)V

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 154
    invoke-static {v2, p2}, Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Ljava/io/OutputStream;[B)V

    .line 155
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 156
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :cond_1
    :goto_4
    return-object v0

    .line 85
    :cond_2
    :try_start_2
    const-string v0, "GET"

    move-object v3, v0

    move-object p2, v1

    .line 86
    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x7

    move v2, v0

    goto :goto_1

    .line 102
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 103
    if-ne v4, v5, :cond_5

    move-object v0, v1

    .line 104
    goto :goto_4

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "http://10.0.0.172"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :try_start_3
    const-string v5, "X-Online-Host"

    .line 112
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 116
    :cond_6
    :try_start_4
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 118
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v0, v5, :cond_7

    .line 121
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 122
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 124
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 128
    :cond_7
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 138
    :cond_8
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 163
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 165
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    if-eqz v2, :cond_9

    .line 167
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object v0, v1

    .line 169
    goto/16 :goto_4

    .line 163
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V
    .locals 10

    .prologue
    .line 178
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V
    .locals 26

    .prologue
    .line 187
    if-nez p7, :cond_0

    .line 188
    sget-object p7, Ltqt/weibo/cn/tqtsdk/b/b/d;->b:Ltqt/weibo/cn/tqtsdk/b/b/a;

    .line 190
    :cond_0
    if-nez p6, :cond_1a

    .line 191
    sget-object v4, Ltqt/weibo/cn/tqtsdk/b/b/d;->c:Ltqt/weibo/cn/tqtsdk/b/b/e;

    .line 195
    :goto_0
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;)V

    .line 198
    if-eqz p8, :cond_1

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    const/4 v7, -0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 457
    :goto_1
    return-void

    .line 204
    :cond_1
    invoke-static/range {p0 .. p0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->d(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    goto :goto_1

    .line 209
    :cond_2
    invoke-static/range {p0 .. p0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    const/4 v7, -0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    goto :goto_1

    .line 216
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Landroid/content/Context;Ljava/lang/String;[BLtqt/weibo/cn/tqtsdk/b/b/b;)Ljava/net/HttpURLConnection;

    move-result-object v24

    .line 218
    if-nez v24, :cond_4

    .line 220
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    goto :goto_1

    .line 224
    :cond_4
    const-wide/16 v6, 0x0

    .line 227
    if-eqz p5, :cond_5

    .line 229
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".download"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 231
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 232
    const-string v5, "RANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-wide v8, v6

    .line 238
    invoke-virtual/range {p7 .. p7}, Ltqt/weibo/cn/tqtsdk/b/b/a;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 239
    const/4 v7, -0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 240
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 248
    :cond_6
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->connect()V

    .line 249
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 266
    const/16 v5, 0xc8

    if-eq v7, v5, :cond_7

    const/16 v5, 0xce

    if-eq v7, v5, :cond_7

    .line 272
    if-eqz p5, :cond_7

    .line 274
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 276
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 250
    :catch_0
    move-exception v5

    .line 251
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    goto/16 :goto_1

    .line 254
    :catch_1
    move-exception v5

    .line 256
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 259
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 282
    :cond_7
    const-string v5, "Content-Length"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    if-eqz v5, :cond_a

    .line 285
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 286
    add-long/2addr v6, v8

    move-wide/from16 v22, v6

    .line 292
    :goto_2
    if-eqz p5, :cond_c

    .line 294
    if-eqz v5, :cond_c

    .line 296
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 297
    if-eqz p8, :cond_8

    .line 298
    invoke-static {v6, v7}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a(J)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    if-nez p8, :cond_b

    .line 299
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 301
    :cond_9
    const/4 v7, -0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 303
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 288
    :cond_a
    const-wide/16 v6, -0x1

    move-wide/from16 v22, v6

    goto :goto_2

    .line 307
    :cond_b
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 308
    if-eqz p4, :cond_e

    .line 309
    invoke-static/range {p5 .. p5}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;)V

    .line 325
    :cond_c
    :goto_3
    const/4 v9, 0x0

    .line 327
    const/4 v7, 0x0

    .line 328
    const/4 v8, 0x0

    .line 329
    const/4 v6, 0x0

    .line 331
    const/4 v5, 0x0

    .line 335
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 336
    :try_start_2
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    if-eqz p5, :cond_10

    .line 338
    :try_start_3
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".download"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v16, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v7, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v19, v5

    move-object v15, v6

    .line 345
    :goto_4
    :try_start_4
    invoke-virtual/range {p7 .. p7}, Ltqt/weibo/cn/tqtsdk/b/b/a;->a()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 346
    const/4 v7, -0x7

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 450
    if-eqz v24, :cond_d

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 453
    :cond_d
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/InputStream;)V

    .line 454
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/OutputStream;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 311
    :cond_e
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 313
    const/16 v5, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-interface {v4, v0, v1, v5}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    const/16 v7, 0xc8

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    goto/16 :goto_1

    .line 317
    :cond_f
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 318
    invoke-static/range {p5 .. p5}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;)V

    goto/16 :goto_3

    .line 341
    :cond_10
    :try_start_5
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 342
    :try_start_6
    new-instance v16, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v19, v5

    move-object v15, v7

    goto :goto_4

    .line 351
    :cond_11
    const/16 v7, 0x2800

    .line 353
    :try_start_7
    invoke-static/range {p0 .. p0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 354
    const v7, 0x19000

    .line 356
    :cond_12
    const-wide/16 v8, 0x0

    .line 358
    if-eqz p5, :cond_19

    .line 359
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 360
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v8

    move-wide/from16 v20, v8

    .line 363
    :goto_5
    const/4 v5, 0x1

    new-array v0, v5, [Z

    move-object/from16 v25, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v25, v5

    .line 366
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ltqt/weibo/cn/tqtsdk/b/b/d$3;

    move-object/from16 v0, p7

    invoke-direct {v10, v0}, Ltqt/weibo/cn/tqtsdk/b/b/d$3;-><init>(Ltqt/weibo/cn/tqtsdk/b/b/a;)V

    new-instance v11, Ltqt/weibo/cn/tqtsdk/b/b/d$4;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v11, v4, v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/b/b/d$4;-><init>(Ltqt/weibo/cn/tqtsdk/b/b/e;Ljava/lang/String;Ljava/net/HttpURLConnection;[Z)V

    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_15

    const/4 v5, 0x1

    .line 421
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    .line 366
    invoke-static/range {v5 .. v14}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$a;Ltqt/weibo/cn/tqtsdk/kit/b/p$b;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 423
    const/4 v5, 0x0

    aget-boolean v5, v25, v5

    if-eqz v5, :cond_13

    .line 425
    const/4 v5, 0x0

    new-array v8, v5, [B

    .line 426
    if-eqz p5, :cond_16

    .line 427
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;Ljava/io/File;)V

    .line 435
    :goto_7
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc8

    move-object/from16 v5, p1

    move-object/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 438
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 450
    :cond_13
    if-eqz v24, :cond_14

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 453
    :cond_14
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/InputStream;)V

    .line 454
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/OutputStream;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 366
    :cond_15
    const/4 v5, 0x0

    goto :goto_6

    .line 430
    :cond_16
    :try_start_8
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v8

    goto :goto_7

    .line 441
    :catch_2
    move-exception v5

    move-object v10, v6

    move-object v11, v8

    move-object v12, v7

    move-object v13, v9

    .line 443
    :goto_8
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 444
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 446
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 450
    if-eqz v24, :cond_17

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 453
    :cond_17
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/InputStream;)V

    .line 454
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/OutputStream;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 450
    :catchall_0
    move-exception v4

    move-object v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    :goto_9
    if-eqz v24, :cond_18

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 453
    :cond_18
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    const/4 v6, 0x1

    aput-object v17, v5, v6

    invoke-static {v5}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/InputStream;)V

    .line 454
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/OutputStream;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    invoke-static {v5}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V

    throw v4

    .line 431
    :catch_3
    move-exception v5

    goto/16 :goto_7

    .line 450
    :catchall_1
    move-exception v4

    move-object v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    goto :goto_9

    :catchall_2
    move-exception v4

    move-object v15, v6

    move-object/from16 v16, v8

    goto :goto_9

    :catchall_3
    move-exception v4

    move-object v15, v7

    move-object/from16 v16, v8

    goto :goto_9

    :catchall_4
    move-exception v4

    goto :goto_9

    :catchall_5
    move-exception v4

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    goto :goto_9

    .line 441
    :catch_4
    move-exception v5

    move-object v10, v6

    move-object v11, v8

    move-object v12, v7

    move-object/from16 v13, v18

    goto :goto_8

    :catch_5
    move-exception v5

    move-object v10, v6

    move-object v11, v8

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_8

    :catch_6
    move-exception v5

    move-object v10, v7

    move-object v11, v8

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_8

    :catch_7
    move-exception v5

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    goto/16 :goto_8

    :cond_19
    move-wide/from16 v20, v8

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v4, p6

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    array-length v2, p1

    .line 462
    const/4 v1, 0x0

    .line 463
    const/16 v0, 0x2000

    move v3, v1

    move v1, v2

    move v2, v3

    .line 464
    :goto_0
    if-lez v1, :cond_1

    .line 465
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 468
    :cond_0
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 469
    add-int/2addr v2, v0

    .line 470
    sub-int/2addr v1, v0

    goto :goto_0

    .line 472
    :cond_1
    return-void
.end method


.method public run()V
    .locals 9

    .prologue
    .line 477
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->a:Landroid/content/Context;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->d:Ljava/lang/String;

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->e:[B

    iget v3, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->f:I

    iget-boolean v4, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->g:Z

    iget-object v5, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->h:Ljava/io/File;

    iget-object v6, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->i:Ltqt/weibo/cn/tqtsdk/b/b/e;

    iget-object v7, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->j:Ltqt/weibo/cn/tqtsdk/b/b/a;

    iget-boolean v8, p0, Ltqt/weibo/cn/tqtsdk/b/b/d;->k:Z

    invoke-static/range {v0 .. v8}, Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V

    .line 479
    return-void
.end method
