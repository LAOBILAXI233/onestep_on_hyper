.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
.super Ljava/lang/Object;
.source "PinyinUnit.java"

.implements Ljava/lang/Cloneable;


.field private mPinyin:Z

.field private mPinyinBaseUnitIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPosition:I


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyin:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mStartPosition:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    .line 76
    return-void
.end method


.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 106
    .local v0, "obj":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    .line 107
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .line 108
    .local v1, "pbu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    iget-object v4, v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1    # "pbu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    :cond_0
    return-object v0
.end method

.method public getPinyinBaseUnitIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mStartPosition:I

    return v0
.end method

.method public isPinyin()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyin:Z

    return v0
.end method

.method public setPinyin(Z)V
    .locals 0
    .param p1, "pinyin"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyin:Z

    .line 84
    return-void
.end method

.method public setPinyinBaseUnitIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "pinyinBaseUnitIndex":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;>;"
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "startPosition"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->mStartPosition:I

    .line 92
    return-void
.end method
