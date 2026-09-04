.class public Lcom/fasterxml/jackson/databind/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;,
        Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;
    }
.end annotation


.field private static final EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private static final NO_STRINGS:[Ljava/lang/String;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field private static final serialVersionUID:J = 0x1L


.field private final _hashCode:I

.field private final _names:[Ljava/lang/String;

.field private final _types:[Lcom/fasterxml/jackson/databind/JavaType;

.field private final _unboundVariables:[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 18
    new-array v0, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V
    .locals 6
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "uvars"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .end local p1    # "names":[Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    .line 54
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .end local p2    # "types":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatching names ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), types ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 60
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    .line 63
    iput v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    .line 64
    return-void
.end method

.method public static create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 7
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;->paramsFor1(Ljava/lang/Class;)[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 123
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v1, :cond_0

    move v0, v2

    .line 124
    .local v0, "varLen":I
    :goto_0
    if-eq v0, v6, :cond_1

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 1 type parameter: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "varLen":I
    :cond_0
    array-length v0, v1

    goto :goto_0

    .line 128
    .restart local v0    # "varLen":I
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v4, v6, [Ljava/lang/String;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-array v5, v6, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v5, v2

    const/4 v2, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v3
.end method

.method public static create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 8
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeArg2"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;->paramsFor2(Ljava/lang/Class;)[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 136
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v1, :cond_0

    move v0, v2

    .line 137
    .local v0, "varLen":I
    :goto_0
    if-eq v0, v7, :cond_1

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 2 type parameters: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    .end local v0    # "varLen":I
    :cond_0
    array-length v0, v1

    goto :goto_0

    .line 141
    .restart local v0    # "varLen":I
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v4, v7, [Ljava/lang/String;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v5, v1, v6

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    new-array v5, v7, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v5, v2

    aput-object p2, v5, v6

    const/4 v2, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v3
.end method

.method public static create(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    .local v0, "types":[Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    return-object v1

    .line 84
    .end local v0    # "types":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/databind/JavaType;

    move-object v0, v1

    goto :goto_0
.end method

.method public static create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 8
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 91
    if-nez p1, :cond_2

    .line 92
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 99
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 101
    .local v3, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_3

    .line 102
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 111
    .local v2, "names":[Ljava/lang/String;
    :cond_1
    array-length v4, v2

    array-length v5, p1

    if-eq v4, v5, :cond_5

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not create TypeBindings for class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type parameter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v4, p1

    if-ne v4, v7, :cond_4

    const-string v4, ""

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": class expects "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    array-length v4, p1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    aget-object v4, p1, v5

    invoke-static {p0, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    .line 116
    :goto_2
    return-object v4

    .line 97
    :pswitch_1
    aget-object v4, p1, v5

    aget-object v5, p1, v7

    invoke-static {p0, v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    goto :goto_2

    .line 104
    .restart local v3    # "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_3
    array-length v1, v3

    .line 105
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    .line 106
    .restart local v2    # "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_1

    .line 107
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 112
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_4
    const-string v4, "s"

    goto :goto_1

    .line 116
    :cond_5
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    goto :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createIfNeeded(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 7
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 153
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v1, :cond_0

    move v0, v3

    .line 154
    .local v0, "varLen":I
    :goto_0
    if-nez v0, :cond_1

    .line 155
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 161
    :goto_1
    return-object v2

    .line 153
    .end local v0    # "varLen":I
    :cond_0
    array-length v0, v1

    goto :goto_0

    .line 157
    .restart local v0    # "varLen":I
    :cond_1
    if-eq v0, v6, :cond_2

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 1 type parameter: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v4, v6, [Ljava/lang/String;

    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-array v5, v6, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v5, v3

    const/4 v3, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createIfNeeded(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 8
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 173
    .local v3, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    .line 174
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 190
    :goto_0
    return-object v4

    .line 176
    :cond_1
    if-nez p1, :cond_2

    .line 177
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 179
    :cond_2
    array-length v1, v3

    .line 180
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    .line 181
    .local v2, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 182
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_3
    array-length v4, v2

    array-length v5, p1

    if-eq v4, v5, :cond_5

    .line 186
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not create TypeBindings for class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " type parameter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v4, p1

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    const-string v4, ""

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": class expects "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const-string v4, "s"

    goto :goto_2

    .line 190
    :cond_5
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v0
.end method


.method public asKey(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    iget v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;-><init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 337
    if-ne p1, p0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v4

    .line 338
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 339
    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 340
    .local v2, "other":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v1, v6

    .line 341
    .local v1, "len":I
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v6

    if-eq v1, v6, :cond_4

    move v4, v5

    .line 342
    goto :goto_0

    .line 344
    :cond_4
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 345
    .local v3, "otherTypes":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 346
    aget-object v6, v3, v0

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 347
    goto :goto_0

    .line 345
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v1, v5

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 219
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v3, v5, v0

    .line 221
    .local v3, "t":Lcom/fasterxml/jackson/databind/JavaType;
    instance-of v5, v3, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 222
    check-cast v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 223
    .local v2, "rrt":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->getSelfReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 224
    .local v4, "t2":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v4, :cond_0

    .line 225
    move-object v3, v4

    .line 241
    .end local v2    # "rrt":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    .end local v3    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v4    # "t2":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    :goto_1
    return-object v3

    .line 218
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getBoundName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 257
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 265
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasUnbound(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    array-length v0, v1

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 288
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x1

    .line 293
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    sget-object p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 75
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_1
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 317
    const-string v4, "<>"

    .line 330
    :goto_0
    return-object v4

    .line 319
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v1, v4

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 322
    if-lez v0, :cond_1

    .line 323
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    .end local v3    # "sig":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected typeParameterArray()[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 201
    .local v0, "len":I
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 203
    .local v1, "names":[Ljava/lang/String;
    :goto_1
    aput-object p1, v1, v0

    .line 204
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {v2, v3, v4, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v2

    .line 200
    .end local v0    # "len":I
    .end local v1    # "names":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_0

    .line 201
    .restart local v0    # "len":I
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    goto :goto_1
.end method
