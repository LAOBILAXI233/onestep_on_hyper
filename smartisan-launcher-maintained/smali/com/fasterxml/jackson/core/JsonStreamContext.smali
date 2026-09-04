.class public abstract Lcom/fasterxml/jackson/core/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


.field protected static final TYPE_ARRAY:I = 0x1

.field protected static final TYPE_OBJECT:I = 0x2

.field protected static final TYPE_ROOT:I


.field protected _index:I

.field protected _type:I


.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public final getCurrentIndex()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    goto :goto_0
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEntryCount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 90
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "ROOT"

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "ARRAY"

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "OBJECT"

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final inArray()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final inObject()Z
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final inRoot()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 147
    return-void
.end method

.method public typeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    const-string v0, "root"

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "Array"

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "Object"

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
