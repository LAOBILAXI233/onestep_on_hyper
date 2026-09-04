.class Lcom/smartisanos/launcher/view/FolderPageView$1;
.super Lcom/smartisanos/smengine/Event;
.source "FolderPageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/FolderPageView;->buildPagesFromFolderInfo(Lcom/smartisanos/launcher/data/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FolderPageView;


.method constructor <init>(Lcom/smartisanos/launcher/view/FolderPageView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FolderPageView;
    .param p2, "type"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FolderPageView$1;->this$0:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FolderPageView$1;->this$0:Lcom/smartisanos/launcher/view/FolderPageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FolderPageView$1;->this$0:Lcom/smartisanos/launcher/view/FolderPageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 96
    return-void
.end method
