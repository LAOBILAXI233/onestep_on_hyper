.class Lcom/smartisanos/launcher/view/MainView$6;
.super Ljava/lang/Object;
.source "MainView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->showEditPageTitleNameDialog(Lcom/smartisanos/launcher/view/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;

.field final synthetic val$page:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$6;->this$0:Lcom/smartisanos/launcher/view/MainView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/MainView$6;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 836
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$6;->val$page:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->showEditPageTitleDialog(Lcom/smartisanos/launcher/view/Page;)V

    .line 837
    return-void
.end method
