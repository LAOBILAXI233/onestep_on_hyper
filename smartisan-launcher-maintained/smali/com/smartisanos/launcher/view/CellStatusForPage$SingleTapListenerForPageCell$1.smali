.class Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$600(Lcom/smartisanos/launcher/view/CellStatusForPage;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$600(Lcom/smartisanos/launcher/view/CellStatusForPage;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/ResIds$string;->mutiselect_first_notice:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$602(Lcom/smartisanos/launcher/view/CellStatusForPage;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 296
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;->this$1:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$600(Lcom/smartisanos/launcher/view/CellStatusForPage;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method
