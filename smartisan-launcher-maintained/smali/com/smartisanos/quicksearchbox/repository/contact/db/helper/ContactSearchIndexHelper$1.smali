.class Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;
.super Ljava/lang/Object;
.source "ContactSearchIndexHelper.java"

.implements Ljava/util/concurrent/Callable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->reloadLocalContactBeans()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
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
    .line 217
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;->call()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$200(Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->access$102([Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)[Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 225
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
