.class public final Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
.super Ljava/lang/Object;
.source "ClassUtil.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ctor"
.end annotation


.field private _annotations:[Ljava/lang/annotation/Annotation;

.field public final _ctor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private _paramAnnotations:[[Ljava/lang/annotation/Annotation;

.field private _paramCount:I


.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1260
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 1261
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 1262
    return-void
.end method


.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 1284
    .local v0, "result":[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1286
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_annotations:[Ljava/lang/annotation/Annotation;

    .line 1288
    :cond_0
    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getParamCount()I
    .locals 2

    .prologue
    .line 1269
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 1270
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 1271
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    .line 1272
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 1274
    :cond_0
    return v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 1294
    .local v0, "result":[[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1296
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramAnnotations:[[Ljava/lang/annotation/Annotation;

    .line 1298
    :cond_0
    return-object v0
.end method
