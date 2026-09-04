.class public final Lcom/fasterxml/jackson/databind/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"

.implements Ljava/io/Serializable;


.field private static final CLS_BOOL:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_COMPARABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_ENUM:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_INT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_LONG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field protected static final instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field private static final serialVersionUID:J = 0x1L


.field protected final _classLoader:Ljava/lang/ClassLoader;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

.field protected final _parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

.field protected final _typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 46
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 48
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 60
    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_STRING:Ljava/lang/Class;

    .line 61
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_OBJECT:Ljava/lang/Class;

    .line 63
    const-class v0, Ljava/lang/Comparable;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_COMPARABLE:Ljava/lang/Class;

    .line 64
    const-class v0, Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_CLASS:Ljava/lang/Class;

    .line 65
    const-class v0, Ljava/lang/Enum;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_ENUM:Ljava/lang/Class;

    .line 67
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_BOOL:Ljava/lang/Class;

    .line 68
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_INT:Ljava/lang/Class;

    .line 69
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_LONG:Ljava/lang/Class;

    .line 78
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_BOOL:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_INT:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_LONG:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 83
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_STRING:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 86
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_OBJECT:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 94
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_COMPARABLE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_ENUM:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 110
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_CLASS:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/util/LRUMap;)V

    .line 146
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/LRUMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance p1, Lcom/fasterxml/jackson/databind/util/LRUMap;

    .end local p1    # "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/16 v0, 0x10

    const/16 v1, 0xc8

    invoke-direct {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    .line 155
    .restart local p1    # "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 156
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeParser;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeParser;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 157
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 158
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/LRUMap;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "p"    # Lcom/fasterxml/jackson/databind/type/TypeParser;
    .param p3, "mods"    # [Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Lcom/fasterxml/jackson/databind/type/TypeParser;",
            "[",
            "Lcom/fasterxml/jackson/databind/type/TypeModifier;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance p1, Lcom/fasterxml/jackson/databind/util/LRUMap;

    .end local p1    # "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/16 v0, 0x10

    const/16 v1, 0xc8

    invoke-direct {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    .line 167
    .restart local p1    # "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 169
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/type/TypeParser;->withFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/type/TypeParser;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 170
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 171
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    .line 172
    return-void
.end method

.method private _bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 6
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeParamCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .prologue
    .local p3, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 480
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v0

    .line 481
    .local v0, "baseCount":I
    if-ne v0, p2, :cond_3

    .line 482
    if-ne p2, v5, :cond_0

    .line 483
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    .line 496
    :goto_0
    return-object v3

    .line 485
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 486
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-static {p3, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    goto :goto_0

    .line 489
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 491
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 493
    :cond_2
    invoke-static {p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    .end local v2    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    goto :goto_0
.end method

.method private _collectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 1044
    .local v1, "typeParams":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1051
    .local v0, "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v2

    return-object v2

    .line 1046
    .end local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1047
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    .restart local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1049
    .end local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange Collection type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": can not determine type parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private _mapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1018
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    .line 1019
    sget-object v5, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .local v5, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v4, v5

    .local v4, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1035
    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0

    .line 1021
    .end local v4    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    .line 1023
    .local v6, "typeParams":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1032
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange Map type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v4, v5

    .line 1026
    .restart local v4    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1028
    .end local v4    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :pswitch_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    .line 1029
    .restart local v4    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JavaType;

    .line 1030
    .restart local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private _referenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1057
    .local p1, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 1060
    .local v1, "typeParams":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1067
    .local v0, "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v2

    return-object v2

    .line 1062
    .end local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1063
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    .restart local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1065
    .end local v0    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange Reference type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": can not determine type parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 253
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 254
    check-cast p0, Ljava/lang/Class;

    .line 257
    .end local p0    # "t":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .restart local p0    # "t":Ljava/lang/reflect/Type;
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method

.method public static unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method


.method protected _constructSimple(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1083
    .local v0, "result":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    .line 1087
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_newSimpleType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected _findPrimitive(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 317
    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 326
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 319
    :cond_1
    const-string v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 320
    :cond_2
    const-string v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 321
    :cond_3
    const-string v0, "boolean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 322
    :cond_4
    const-string v0, "byte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 323
    :cond_5
    const-string v0, "char"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 324
    :cond_6
    const-string v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 325
    :cond_7
    const-string v0, "void"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 326
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_BOOL:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 1128
    :goto_0
    return-object v0

    .line 1122
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_INT:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1123
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_LONG:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1125
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_STRING:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1126
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_OBJECT:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1128
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 12
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1147
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 1149
    check-cast v7, Ljava/lang/Class;

    sget-object v8, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, p1, v7, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 1174
    .local v5, "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    if-eqz v7, :cond_9

    .line 1175
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    .line 1176
    .local v1, "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    if-nez v1, :cond_0

    .line 1177
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 1180
    .local v4, "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    invoke-virtual {v4, v5, p2, v1, p0}, Lcom/fasterxml/jackson/databind/type/TypeModifier;->modifyType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1181
    .local v6, "t":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v6, :cond_8

    .line 1182
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TypeModifier %s (of type %s) return null for type %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1152
    .end local v0    # "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v1    # "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_2

    move-object v7, p2

    .line 1153
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1, v7, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1155
    .end local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    instance-of v7, p2, Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v7, :cond_3

    .line 1157
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 1189
    .end local p2    # "type":Ljava/lang/reflect/Type;
    :goto_2
    return-object p2

    .line 1159
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v7, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_4

    move-object v7, p2

    .line 1160
    check-cast v7, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, p1, v7, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1162
    .end local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    instance-of v7, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 1163
    check-cast v7, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, p1, v7, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1165
    .end local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    instance-of v7, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_6

    move-object v7, p2

    .line 1166
    check-cast v7, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, p1, v7, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 1169
    .end local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized Type: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_7

    const-string v7, "[null]"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1186
    .restart local v0    # "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .restart local v1    # "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .restart local v5    # "resultType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v6    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_8
    move-object v5, v6

    .line 1179
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v0    # "arr$":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v1    # "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/type/TypeModifier;
    .end local v6    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_9
    move-object p2, v5

    .line 1189
    goto :goto_2
.end method

.method protected _fromArrayType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p2, "type"    # Ljava/lang/reflect/GenericArrayType;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1394
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1395
    .local v0, "elementType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-static {v0, p3}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v1

    return-object v1
.end method

.method protected _fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 17
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1199
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findWellKnownSimple(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 1200
    .local v15, "result":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v15, :cond_0

    move-object/from16 v16, v15

    .line 1277
    :goto_0
    return-object v16

    .line 1205
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1206
    :cond_1
    move-object/from16 v13, p2

    .line 1210
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v3, v13}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    check-cast v15, Lcom/fasterxml/jackson/databind/JavaType;

    .line 1211
    .restart local v15    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v15, :cond_3

    move-object/from16 v16, v15

    .line 1212
    goto :goto_0

    .line 1208
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->asKey(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "key":Ljava/lang/Object;
    goto :goto_1

    .line 1216
    .end local v13    # "key":Ljava/lang/Object;
    :cond_3
    if-nez p1, :cond_6

    .line 1217
    new-instance p1, Lcom/fasterxml/jackson/databind/type/ClassStack;

    .end local p1    # "context":Lcom/fasterxml/jackson/databind/type/ClassStack;
    invoke-direct/range {p1 .. p2}, Lcom/fasterxml/jackson/databind/type/ClassStack;-><init>(Ljava/lang/Class;)V

    .line 1231
    .restart local p1    # "context":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1232
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v15

    .line 1271
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/type/ClassStack;->resolveSelfReferences(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1274
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->hasHandlers()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v3, v13, v15}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v16, v15

    .line 1277
    goto :goto_0

    .line 1219
    :cond_6
    invoke-virtual/range {p1 .. p2}, Lcom/fasterxml/jackson/databind/type/ClassStack;->find(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ClassStack;

    move-result-object v14

    .line 1220
    .local v14, "prev":Lcom/fasterxml/jackson/databind/type/ClassStack;
    if-eqz v14, :cond_7

    .line 1222
    new-instance v16, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    .line 1223
    .local v16, "selfRef":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/fasterxml/jackson/databind/type/ClassStack;->addSelfReference(Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;)V

    goto :goto_0

    .line 1227
    .end local v16    # "selfRef":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    :cond_7
    invoke-virtual/range {p1 .. p2}, Lcom/fasterxml/jackson/databind/type/ClassStack;->child(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ClassStack;

    move-result-object p1

    goto :goto_2

    .line 1240
    .end local v14    # "prev":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1241
    const/4 v5, 0x0

    .line 1242
    .local v5, "superClass":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1250
    .local v6, "superInterfaces":[Lcom/fasterxml/jackson/databind/JavaType;
    :goto_4
    const-class v3, Ljava/util/Properties;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 1251
    sget-object v7, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    sget-object v8, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v15

    .line 1260
    :cond_9
    :goto_5
    if-nez v15, :cond_4

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v5

    move-object v12, v6

    .line 1261
    invoke-virtual/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 1262
    if-nez v15, :cond_4

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v5

    move-object v12, v6

    .line 1263
    invoke-virtual/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 1264
    if-nez v15, :cond_4

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_newSimpleType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    goto :goto_3

    .line 1245
    .end local v5    # "superClass":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "superInterfaces":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_a
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 1246
    .restart local v5    # "superClass":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .restart local v6    # "superInterfaces":[Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_4

    .line 1256
    :cond_b
    if-eqz v5, :cond_9

    .line 1257
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1, v5, v6}, Lcom/fasterxml/jackson/databind/JavaType;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    goto :goto_5
.end method

.method protected _fromParamType(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p2, "ptype"    # Ljava/lang/reflect/ParameterizedType;
    .param p3, "parentBindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1358
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 1362
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_ENUM:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 1363
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_ENUM:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 1389
    :goto_0
    return-object v6

    .line 1365
    :cond_0
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_COMPARABLE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    .line 1366
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_COMPARABLE:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1368
    :cond_1
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CLS_CLASS:Ljava/lang/Class;

    if-ne v5, v6, :cond_2

    .line 1369
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_CLASS:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1375
    :cond_2
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1376
    .local v0, "args":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_3

    const/4 v3, 0x0

    .line 1380
    .local v3, "paramCount":I
    :goto_1
    if-nez v3, :cond_4

    .line 1381
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 1389
    .local v2, "newBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    goto :goto_0

    .line 1376
    .end local v2    # "newBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .end local v3    # "paramCount":I
    :cond_3
    array-length v3, v0

    goto :goto_1

    .line 1383
    .restart local v3    # "paramCount":I
    :cond_4
    new-array v4, v3, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 1384
    .local v4, "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 1385
    aget-object v6, v0, v1

    invoke-virtual {p0, p1, v6, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    aput-object v6, v4, v1

    .line 1384
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1387
    :cond_5
    invoke-static {v5, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    .restart local v2    # "newBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    goto :goto_2
.end method

.method protected _fromVariable(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1401
    .local p2, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1403
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_0

    .line 1414
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v2

    .line 1408
    .restart local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->hasUnbound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1409
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    goto :goto_0

    .line 1411
    :cond_1
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p3

    .line 1413
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1414
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_0
.end method

.method protected _fromWellKnownClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p4, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 1313
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p3

    .line 1317
    :cond_0
    const-class v0, Ljava/util/Map;

    if-ne p2, v0, :cond_1

    .line 1318
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_mapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1331
    :goto_0
    return-object v0

    .line 1320
    :cond_1
    const-class v0, Ljava/util/Collection;

    if-ne p2, v0, :cond_2

    .line 1321
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_collectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0

    .line 1324
    :cond_2
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne p2, v0, :cond_3

    .line 1325
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_referenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0

    .line 1331
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _fromWellKnownInterface(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p4, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1339
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v1, p5

    .line 1341
    .local v1, "intCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1342
    aget-object v3, p5, v0

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/fasterxml/jackson/databind/JavaType;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1343
    .local v2, "result":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_0

    .line 1347
    .end local v2    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    return-object v2

    .line 1341
    .restart local v2    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1347
    .end local v2    # "result":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected _fromWildcard(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p2, "type"    # Ljava/lang/reflect/WildcardType;
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 1424
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected _newSimpleType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method protected _resolveSuperClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "parentBindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1283
    .local v0, "parent":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 1284
    const/4 v1, 0x0

    .line 1286
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method protected _resolveSuperInterfaces(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .param p3, "parentBindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 1291
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getGenericInterfaces(Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1292
    .local v4, "types":[Ljava/lang/reflect/Type;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_2

    .line 1293
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 1301
    :cond_1
    return-object v2

    .line 1295
    :cond_2
    array-length v1, v4

    .line 1296
    .local v1, "len":I
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 1297
    .local v2, "resolved":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1298
    aget-object v3, v4, v0

    .line 1299
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, v3, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    aput-object v5, v2, v0

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected _unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 1109
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_OBJECT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    return-object v0
.end method

.method protected classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-static {p1, v0, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 225
    return-void
.end method

.method public constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 1
    .param p1, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructArrayType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;"
        }
    .end annotation

    .prologue
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 681
    invoke-virtual {p0, v1, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 3
    .param p2, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->createIfNeeded(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 738
    .local v0, "type":Lcom/fasterxml/jackson/databind/JavaType;
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    if-eqz v1, :cond_0

    .line 739
    check-cast v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 741
    .end local v0    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v0

    .restart local v0    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    goto :goto_0
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 2
    .param p2, "elementType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    return-object v0
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    .local p2, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "canonical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 512
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 513
    .local v0, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p2, :cond_0

    .line 528
    .end local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object p1

    .line 516
    .restart local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 517
    .local v1, "superType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_2

    .line 519
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Class %s not a super-type of %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Internal error: class %s not included as super-type for %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object p1, v1

    .line 528
    goto :goto_0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 4
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->createIfNeeded(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 797
    .local v0, "type":Lcom/fasterxml/jackson/databind/JavaType;
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    if-eqz v1, :cond_0

    .line 798
    check-cast v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .line 800
    .end local v0    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v0

    .restart local v0    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->upgradeFrom(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v0

    goto :goto_0
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 781
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v2, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v2, p3, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 3
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/type/MapType;

    return-object v0
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 752
    const-class v2, Ljava/util/Properties;

    if-ne p1, v2, :cond_0

    .line 753
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .local v1, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v0, v1

    .line 758
    .local v0, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v2

    return-object v2

    .line 755
    .end local v0    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v3, p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 756
    .restart local v0    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v3, p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .restart local v1    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p2, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 918
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 881
    array-length v1, p2

    .line 882
    .local v1, "len":I
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 883
    .local v2, "pt":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 884
    aget-object v3, p2, v0

    invoke-virtual {p0, v4, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    return-object v3
.end method

.method public varargs constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p3, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 927
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parametersFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public varargs constructParametrizedType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, "parametrized":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parametersFor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawCollectionLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawCollectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public constructRawMapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public constructReferenceType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p2, "referredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 831
    invoke-static {p1, v0, v0, v0, p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public constructSimpleType(Ljava/lang/Class;Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p3, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 823
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTarget":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p2, "parameterTypes"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p2, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 345
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 346
    .local v1, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p2, :cond_1

    .line 428
    .end local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    :goto_0
    return-object p1

    .line 354
    .restart local p1    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_3

    .line 355
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {p0, v6, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .local v0, "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    :goto_1
    move-object p1, v0

    .line 428
    goto :goto_0

    .line 358
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 359
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Class %s not subtype of %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {p0, v6, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 367
    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 370
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 371
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    const-class v4, Ljava/util/HashMap;

    if-eq p2, v4, :cond_6

    const-class v4, Ljava/util/LinkedHashMap;

    if-eq p2, v4, :cond_6

    const-class v4, Ljava/util/EnumMap;

    if-eq p2, v4, :cond_6

    const-class v4, Ljava/util/TreeMap;

    if-ne p2, v4, :cond_a

    .line 376
    :cond_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {p0, v6, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 378
    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 380
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 381
    const-class v4, Ljava/util/ArrayList;

    if-eq p2, v4, :cond_8

    const-class v4, Ljava/util/LinkedList;

    if-eq p2, v4, :cond_8

    const-class v4, Ljava/util/HashSet;

    if-eq p2, v4, :cond_8

    const-class v4, Ljava/util/TreeSet;

    if-ne p2, v4, :cond_9

    .line 385
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {p0, v6, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 387
    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    goto/16 :goto_1

    .line 391
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_9
    const-class v4, Ljava/util/EnumSet;

    if-eq v1, v4, :cond_0

    .line 397
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v3, v4

    .line 398
    .local v3, "typeParamCount":I
    if-nez v3, :cond_b

    .line 399
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-virtual {p0, v6, p2, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 400
    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    goto/16 :goto_1

    .line 414
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_b
    invoke-direct {p0, p1, v3, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_bindingsForSubtype(Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    .line 415
    .local v2, "tb":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 416
    new-array v4, v9, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v4, v8

    invoke-virtual {p1, p2, v2, v6, v4}, Lcom/fasterxml/jackson/databind/JavaType;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 421
    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2
    if-nez v0, :cond_2

    .line 422
    invoke-virtual {p0, v6, p2, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto/16 :goto_1

    .line 418
    .end local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_c
    sget-object v4, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, p2, v2, p1, v4}, Lcom/fasterxml/jackson/databind/JavaType;->refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .restart local v0    # "newType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_2
.end method

.method public constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "typeRef":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 617
    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "contextType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    if-nez p2, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    .line 665
    .local v0, "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1

    .line 663
    .end local v0    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    .local p2, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    .line 655
    .local v0, "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1

    .line 653
    .end local v0    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    goto :goto_0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 274
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findPrimitive(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 276
    .local v2, "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 294
    .end local v2    # "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 281
    :cond_0
    const/4 v3, 0x0

    .line 282
    .local v3, "prob":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 283
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 286
    :cond_1
    if-eqz v1, :cond_2

    .line 288
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->classForName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->classForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 295
    :catch_1
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/lang/Exception;
    if-nez v3, :cond_3

    .line 297
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 300
    :cond_3
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4

    .line 301
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "prob":Ljava/lang/Throwable;
    throw v3

    .line 303
    .restart local v3    # "prob":Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 558
    .local v0, "match":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 559
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 561
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->typeParameterArray()[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    goto :goto_0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p3, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 569
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "expType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .param p1, "type1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "type2"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 592
    if-nez p1, :cond_1

    move-object p1, p2

    .line 607
    .end local p1    # "type1":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    :goto_0
    return-object p1

    .line 595
    .restart local p1    # "type1":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    if-eqz p2, :cond_0

    .line 598
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 599
    .local v0, "raw1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 600
    .local v1, "raw2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_0

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, p2

    .line 605
    goto :goto_0
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 850
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructSimple(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public withCache(Lcom/fasterxml/jackson/databind/util/LRUMap;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "cache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/util/LRUMap;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public withClassLoader(Ljava/lang/ClassLoader;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 192
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/util/LRUMap;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 5
    .param p1, "mod"    # Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 178
    .local v1, "typeCache":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;>;"
    if-nez p1, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 182
    .local v0, "mods":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    const/4 v1, 0x0

    .line 188
    :goto_0
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/util/LRUMap;Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;Ljava/lang/ClassLoader;)V

    return-object v2

    .line 183
    .end local v0    # "mods":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    if-nez v2, :cond_1

    .line 184
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .restart local v0    # "mods":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    goto :goto_0

    .line 186
    .end local v0    # "mods":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    invoke-static {v2, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .restart local v0    # "mods":[Lcom/fasterxml/jackson/databind/type/TypeModifier;
    goto :goto_0
.end method
