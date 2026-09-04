.class Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;
.super Lcom/smartisanos/smengine/Event;
.source "EditTitleDialog.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/EditTitleDialog$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/EditTitleDialog$5;

.field final synthetic val$input:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/view/EditTitleDialog$5;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/EditTitleDialog$5;
    .param p2, "type"    # I

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->this$1:Lcom/smartisanos/launcher/view/EditTitleDialog$5;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->val$input:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->this$1:Lcom/smartisanos/launcher/view/EditTitleDialog$5;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$page:Lcom/smartisanos/launcher/view/Page;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->val$input:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Page;->updatePageTitleName(Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "pageIndex"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->this$1:Lcom/smartisanos/launcher/view/EditTitleDialog$5;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$page:Lcom/smartisanos/launcher/view/Page;

    iget v3, v3, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v2, "pageTitle"

    iget-object v3, p0, Lcom/smartisanos/launcher/view/EditTitleDialog$5$1;->this$1:Lcom/smartisanos/launcher/view/EditTitleDialog$5;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/EditTitleDialog$5;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_PAGE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 91
    return-void
.end method
