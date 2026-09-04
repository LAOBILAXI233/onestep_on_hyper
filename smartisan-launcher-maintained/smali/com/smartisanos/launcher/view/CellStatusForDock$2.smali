.class Lcom/smartisanos/launcher/view/CellStatusForDock$2;
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

.field final synthetic val$pkgName:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$2;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->uninstallAppBySys(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    return-void
.end method
