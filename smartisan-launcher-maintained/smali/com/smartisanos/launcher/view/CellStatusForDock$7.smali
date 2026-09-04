.class Lcom/smartisanos/launcher/view/CellStatusForDock$7;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;->handleOnUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$7;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "\u8bf7\u5728\u8bbe\u7f6e\u7684\u5206\u8eab\u5e94\u7528\u4e2d\u5173\u95ed\u684c\u9762\u5165\u53e3"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
