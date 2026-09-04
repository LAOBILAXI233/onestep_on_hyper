.class public Lcom/fasterxml/jackson/core/io/JsonEOFException;
.super Lcom/fasterxml/jackson/core/JsonParseException;
.source "JsonEOFException.java"


.field private static final serialVersionUID:J = 0x1L


.field protected final _token:Lcom/fasterxml/jackson/core/JsonToken;


.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "token"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/JsonEOFException;->_token:Lcom/fasterxml/jackson/core/JsonToken;

    .line 28
    return-void
.end method


.method public getTokenBeingDecoded()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonEOFException;->_token:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method
