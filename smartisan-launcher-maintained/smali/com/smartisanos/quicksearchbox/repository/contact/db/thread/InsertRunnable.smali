.class public Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/InsertRunnable;
.super Ljava/lang/Object;
.source "InsertRunnable.java"

.implements Ljava/lang/Runnable;


.field private mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

.field private mContentValues:[Landroid/content/ContentValues;


.method public constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;[Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "contactSearchIndexHelper"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;
    .param p2, "contentValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/InsertRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .line 18
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/InsertRunnable;->mContentValues:[Landroid/content/ContentValues;

    .line 19
    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/InsertRunnable;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/thread/InsertRunnable;->mContentValues:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->insertBulk([Landroid/content/ContentValues;)[J

    move-result-object v1

    .line 25
    .local v1, "inserted":[J
    const-string v2, "amy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1    # "inserted":[J
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
