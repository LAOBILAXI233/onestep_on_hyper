.class Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;
.super Ljava/lang/Object;
.source "ContactSearchIndexHelper.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reInitLocalContactIndexTableBlock()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$300(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->recreateContactTable()V

    .line 366
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$400(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
