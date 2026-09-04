.class public Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
.super Ljava/lang/Object;
.source "JsonMappingException.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/JsonMappingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


.field private static final serialVersionUID:J = 0x2L


.field protected _desc:Ljava/lang/String;

.field protected _fieldName:Ljava/lang/String;

.field protected transient _from:Ljava/lang/Object;

.field protected _index:I


.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    .line 84
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    .line 95
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    .line 96
    iput p2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    .line 87
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not pass null fieldName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    .line 92
    return-void
.end method


.method public getDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 120
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_desc:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 124
    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :goto_0
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :goto_1
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_desc:Ljava/lang/String;

    .line 151
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_desc:Ljava/lang/String;

    return-object v3

    .line 126
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    move-object v0, v3

    .line 131
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    if-ltz v3, :cond_5

    .line 144
    iget v3, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 146
    :cond_5
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    return v0
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_desc:Ljava/lang/String;

    return-void
.end method

.method setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-void
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "ix"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->getDescription()Ljava/lang/String;

    .line 168
    return-object p0
.end method
