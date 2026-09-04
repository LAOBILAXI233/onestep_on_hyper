.class public final Ltqt/weibo/cn/tqtsdk/kit/b/p;
.super Ljava/lang/Object;
.source "StreamUtils.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltqt/weibo/cn/tqtsdk/kit/b/p$c;,
        Ltqt/weibo/cn/tqtsdk/kit/b/p$d;,
        Ltqt/weibo/cn/tqtsdk/kit/b/p$b;,
        Ltqt/weibo/cn/tqtsdk/kit/b/p$a;
    }
.end annotation


.field private static a:Ltqt/weibo/cn/tqtsdk/kit/b/p$a;

.field private static b:Ltqt/weibo/cn/tqtsdk/kit/b/p$b;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ltqt/weibo/cn/tqtsdk/kit/b/p$1;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/p$1;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a:Ltqt/weibo/cn/tqtsdk/kit/b/p$a;

    .line 24
    new-instance v0, Ltqt/weibo/cn/tqtsdk/kit/b/p$2;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/p$2;-><init>()V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/kit/b/p;->b:Ltqt/weibo/cn/tqtsdk/kit/b/p$b;

    return-void
.end method

.method public static varargs a([Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p0, :cond_1

    .line 45
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 46
    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method public static varargs a([Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 58
    if-eqz p0, :cond_1

    .line 59
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 60
    if-eqz v2, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$a;Ltqt/weibo/cn/tqtsdk/kit/b/p$b;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 12

    .prologue
    .line 114
    if-nez p3, :cond_0

    .line 115
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 117
    :cond_0
    if-nez p5, :cond_1

    .line 118
    sget-object p5, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a:Ltqt/weibo/cn/tqtsdk/kit/b/p$a;

    .line 120
    :cond_1
    if-nez p6, :cond_2

    .line 121
    sget-object p6, Ltqt/weibo/cn/tqtsdk/kit/b/p;->b:Ltqt/weibo/cn/tqtsdk/kit/b/p$b;

    .line 123
    :cond_2
    if-nez p7, :cond_3

    .line 124
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    .line 126
    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 127
    const/4 p2, 0x1

    .line 129
    :cond_4
    if-nez p8, :cond_d

    .line 130
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 134
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    new-array v6, p2, [B

    .line 144
    const/4 v2, 0x0

    .line 147
    const/4 v5, 0x0

    .line 150
    :cond_5
    :goto_1
    invoke-interface/range {p5 .. p5}, Ltqt/weibo/cn/tqtsdk/kit/b/p$a;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const/4 v2, -0x7

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 152
    const/4 v2, 0x1

    .line 213
    :goto_2
    if-eqz v2, :cond_c

    .line 214
    const/4 v2, -0x7

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 215
    const/4 v2, 0x0

    .line 221
    :goto_3
    return v2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    const/4 v3, -0x6

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 137
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    const/4 v2, 0x0

    goto :goto_3

    .line 158
    :cond_6
    :try_start_1
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 172
    const/4 v7, -0x1

    if-ne v4, v7, :cond_7

    .line 173
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move v2, v5

    .line 174
    goto :goto_2

    .line 159
    :catch_1
    move-exception v2

    .line 161
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 162
    const/4 v2, -0x3

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 163
    const/4 v2, 0x0

    goto :goto_3

    .line 164
    :catch_2
    move-exception v2

    .line 166
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    const/4 v2, -0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 168
    const/4 v2, 0x0

    goto :goto_3

    .line 176
    :cond_7
    if-eqz p4, :cond_8

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v4

    add-long/2addr v8, v10

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    .line 177
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    long-to-int v2, v2

    .line 179
    const/4 v3, 0x0

    invoke-virtual {p1, v6, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    move v2, v5

    .line 180
    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v4

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 183
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    .line 194
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v5

    .line 195
    goto :goto_2

    .line 185
    :catch_3
    move-exception v2

    .line 187
    const/4 v2, -0x5

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 188
    const/4 v2, 0x0

    goto :goto_3

    .line 189
    :catch_4
    move-exception v2

    .line 190
    const/4 v2, -0x6

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 191
    const/4 v2, 0x0

    goto :goto_3

    .line 198
    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-ltz v4, :cond_a

    move v2, v5

    .line 199
    goto/16 :goto_2

    .line 202
    :cond_a
    if-eqz p9, :cond_5

    .line 203
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long/2addr v8, v10

    long-to-int v4, v8

    .line 204
    if-ltz v2, :cond_5

    if-eq v2, v4, :cond_5

    .line 206
    rem-int/lit8 v2, v4, 0x5

    if-nez v2, :cond_b

    .line 207
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->a(I)V

    :cond_b
    move v2, v4

    goto/16 :goto_1

    .line 218
    :cond_c
    const/16 v2, 0x64

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->a(I)V

    .line 219
    const/16 v2, 0xc8

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p$b;->b(I)V

    .line 221
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v3, p8

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B
    .locals 11

    .prologue
    .line 87
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v10, v0, [[B

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    aput-object v2, v10, v0

    .line 90
    const/16 v2, 0x2800

    const/4 v5, 0x0

    new-instance v6, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;

    invoke-direct {v6, v10, v1, p3}, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;-><init>([[BLjava/io/ByteArrayOutputStream;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v9}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$a;Ltqt/weibo/cn/tqtsdk/kit/b/p$b;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/OutputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V

    .line 107
    const/4 v0, 0x0

    aget-object v0, v10, v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, v0, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B

    move-result-object v0

    return-object v0
.end method
