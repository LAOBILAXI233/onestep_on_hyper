.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

.implements Lorg/apache/http/ConnectionReuseStrategy;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 183
    .local v0, "status":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1
    .param p1, "hit"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 178
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 75
    const-string v11, "HTTP response"

    invoke-static {p1, v11}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string v11, "HTTP context"

    invoke-static {p2, v11}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    .line 81
    .local v10, "ver":Lorg/apache/http/ProtocolVersion;
    const-string v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 82
    .local v7, "teh":Lorg/apache/http/Header;
    if-eqz v7, :cond_0

    .line 83
    const-string v11, "chunked"

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 84
    const/4 v11, 0x0

    .line 164
    :goto_0
    return v11

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 88
    const-string v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 90
    .local v1, "clhs":[Lorg/apache/http/Header;
    array-length v11, v1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 91
    const/4 v11, 0x0

    aget-object v0, v1, v11

    .line 93
    .local v0, "clh":Lorg/apache/http/Header;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    .local v2, "contentLen":I
    if-gez v2, :cond_2

    .line 95
    const/4 v11, 0x0

    goto :goto_0

    .line 97
    .end local v2    # "contentLen":I
    :catch_0
    move-exception v3

    .line 98
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_0

    .line 101
    .end local v0    # "clh":Lorg/apache/http/Header;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 109
    .end local v1    # "clhs":[Lorg/apache/http/Header;
    :cond_2
    const-string v11, "Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 110
    .local v4, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 111
    const-string v11, "Proxy-Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v4

    .line 137
    :cond_3
    invoke-interface {v4}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 139
    :try_start_1
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v8

    .line 140
    .local v8, "ti":Lorg/apache/http/TokenIterator;
    const/4 v5, 0x0

    .line 141
    .local v5, "keepalive":Z
    :cond_4
    :goto_1
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 142
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "token":Ljava/lang/String;
    const-string v11, "Close"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 144
    const/4 v11, 0x0

    goto :goto_0

    .line 145
    :cond_5
    const-string v11, "Keep-Alive"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_4

    .line 147
    const/4 v5, 0x1

    goto :goto_1

    .line 150
    .end local v9    # "token":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 152
    const/4 v11, 0x1

    goto :goto_0

    .line 156
    .end local v5    # "keepalive":Z
    .end local v8    # "ti":Lorg/apache/http/TokenIterator;
    :catch_1
    move-exception v6

    .line 159
    .local v6, "px":Lorg/apache/http/ParseException;
    const/4 v11, 0x0

    goto :goto_0

    .line 164
    .end local v6    # "px":Lorg/apache/http/ParseException;
    :cond_7
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v10, v11}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_0
.end method
