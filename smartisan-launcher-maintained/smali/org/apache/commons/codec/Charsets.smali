.class public Lorg/apache/commons/codec/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_16:Ljava/nio/charset/Charset;

.field public static final UTF_16BE:Ljava/nio/charset/Charset;

.field public static final UTF_16LE:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 106
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 116
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 125
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 134
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 143
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public static toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 0
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 74
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    .end local p0    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    return-object p0
.end method
