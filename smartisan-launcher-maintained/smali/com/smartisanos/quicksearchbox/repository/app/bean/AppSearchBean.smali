.class public Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
.super Ljava/lang/Object;
.source "AppSearchBean.java"


.field private componentName:Ljava/lang/String;

.field private iconData:[B

.field private isInstalled:Z

.field private mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "pinyinSearchUnit"    # Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->isInstalled:Z

    .line 17
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->packageName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->componentName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    .line 21
    return-void
.end method


.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconData()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->iconData:[B

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public iconInit([B)V
    .locals 0
    .param p1, "iconData"    # [B

    .prologue
    .line 32
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->iconData:[B

    .line 33
    return-void
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->isInstalled:Z

    return v0
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "installed"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->isInstalled:Z

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x27

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSearchBean{title=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", packageName=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", componentName=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mPinyinSearchUnit is null= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->mPinyinSearchUnit:Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", iconData is null= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->iconData:[B

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
