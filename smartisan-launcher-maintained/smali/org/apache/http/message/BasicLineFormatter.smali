.class public Lorg/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

.implements Lorg/apache/http/message/LineFormatter;


.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


.field public static final DEFAULT:Lorg/apache/http/message/BasicLineFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/http/message/BasicLineFormatter;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    .line 65
    new-instance v0, Lorg/apache/http/message/BasicLineFormatter;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static formatHeader(Lorg/apache/http/Header;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "header"    # Lorg/apache/http/Header;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .end local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method

.method public static formatProtocolVersion(Lorg/apache/http/ProtocolVersion;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Lorg/apache/http/ProtocolVersion;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .end local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method

.method public static formatRequestLine(Lorg/apache/http/RequestLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "reqline"    # Lorg/apache/http/RequestLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .end local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method

.method public static formatStatusLine(Lorg/apache/http/StatusLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "statline"    # Lorg/apache/http/StatusLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .end local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1    # "formatter":Lorg/apache/http/message/LineFormatter;
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/http/message/BasicLineFormatter;

    goto :goto_0
.end method


.method public appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 111
    const-string v2, "Protocol version"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-object v1, p1

    .line 114
    .local v1, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v0

    .line 115
    .local v0, "len":I
    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    .end local v1    # "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 121
    .restart local v1    # "result":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 122
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 123
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 124
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 125
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 127
    return-object v1

    .line 118
    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    goto :goto_0
.end method

.method protected doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 302
    invoke-interface {p2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, 0x2

    .line 306
    .local v0, "len":I
    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 309
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 311
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 312
    const-string v3, ": "

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 313
    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 316
    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    .prologue
    const/16 v5, 0x20

    .line 183
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "method":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v4

    add-int v0, v3, v4

    .line 189
    .local v0, "len":I
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 191
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 193
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 195
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    .line 196
    return-void
.end method

.method protected doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    .prologue
    const/16 v3, 0x20

    .line 239
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 241
    .local v0, "len":I
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 247
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    .line 248
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 249
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 251
    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 254
    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .prologue
    .line 141
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 277
    const-string v1, "Header"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    instance-of v1, p2, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_0

    .line 282
    check-cast p2, Lorg/apache/http/FormattedHeader;

    .end local p2    # "header":Lorg/apache/http/Header;
    invoke-interface {p2}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 287
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    return-object v0

    .line 284
    .end local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 285
    .restart local v0    # "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V

    goto :goto_0
.end method

.method public formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    .prologue
    .line 165
    const-string v1, "Request line"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 167
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V

    .line 169
    return-object v0
.end method

.method public formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    .prologue
    .line 220
    const-string v1, "Status line"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v0

    .line 222
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V

    .line 224
    return-object v0
.end method

.method protected initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2
    .param p1, "charBuffer"    # Lorg/apache/http/util/CharArrayBuffer;

    .prologue
    .line 80
    move-object v0, p1

    .line 81
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_0
.end method
