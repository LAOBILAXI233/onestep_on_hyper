.class public Lcom/fasterxml/jackson/core/JsonGenerationException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "JsonGenerationException.java"


.field private static final serialVersionUID:J = 0x7bL


.field protected transient _processor:Lcom/fasterxml/jackson/core/JsonGenerator;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 48
    const/4 v0, 0x0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 49
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .param p3, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 57
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 42
    return-void
.end method


.method public getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;->getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public withGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/JsonGenerationException;
    .locals 0
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 68
    return-object p0
.end method
