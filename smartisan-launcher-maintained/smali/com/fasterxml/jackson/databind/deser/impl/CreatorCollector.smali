.class public Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "CreatorCollector.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;
    }
.end annotation


.field protected static final C_ARRAY_DELEGATE:I = 0x8

.field protected static final C_BOOLEAN:I = 0x5

.field protected static final C_DEFAULT:I = 0x0

.field protected static final C_DELEGATE:I = 0x6

.field protected static final C_DOUBLE:I = 0x4

.field protected static final C_INT:I = 0x2

.field protected static final C_LONG:I = 0x3

.field protected static final C_PROPS:I = 0x7

.field protected static final C_STRING:I = 0x1

.field protected static final TYPE_DESCS:[Ljava/lang/String;


.field protected _arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _canFixAccess:Z

.field protected final _creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _explicitCreators:I

.field protected final _forceAccess:Z

.field protected _hasNonDefaultCreator:Z

.field protected _incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field protected _propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "from-String"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "from-int"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "from-long"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "from-double"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "from-boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delegate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "property-based"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
    .locals 2
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 61
    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 63
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 80
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 81
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    .line 82
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_forceAccess:Z

    .line 84
    return-void
.end method

.method private _computeDelegateType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "delegateArgs"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 271
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 272
    :cond_0
    const/4 v3, 0x0

    .line 284
    :goto_0
    return-object v3

    .line 275
    :cond_1
    const/4 v1, 0x0

    .line 276
    .local v1, "ix":I
    if-eqz p2, :cond_2

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p2

    .local v2, "len":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 278
    aget-object v3, p2, v0

    if-nez v3, :cond_3

    .line 279
    move v1, v0

    .line 284
    .end local v0    # "i":I
    .end local v2    # "len":I
    :cond_2
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto :goto_0

    .line 277
    .restart local v0    # "i":I
    .restart local v2    # "len":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private _fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;, "TT;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_forceAccess:Z

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 292
    :cond_0
    return-object p1
.end method


.method protected _isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z
    .locals 2
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "valueOf"

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 224
    return-void
.end method

.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 154
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 155
    return-void
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "injectables"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 161
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 164
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "injectables"    # [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 230
    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 219
    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 149
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 150
    return-void
.end method

.method public addIncompeteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 1
    .param p1, "parameter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-nez v0, :cond_0

    .line 195
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 197
    :cond_0
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 209
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 140
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 141
    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 214
    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 144
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 145
    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 10
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "properties"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    const/4 v9, 0x1

    .line 170
    const/4 v5, 0x7

    invoke-virtual {p0, p1, v5, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 172
    array-length v5, p3

    if-le v5, v9, :cond_2

    .line 173
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 175
    aget-object v5, p3, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p3, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 183
    .local v4, "old":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 184
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate creator property \"%s\" (index %s vs %d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v4, v7, v9

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "old":Ljava/lang/Integer;
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 191
    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "properties"    # [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 236
    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 204
    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V

    .line 137
    return-void
.end method

.method public constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 10
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x6

    .line 88
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, v5

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_computeDelegateType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 90
    .local v3, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, v9

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_computeDelegateType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 92
    .local v7, "arrayDelegateType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 97
    .local v8, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector$StdTypeConstructor;->tryToOptimize(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    .line 100
    .local v1, "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    invoke-direct {v0, p1, v8}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 101
    .local v0, "inst":Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, v5

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 104
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, v9

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, v2, v7, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromArraySettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 106
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 107
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 108
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 109
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 110
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 111
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureIncompleteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 112
    return-object v0
.end method

.method public hasDefaultCreator()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasDelegatingCreator()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPropertyBasedCreator()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 3
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v0, v1, v2

    .line 132
    return-void
.end method

.method protected verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)V
    .locals 11
    .param p1, "newOne"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "typeIndex"    # I
    .param p3, "explicit"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 297
    shl-int v0, v5, p2

    .line 298
    .local v0, "mask":I
    iput-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 299
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v7, p2

    .line 301
    .local v2, "oldOne":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v2, :cond_2

    .line 304
    iget v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_4

    .line 307
    if-nez p3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v4, 0x1

    .line 318
    .local v4, "verify":Z
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_2

    .line 320
    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 321
    .local v3, "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 323
    .local v1, "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_8

    .line 329
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 332
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 351
    .end local v1    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "verify":Z
    :cond_2
    if-eqz p3, :cond_3

    .line 352
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 354
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v5, v6, p2

    goto :goto_0

    .line 314
    :cond_4
    if-nez p3, :cond_5

    move v4, v5

    .restart local v4    # "verify":Z
    :goto_2
    goto :goto_1

    .end local v4    # "verify":Z
    :cond_5
    move v4, v6

    goto :goto_2

    .line 335
    .restart local v1    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "verify":Z
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Conflicting %s creators: already had %s creator %s, encountered another: %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    aget-object v10, v10, p2

    aput-object v10, v9, v6

    if-eqz p3, :cond_7

    const-string v6, "explicitly marked"

    :goto_3
    aput-object v6, v9, v5

    const/4 v5, 0x2

    aput-object v2, v9, v5

    const/4 v5, 0x3

    aput-object p1, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    const-string v6, "implicitly discovered"

    goto :goto_3

    .line 344
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method
