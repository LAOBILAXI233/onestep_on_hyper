.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;
.super Ljava/lang/Object;
.source "DeleteRunnable.java"

.implements Ljava/lang/Runnable;


.field private mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

.field private mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;


.method public constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
    .locals 0
    .param p1, "contactSearchIndexHelper"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    .param p2, "contactBeans"    # [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .line 19
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 20
    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 25
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v4, v4

    new-array v3, v4, [[Ljava/lang/String;

    .line 26
    .local v3, "whereClause":[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 27
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;->getRawId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v3, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/DeleteRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    const-string v5, "_id=?"

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->deleteBulk(Ljava/lang/String;[[Ljava/lang/String;)[I

    move-result-object v0

    .line 30
    .local v0, "deleted":[I
    const-string v4, "amy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "deleted":[I
    .end local v2    # "i":I
    .end local v3    # "whereClause":[[Ljava/lang/String;
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
