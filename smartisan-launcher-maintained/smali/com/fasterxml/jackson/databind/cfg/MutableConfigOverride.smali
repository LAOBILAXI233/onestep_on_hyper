.class public Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
.super Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.source "MutableConfigOverride.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;)V

    .line 26
    return-void
.end method


.method protected copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V

    return-object v0
.end method

.method public setFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 34
    return-object p0
.end method

.method public setIgnorals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 44
    return-object p0
.end method

.method public setInclude(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 39
    return-object p0
.end method

.method public setIsIgnoredType(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_isIgnoredType:Ljava/lang/Boolean;

    .line 49
    return-object p0
.end method
