.class public final Lcom/fasterxml/jackson/core/json/JsonReadContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "JsonReadContext.java"


.field protected _child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected _dups:Lcom/fasterxml/jackson/core/json/DupDetector;

.field protected _lineNr:I

.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;


.method public constructor <init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V
    .locals 1
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .param p2, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;
    .param p3, "type"    # I
    .param p4, "lineNr"    # I
    .param p5, "colNr"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 60
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    .line 61
    iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    .line 62
    iput p4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    .line 63
    iput p5, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 65
    return-void
.end method

.method private _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
    .locals 4
    .param p1, "dd"    # Lcom/fasterxml/jackson/core/json/DupDetector;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "src":Ljava/lang/Object;
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    instance-of v2, v0, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;

    .end local v0    # "src":Ljava/lang/Object;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .restart local v0    # "src":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .end local v0    # "src":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static createRootContext(IILcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 6
    .param p0, "lineNr"    # I
    .param p1, "colNr"    # I
    .param p2, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    .line 107
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V

    return-object v0
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 6
    .param p0, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V

    return-object v0
.end method


.method public clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentValue:Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    return-object v0
.end method

.method public createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 6
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v3, 0x1

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 116
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 122
    :goto_1
    return-object v0

    .line 117
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    goto :goto_0

    .line 120
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V

    goto :goto_1
.end method

.method public createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 7
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v3, 0x2

    .line 126
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 127
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;-><init>(Lcom/fasterxml/jackson/core/json/JsonReadContext;Lcom/fasterxml/jackson/core/json/DupDetector;III)V

    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_child:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-object v6, v0

    .line 133
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .local v6, "ctxt":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 128
    .end local v6    # "ctxt":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    goto :goto_0

    .line 132
    .restart local v0    # "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->reset(III)V

    move-object v6, v0

    .line 133
    .restart local v6    # "ctxt":Ljava/lang/Object;
    goto :goto_1
.end method

.method public expectComma()Z
    .locals 2

    .prologue
    .line 192
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 193
    .local v0, "ix":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getDupDetector()Lcom/fasterxml/jackson/core/json/DupDetector;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    return-object v0
.end method

.method public getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 173
    const-wide/16 v2, -0x1

    .line 174
    .local v2, "totalChars":J
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v4, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected reset(III)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_index:I

    .line 70
    iput p2, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_lineNr:I

    .line 71
    iput p3, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_columnNr:I

    .line 72
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentValue:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V

    .line 77
    :cond_0
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentValue:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 233
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 224
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 227
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 239
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public withDupDetector(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonReadContext;
    .locals 0
    .param p1, "dups"    # Lcom/fasterxml/jackson/core/json/DupDetector;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonReadContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    .line 87
    return-object p0
.end method
