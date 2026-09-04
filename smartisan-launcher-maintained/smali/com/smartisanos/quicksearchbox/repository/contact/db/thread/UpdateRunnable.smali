.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;
.super Ljava/lang/Object;
.source "UpdateRunnable.java"

.implements Ljava/lang/Runnable;


.field private mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

.field private mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

.field private mContentValues:[Landroid/content/ContentValues;


.method public constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Landroid/content/ContentValues;[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V
    .locals 0
    .param p1, "contactSearchIndexHelper"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    .param p2, "contentValues"    # [Landroid/content/ContentValues;
    .param p3, "contactBeans"    # [Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .line 21
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContentValues:[Landroid/content/ContentValues;

    .line 22
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 23
    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContentValues:[Landroid/content/ContentValues;

    array-length v4, v4

    new-array v3, v4, [[Ljava/lang/String;

    .line 29
    .local v3, "whereArgs":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 30
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContactBeans:[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    aget-object v7, v7, v1

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

    aput-object v4, v3, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/UpdateRunnable;->mContentValues:[Landroid/content/ContentValues;

    const-string v6, "_id=?"

    invoke-virtual {v4, v5, v6, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->updateBulk([Landroid/content/ContentValues;Ljava/lang/String;[[Ljava/lang/String;)[I

    move-result-object v2

    .line 33
    .local v2, "updated":[I
    const-string v4, "amy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "i":I
    .end local v2    # "updated":[I
    .end local v3    # "whereArgs":[[Ljava/lang/String;
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
