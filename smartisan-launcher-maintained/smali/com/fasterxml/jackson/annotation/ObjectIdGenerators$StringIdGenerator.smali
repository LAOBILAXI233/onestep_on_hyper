.class public final Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$StringIdGenerator;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.source "ObjectIdGenerators.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/ObjectIdGenerators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringIdGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$StringIdGenerator;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;-><init>(Ljava/lang/Class;)V

    .line 197
    return-void
.end method


.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    instance-of v0, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$StringIdGenerator;

    return v0
.end method

.method public forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "scope":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public bridge synthetic generateId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$StringIdGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "forPojo"    # Ljava/lang/Object;

    .prologue
    .line 213
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    return-object p0
.end method
