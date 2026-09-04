.class public Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.super Ljava/lang/Object;
.source "JsonInclude.java"

.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonInclude;
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
        "Lcom/fasterxml/jackson/annotation/JsonInclude;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field private static final serialVersionUID:J = 0x1L


.field protected final _contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

.field protected final _valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 0
    .param p1, "vi"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p2, "ci"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    if-nez p1, :cond_0

    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .end local p1    # "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 215
    if-nez p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .end local p2    # "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonInclude;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .prologue
    .line 210
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 211
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p0, "valueIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .param p1, "contentIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 293
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 295
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 297
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    goto :goto_0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonInclude;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 3
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JsonInclude;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const/4 v2, 0x0

    .line 314
    :goto_0
    return-object v2

    .line 308
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    .line 309
    .local v1, "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->content()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 311
    .local v0, "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v2, :cond_1

    .line 312
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    goto :goto_0

    .line 314
    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-direct {v2, v1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    goto :goto_0
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    .line 235
    if-nez p0, :cond_0

    .end local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p1

    .restart local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, "result":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    move-object v0, p0

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 246
    .local v1, "curr":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v1, :cond_0

    .line 247
    if-nez v4, :cond_1

    move-object v4, v1

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v4

    goto :goto_1

    .line 250
    .end local v1    # "curr":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_2
    return-object v4
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    if-ne p1, p0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 354
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 356
    .local v0, "other":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    .line 257
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 259
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    const-string v0, "[value=%s,content=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

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
            "Lcom/fasterxml/jackson/annotation/JsonInclude;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    return-object v0
.end method

.method public withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 7
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 269
    if-eqz p1, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    if-ne p1, v6, :cond_1

    .line 286
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    :goto_0
    return-object p0

    .line 272
    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_1
    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 273
    .local v2, "vi":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    iget-object v0, p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 275
    .local v0, "ci":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v2, v6, :cond_2

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v2, v6, :cond_2

    move v3, v4

    .line 276
    .local v3, "viDiff":Z
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v0, v6, :cond_3

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v0, v6, :cond_3

    move v1, v4

    .line 278
    .local v1, "ciDiff":Z
    :goto_2
    if-eqz v3, :cond_5

    .line 279
    if-eqz v1, :cond_4

    .line 280
    new-instance p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    goto :goto_0

    .end local v1    # "ciDiff":Z
    .end local v3    # "viDiff":Z
    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_2
    move v3, v5

    .line 275
    goto :goto_1

    .restart local v3    # "viDiff":Z
    :cond_3
    move v1, v5

    .line 276
    goto :goto_2

    .line 282
    .restart local v1    # "ciDiff":Z
    :cond_4
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v4, v2, v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v4

    goto :goto_0

    .line 283
    :cond_5
    if-eqz v1, :cond_0

    .line 284
    new-instance v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v4, v5, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v4

    goto :goto_0
.end method

.method public withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    move-object p0, v0

    goto :goto_0
.end method
