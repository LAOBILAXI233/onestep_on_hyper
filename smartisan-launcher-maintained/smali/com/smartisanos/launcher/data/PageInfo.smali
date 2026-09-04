.class public Lcom/smartisanos/launcher/data/PageInfo;
.super Ljava/lang/Object;
.source "PageInfo.java"

.implements Ljava/lang/Comparable;


.field public containment:Ljava/lang/String;

.field public data1:Ljava/lang/String;

.field public data2:Ljava/lang/String;

.field public data3:Ljava/lang/String;

.field public id:I

.field private mPage:Lcom/smartisanos/launcher/view/Page;

.field public pageIndex:I

.field private pageName:Ljava/lang/String;

.field public pageType:I

.field public status:I


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->id:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 33
    iput v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageType:I

    .line 34
    return-void
.end method


.method public clone()Lcom/smartisanos/launcher/data/PageInfo;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 85
    .local v0, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    iget v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 86
    iget-object v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    .line 87
    iget v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    iput v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 88
    iget-object v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->containment:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->containment:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/PageInfo;->clone()Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "result":I
    if-nez p1, :cond_0

    .line 76
    const/4 v2, -0x1

    .line 80
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/smartisanos/launcher/data/PageInfo;

    .line 79
    .local v0, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    iget v2, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    iget v3, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    sub-int v1, v2, v3

    move v2, v1

    .line 80
    goto :goto_0
.end method

.method public generateInfo(Lcom/smartisanos/launcher/view/Page;)V
    .locals 1
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/data/PageInfo;->mPage:Lcom/smartisanos/launcher/view/Page;

    .line 58
    iget v0, p1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 59
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 60
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPage()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->mPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    const-string v0, ""

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "_pageName"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const-string p1, ""

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "pageIndex"

    iget v2, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v1, "pageTitle"

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "status"

    iget v2, p0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/PageInfo;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
