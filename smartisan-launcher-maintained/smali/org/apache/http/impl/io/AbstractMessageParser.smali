.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

.implements Lorg/apache/http/io/HttpMessageParser;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageParser",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


.field private final headerLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private message:Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final messageConstraints:Lorg/apache/http/config/MessageConstraints;

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private state:I


.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/config/MessageConstraints;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "lineParser"    # Lorg/apache/http/message/LineParser;
    .param p3, "constraints"    # Lorg/apache/http/config/MessageConstraints;

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageParser;, "Lorg/apache/http/impl/io/AbstractMessageParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 114
    if-eqz p2, :cond_0

    .end local p2    # "lineParser":Lorg/apache/http/message/LineParser;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 115
    if-eqz p3, :cond_1

    .end local p3    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :goto_1
    iput-object p3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 118
    return-void

    .line 114
    .restart local p2    # "lineParser":Lorg/apache/http/message/LineParser;
    .restart local p3    # "constraints":Lorg/apache/http/config/MessageConstraints;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0

    .line 115
    .end local p2    # "lineParser":Lorg/apache/http/message/LineParser;
    :cond_1
    sget-object p3, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageParser;, "Lorg/apache/http/impl/io/AbstractMessageParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 91
    invoke-static {p3}, Lorg/apache/http/params/HttpParamConfig;->getMessageConstraints(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    .line 92
    if-eqz p2, :cond_0

    .end local p2    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 95
    return-void

    .line 92
    .restart local p2    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p2, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .locals 2
    .param p0, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "headerLines":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/util/CharArrayBuffer;>;"
    if-eqz p3, :cond_0

    .end local p3    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v1

    return-object v1

    .restart local p3    # "parser":Lorg/apache/http/message/LineParser;
    :cond_0
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;
    .locals 10
    .param p0, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            "II",
            "Lorg/apache/http/message/LineParser;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/util/CharArrayBuffer;",
            ">;)[",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    .local p4, "headerLines":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/util/CharArrayBuffer;>;"
    const-string v8, "Session input buffer"

    invoke-static {p0, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    const-string v8, "Line parser"

    invoke-static {p3, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string v8, "Header line list"

    invoke-static {p4, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "current":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v7, 0x0

    .line 187
    .local v7, "previous":Lorg/apache/http/util/CharArrayBuffer;
    :cond_0
    if-nez v2, :cond_2

    .line 188
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    .end local v2    # "current":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v8, 0x40

    invoke-direct {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 192
    .restart local v2    # "current":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v6

    .line 193
    .local v6, "l":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_3

    .line 226
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Lorg/apache/http/Header;

    .line 227
    .local v4, "headers":[Lorg/apache/http/Header;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 228
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/util/CharArrayBuffer;

    .line 230
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :try_start_0
    invoke-interface {p3, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v4    # "headers":[Lorg/apache/http/Header;
    .end local v5    # "i":I
    .end local v6    # "l":I
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 200
    .restart local v6    # "l":I
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_8

    :cond_4
    if-eqz v7, :cond_8

    .line 203
    const/4 v5, 0x0

    .line 204
    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 205
    invoke-virtual {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 206
    .local v1, "ch":C
    const/16 v8, 0x20

    if-eq v1, v8, :cond_6

    const/16 v8, 0x9

    if-eq v1, v8, :cond_6

    .line 211
    .end local v1    # "ch":C
    :cond_5
    if-lez p2, :cond_7

    invoke-virtual {v7}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    if-le v8, p2, :cond_7

    .line 213
    new-instance v8, Lorg/apache/http/MessageConstraintException;

    const-string v9, "Maximum line length limit exceeded"

    invoke-direct {v8, v9}, Lorg/apache/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    .restart local v1    # "ch":C
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 210
    goto :goto_2

    .line 215
    .end local v1    # "ch":C
    :cond_7
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 216
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 222
    .end local v5    # "i":I
    :goto_3
    if-lez p1, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, p1, :cond_0

    .line 223
    new-instance v8, Lorg/apache/http/MessageConstraintException;

    const-string v9, "Maximum header count exceeded"

    invoke-direct {v8, v9}, Lorg/apache/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 218
    :cond_8
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    move-object v7, v2

    .line 220
    const/4 v2, 0x0

    goto :goto_3

    .line 231
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4    # "headers":[Lorg/apache/http/Header;
    .restart local v5    # "i":I
    :catch_0
    move-exception v3

    .line 232
    .local v3, "ex":Lorg/apache/http/ParseException;
    new-instance v8, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 235
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "ex":Lorg/apache/http/ParseException;
    :cond_9
    return-object v4
.end method


.method public parse()Lorg/apache/http/HttpMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lorg/apache/http/impl/io/AbstractMessageParser;, "Lorg/apache/http/impl/io/AbstractMessageParser<TT;>;"
    iget v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 257
    .local v3, "st":I
    packed-switch v3, :pswitch_data_0

    .line 280
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Inconsistent parser state"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v4, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 267
    :pswitch_1
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v5}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v5

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v6}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v6

    iget-object v7, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v8, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v4, v5, v6, v7, v8}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 273
    .local v0, "headers":[Lorg/apache/http/Header;
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    invoke-interface {v4, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 274
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    .line 275
    .local v2, "result":Lorg/apache/http/HttpMessage;, "TT;"
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    .line 276
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 277
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 278
    return-object v2

    .line 261
    .end local v0    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "result":Lorg/apache/http/HttpMessage;, "TT;"
    :catch_0
    move-exception v1

    .line 262
    .local v1, "px":Lorg/apache/http/ParseException;
    new-instance v4, Lorg/apache/http/ProtocolException;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
