.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
.super Ljava/lang/Object;
.source "JsonFormat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;


.field private final _disabled:I

.field private final _enabled:I


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "e"    # I
    .param p2, "d"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 292
    iput p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 293
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 2
    .param p0, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .prologue
    .line 300
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 8
    .param p0, "enabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .param p1, "disabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    const/4 v7, 0x1

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "e":I
    move-object v0, p0

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 307
    .local v3, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int v6, v7, v6

    or-int/2addr v2, v6

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    const/4 v1, 0x0

    .line 310
    .local v1, "d":I
    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 311
    .restart local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int v6, v7, v6

    or-int/2addr v1, v6

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 313
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_1
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v6, v2, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    return-object v6
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    if-ne p1, p0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 377
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

    .line 378
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 379
    .local v0, "other":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 358
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v2

    shl-int v0, v1, v2

    .line 359
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 360
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    :goto_0
    return-object v1

    .line 362
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 363
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 365
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    add-int/2addr v0, v1

    return v0
.end method

.method public varargs with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 342
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 343
    .local v1, "e":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 344
    .local v2, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v1, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    invoke-direct {v5, v1, v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    move-object p0, v5

    goto :goto_1
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 6
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 338
    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_0
    :goto_0
    return-object p0

    .line 321
    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    iget v2, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 322
    .local v2, "overrideD":I
    iget v3, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 323
    .local v3, "overrideE":I
    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 326
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-nez v4, :cond_3

    move-object p0, p1

    .line 327
    goto :goto_0

    .line 330
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    or-int v1, v4, v3

    .line 331
    .local v1, "newE":I
    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    or-int v0, v4, v2

    .line 334
    .local v0, "newD":I
    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v1, v4, :cond_4

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-eq v0, v4, :cond_0

    .line 338
    :cond_4
    new-instance p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    goto :goto_0
.end method

.method public varargs without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 350
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 351
    .local v1, "d":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 352
    .local v2, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int/2addr v5, v6

    or-int/2addr v1, v5

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    :cond_0
    iget v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-ne v1, v5, :cond_1

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    invoke-direct {v5, v6, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    move-object p0, v5

    goto :goto_1
.end method
