.class final Lcom/smartisanos/launcher/data/Utils$2;
.super Lcom/smartisanos/smengine/Event;
.source "Utils.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$state:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;


.method constructor <init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1592
    iput-object p2, p0, Lcom/smartisanos/launcher/data/Utils$2;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/Utils$2;->val$state:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 1594
    iget-object v2, p0, Lcom/smartisanos/launcher/data/Utils$2;->val$pkg:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->getCellsByPkg(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1595
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1596
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1597
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 1598
    iget-object v3, p0, Lcom/smartisanos/launcher/data/Utils$2;->val$state:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setDownloadState(Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto :goto_0

    .line 1601
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1603
    :cond_2
    return-void
.end method
