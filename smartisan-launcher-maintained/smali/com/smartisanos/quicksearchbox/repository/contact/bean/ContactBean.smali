.class public Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
.super Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;
.source "ContactBean.java"


.field private mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;


.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rawId"    # I
    .param p2, "contactId"    # I
    .param p3, "rawDataVersion"    # I
    .param p4, "displayname"    # Ljava/lang/String;
    .param p5, "lookupkey"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-direct {v0, p4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .line 20
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V
    .locals 0
    .param p1, "rawId"    # I
    .param p2, "contactId"    # I
    .param p3, "rawDataVersion"    # I
    .param p4, "displayname"    # Ljava/lang/String;
    .param p5, "lookupkey"    # Ljava/lang/String;
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p7, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
    .locals 7
    .param p1, "contactBean"    # Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawId()I

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getContactId()I

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawDataVersion()I

    move-result v3

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getLookupkey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/BaseContactBean;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getDisplayname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .line 32
    return-void
.end method


.method public getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    return-object v0
.end method

.method public show()V
    .locals 7

    .prologue
    .line 35
    const-string v2, "amy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;->getPinyinUnits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;

    .line 37
    .local v1, "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getPinyinBaseUnitIndex()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;

    .line 38
    .local v0, "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    const-string v4, "amy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startposition : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;->getStartPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v4, "amy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "origin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getOriginalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pinyin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 40
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v0    # "pinyinBaseUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinBaseUnit;
    .end local v1    # "pinyinUnit":Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinUnit;
    :cond_1
    return-void
.end method
