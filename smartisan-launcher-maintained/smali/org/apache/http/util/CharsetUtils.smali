.class public Lorg/apache/http/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-object v1

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    goto :goto_0
.end method
