.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static consume(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    .local v0, "instream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static consumeQuietly(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 67
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const-string v3, "Entity"

    invoke-static {p0, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 161
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 162
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 163
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 168
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_0
    return-object v0
.end method

.method public static getContentMimeType(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const-string v2, "Entity"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "mimeType":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 189
    .local v1, "values":[Lorg/apache/http/HeaderElement;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 190
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .end local v1    # "values":[Lorg/apache/http/HeaderElement;
    :cond_0
    return-object v0
.end method

.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string v6, "Entity"

    invoke-static {p0, v6}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 123
    .local v2, "instream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 124
    const/4 v5, 0x0

    .line 141
    :goto_0
    return-object v5

    .line 127
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    const-string v6, "HTTP entity too large to be buffered in memory"

    invoke-static {v5, v6}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 129
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    .line 130
    .local v1, "i":I
    if-gez v1, :cond_2

    .line 131
    const/16 v1, 0x1000

    .line 133
    :cond_2
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 134
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v5, 0x1000

    new-array v4, v5, [B

    .line 136
    .local v4, "tmp":[B
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "l":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 137
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 141
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "i":I
    .end local v3    # "l":I
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    .line 139
    .restart local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "i":I
    .restart local v3    # "l":I
    .restart local v4    # "tmp":[B
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 141
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 14
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 213
    const-string v10, "Entity"

    invoke-static {p0, v10}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 215
    .local v5, "instream":Ljava/io/InputStream;
    if-nez v5, :cond_0

    .line 216
    const/4 v9, 0x0

    .line 249
    :goto_0
    return-object v9

    .line 219
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    const-string v10, "HTTP entity too large to be buffered in memory"

    invoke-static {v9, v10}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 221
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    long-to-int v4, v10

    .line 222
    .local v4, "i":I
    if-gez v4, :cond_2

    .line 223
    const/16 v4, 0x1000

    .line 225
    :cond_2
    const/4 v1, 0x0

    .line 227
    .local v1, "charset":Ljava/nio/charset/Charset;
    :try_start_1
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    .line 228
    .local v2, "contentType":Lorg/apache/http/entity/ContentType;
    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v2}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 234
    :cond_3
    if-nez v1, :cond_4

    .line 235
    move-object v1, p1

    .line 237
    :cond_4
    if-nez v1, :cond_5

    .line 238
    :try_start_2
    sget-object v1, Lorg/apache/http/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    .line 240
    :cond_5
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 241
    .local v7, "reader":Ljava/io/Reader;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 242
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v9, 0x400

    new-array v8, v9, [C

    .line 244
    .local v8, "tmp":[C
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "l":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    .line 245
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 249
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "contentType":Lorg/apache/http/entity/ContentType;
    .end local v4    # "i":I
    .end local v6    # "l":I
    .end local v7    # "reader":Ljava/io/Reader;
    .end local v8    # "tmp":[C
    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9

    .line 231
    .restart local v1    # "charset":Ljava/nio/charset/Charset;
    .restart local v4    # "i":I
    :catch_0
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    :try_start_3
    new-instance v9, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v3}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 247
    .end local v3    # "ex":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v2    # "contentType":Lorg/apache/http/entity/ContentType;
    .restart local v6    # "l":I
    .restart local v7    # "reader":Ljava/io/Reader;
    .restart local v8    # "tmp":[C
    :cond_6
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 249
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static updateEntity(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "Response"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 108
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 109
    return-void
.end method
