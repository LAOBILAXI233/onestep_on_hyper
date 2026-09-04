.class public abstract Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.super Ljava/lang/Object;
.source "ConfigOverride.java"


.field protected _format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

.field protected _ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

.field protected _include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected _isIgnoredType:Ljava/lang/Boolean;


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 45
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 46
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 47
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_isIgnoredType:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_isIgnoredType:Ljava/lang/Boolean;

    .line 48
    return-void
.end method


.method public getFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object v0
.end method

.method public getIgnorals()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0
.end method

.method public getInclude()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getIsIgnoredType()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->_isIgnoredType:Ljava/lang/Boolean;

    return-object v0
.end method
