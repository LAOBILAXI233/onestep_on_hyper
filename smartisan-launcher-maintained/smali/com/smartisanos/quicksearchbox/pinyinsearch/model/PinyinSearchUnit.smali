.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
.super Ljava/lang/Object;
.source "PinyinSearchUnit.java"

.implements Ljava/lang/Cloneable;


.field private mBaseData:Ljava/lang/String;

.field private mMatchKeyword:Ljava/lang/StringBuffer;

.field private mPinyinUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->initPinyinSearchUnit()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseData"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mBaseData:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->initPinyinSearchUnit()V

    .line 37
    return-void
.end method

.method private initPinyinSearchUnit()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mMatchKeyword:Ljava/lang/StringBuffer;

    .line 78
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
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .line 67
    .local v0, "obj":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    .line 68
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 69
    .local v1, "pu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    iget-object v4, v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v1    # "pu":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    :cond_0
    return-object v0
.end method

.method public getBaseData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mBaseData:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchKeyword()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mMatchKeyword:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getPinyinUnits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    return-object v0
.end method

.method public setBaseData(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseData"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mBaseData:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMatchKeyword(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "matchKeyword"    # Ljava/lang/StringBuffer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mMatchKeyword:Ljava/lang/StringBuffer;

    .line 61
    return-void
.end method

.method public setPinyinUnits(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "pinyinUnits":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;>;"
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->mPinyinUnits:Ljava/util/List;

    .line 53
    return-void
.end method
