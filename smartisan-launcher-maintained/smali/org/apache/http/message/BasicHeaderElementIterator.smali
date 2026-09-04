.class public Lorg/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

.implements Lorg/apache/http/HeaderElementIterator;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private currentElement:Lorg/apache/http/HeaderElement;

.field private cursor:Lorg/apache/http/message/ParserCursor;

.field private final headerIt:Lorg/apache/http/HeaderIterator;

.field private final parser:Lorg/apache/http/message/HeaderValueParser;


.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 1
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 68
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V
    .locals 1
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;
    .param p2, "parser"    # Lorg/apache/http/message/HeaderValueParser;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 53
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 54
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 62
    const-string v0, "Header iterator"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HeaderIterator;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    .line 63
    const-string v0, "Parser"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/HeaderValueParser;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    .line 64
    return-void
.end method

.method private bufferHeaderValue()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 73
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 74
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 75
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 77
    .local v0, "h":Lorg/apache/http/Header;
    instance-of v2, v0, Lorg/apache/http/FormattedHeader;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 78
    check-cast v2, Lorg/apache/http/FormattedHeader;

    invoke-interface {v2}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 79
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 80
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    check-cast v0, Lorg/apache/http/FormattedHeader;

    .end local v0    # "h":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v0    # "h":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 85
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 86
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    goto :goto_0
.end method

.method private parseNextElement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v1, :cond_6

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 102
    :cond_3
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    if-eqz v1, :cond_0

    .line 104
    :cond_4
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 106
    .local v0, "e":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 108
    :cond_5
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 120
    .end local v0    # "e":Lorg/apache/http/HeaderElement;
    :cond_6
    return-void

    .line 113
    :cond_7
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iput-object v4, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    .line 116
    iput-object v4, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_0
.end method


.method public hasNext()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/apache/http/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-nez v1, :cond_0

    .line 131
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more header elements available"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 139
    .local v0, "element":Lorg/apache/http/HeaderElement;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    .line 140
    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
