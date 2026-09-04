.class public Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
.super Ljava/lang/Object;
.source "PinyinBaseUnit.java"

.implements Ljava/lang/Cloneable;


.field private mNumber:Ljava/lang/String;

.field private mOriginalString:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    .line 39
    return-void
.end method


.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setOriginalString(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalString"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    .line 55
    return-void
.end method
