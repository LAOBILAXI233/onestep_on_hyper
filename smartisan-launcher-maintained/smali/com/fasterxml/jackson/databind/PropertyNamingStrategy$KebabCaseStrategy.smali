.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$KebabCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KebabCaseStrategy"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2d

    .line 365
    if-nez p1, :cond_1

    .line 396
    .end local p1    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 366
    .restart local p1    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 367
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v3, 0x1

    add-int/2addr v6, v3

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 375
    .local v5, "upperCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 377
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 379
    .local v2, "lc":C
    if-ne v2, v0, :cond_3

    .line 382
    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    const/4 v5, 0x0

    .line 394
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_3
    if-nez v5, :cond_4

    if-lez v1, :cond_4

    .line 390
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 396
    .end local v0    # "ch":C
    .end local v2    # "lc":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
