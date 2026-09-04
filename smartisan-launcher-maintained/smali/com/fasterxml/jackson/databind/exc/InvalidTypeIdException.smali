.class public Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidTypeIdException.java"


.field private static final serialVersionUID:J = 0x1L


.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _typeId:Ljava/lang/String;


.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "typeId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 37
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->_typeId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "typeId"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object v0
.end method


.method public getBaseType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->_typeId:Ljava/lang/String;

    return-object v0
.end method
