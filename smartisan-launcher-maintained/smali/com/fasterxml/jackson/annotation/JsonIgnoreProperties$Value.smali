.class public Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
.super Ljava/lang/Object;
.source "JsonIgnoreProperties.java"

.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

.field private static final serialVersionUID:J = 0x1L


.field protected final _allowGetters:Z

.field protected final _allowSetters:Z

.field protected final _ignoreUnknown:Z

.field protected final _ignored:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _merge:Z


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v5, 0x1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;-><init>(Ljava/util/Set;ZZZZ)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;ZZZZ)V
    .locals 1
    .param p2, "ignoreUnknown"    # Z
    .param p3, "allowGetters"    # Z
    .param p4, "allowSetters"    # Z
    .param p5, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 131
    :goto_0
    iput-boolean p2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    .line 132
    iput-boolean p3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    .line 133
    iput-boolean p4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    .line 134
    iput-boolean p5, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 135
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    goto :goto_0
.end method

.method private static _asSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p0, "v"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    .line 409
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 415
    :cond_1
    return-object v3

    .line 411
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 412
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 413
    .local v4, "str":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static _empty(Ljava/util/Set;ZZZZ)Z
    .locals 2
    .param p1, "ignoreUnknown"    # Z
    .param p2, "allowGetters"    # Z
    .param p3, "allowSetters"    # Z
    .param p4, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZ)Z"
        }
    .end annotation

    .prologue
    .local p0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 434
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-boolean v1, v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-boolean v1, v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-boolean v1, v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-ne p3, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-boolean v1, v1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-ne p4, v1, :cond_1

    .line 438
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 440
    :cond_1
    return v0
.end method

.method private static _equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z
    .locals 2
    .param p0, "a"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .param p1, "b"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _merge(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "s1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "s2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    .end local p1    # "s2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 422
    .restart local p1    # "s2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, p0

    .line 423
    goto :goto_0

    .line 425
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 426
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 428
    goto :goto_0
.end method

.method public static construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 6
    .param p1, "ignoreUnknown"    # Z
    .param p2, "allowGetters"    # Z
    .param p3, "allowSetters"    # Z
    .param p4, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_empty(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_empty(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;-><init>(Ljava/util/Set;ZZZZ)V

    goto :goto_0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0
.end method

.method public static forIgnoreUnknown(Z)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .param p0, "state"    # Z

    .prologue
    .line 229
    if-eqz p0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withoutIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public static forIgnoredProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "propNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forIgnoredProperties([Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 2
    .param p0, "propNames"    # [Ljava/lang/String;

    .prologue
    .line 222
    array-length v0, p0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v1

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowGetters()Z

    move-result v2

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowSetters()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 0
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .prologue
    .line 199
    if-nez p0, :cond_0

    .end local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p1

    .restart local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .prologue
    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, "result":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    move-object v0, p0

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 210
    .local v1, "curr":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v1, :cond_0

    .line 211
    if-nez v4, :cond_1

    move-object v4, v1

    .line 209
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v4

    goto :goto_1

    .line 214
    .end local v1    # "curr":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_2
    return-object v4
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    if-ne p1, p0, :cond_1

    .line 392
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 391
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public findIgnoredForDeserialization()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    goto :goto_0
.end method

.method public findIgnoredForSerialization()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    goto :goto_0
.end method

.method public getAllowGetters()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    return v0
.end method

.method public getAllowSetters()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    return v0
.end method

.method public getIgnoreUnknown()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    return v0
.end method

.method public getIgnored()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    return-object v0
.end method

.method public getMerge()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    :goto_2
    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, -0x7

    goto :goto_1

    :cond_2
    const/16 v0, -0xb

    goto :goto_2

    :cond_3
    const/16 v0, -0xd

    goto :goto_3
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_empty(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 321
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    const-string v0, "[ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    return-object v0
.end method

.method public withAllowGetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withAllowSetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public varargs withIgnored([Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p1, "ignored"    # [Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public withMerge()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 8
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 240
    if-eqz p1, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    if-ne p1, v6, :cond_1

    .line 259
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    :goto_0
    return-object p0

    .line 245
    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_1
    iget-boolean v6, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-nez v6, :cond_2

    move-object p0, p1

    .line 246
    goto :goto_0

    .line 248
    :cond_2
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-object v7, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    invoke-static {v6, v7}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 254
    .local v3, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v6, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-nez v6, :cond_3

    iget-boolean v6, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v6, :cond_6

    :cond_3
    move v2, v5

    .line 255
    .local v2, "ignoreUnknown":Z
    :goto_1
    iget-boolean v6, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-nez v6, :cond_4

    iget-boolean v6, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v6, :cond_7

    :cond_4
    move v0, v5

    .line 256
    .local v0, "allowGetters":Z
    :goto_2
    iget-boolean v6, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-nez v6, :cond_5

    iget-boolean v6, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v6, :cond_8

    :cond_5
    move v1, v5

    .line 259
    .local v1, "allowSetters":Z
    :goto_3
    invoke-static {v3, v2, v0, v1, v5}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0

    .end local v0    # "allowGetters":Z
    .end local v1    # "allowSetters":Z
    .end local v2    # "ignoreUnknown":Z
    :cond_6
    move v2, v4

    .line 254
    goto :goto_1

    .restart local v2    # "ignoreUnknown":Z
    :cond_7
    move v0, v4

    .line 255
    goto :goto_2

    .restart local v0    # "allowGetters":Z
    :cond_8
    move v1, v4

    .line 256
    goto :goto_3
.end method

.method public withoutAllowGetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withoutAllowSetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withoutIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method

.method public withoutIgnored()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 271
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public withoutMerge()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p0

    goto :goto_0
.end method
