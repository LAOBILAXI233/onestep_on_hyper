.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

.implements Lorg/apache/http/entity/ContentLengthStrategy;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;


.field private final implicitLen:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "implicitLen"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    .line 68
    return-void
.end method


.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 14
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 79
    const-string v12, "HTTP message"

    invoke-static {p1, v12}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v12, "Transfer-Encoding"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 84
    .local v9, "transferEncodingHeader":Lorg/apache/http/Header;
    if-eqz v9, :cond_3

    .line 87
    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, "encodings":[Lorg/apache/http/HeaderElement;
    array-length v7, v1

    .line 95
    .local v7, "len":I
    const-string v12, "identity"

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v2, v10

    .line 123
    .end local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v7    # "len":I
    :cond_0
    :goto_0
    return-wide v2

    .line 88
    :catch_0
    move-exception v8

    .line 89
    .local v8, "px":Lorg/apache/http/ParseException;
    new-instance v10, Lorg/apache/http/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Transfer-Encoding header value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 97
    .end local v8    # "px":Lorg/apache/http/ParseException;
    .restart local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    .restart local v7    # "len":I
    :cond_1
    if-lez v7, :cond_2

    const-string v12, "chunked"

    add-int/lit8 v13, v7, -0x1

    aget-object v13, v1, v13

    invoke-interface {v13}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 99
    const-wide/16 v2, -0x2

    goto :goto_0

    :cond_2
    move-wide v2, v10

    .line 101
    goto :goto_0

    .line 104
    .end local v1    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v7    # "len":I
    :cond_3
    const-string v12, "Content-Length"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 105
    .local v0, "contentLengthHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_5

    .line 106
    const-wide/16 v2, -0x1

    .line 107
    .local v2, "contentlen":J
    const-string v12, "Content-Length"

    invoke-interface {p1, v12}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    .line 108
    .local v5, "headers":[Lorg/apache/http/Header;
    array-length v12, v5

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 109
    aget-object v4, v5, v6

    .line 111
    .local v4, "header":Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 117
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-gez v12, :cond_0

    move-wide v2, v10

    .line 120
    goto :goto_0

    .line 113
    .restart local v4    # "header":Lorg/apache/http/Header;
    :catch_1
    move-exception v12

    .line 108
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 123
    .end local v2    # "contentlen":J
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v5    # "headers":[Lorg/apache/http/Header;
    .end local v6    # "i":I
    :cond_5
    iget v10, p0, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    int-to-long v2, v10

    goto :goto_0
.end method
