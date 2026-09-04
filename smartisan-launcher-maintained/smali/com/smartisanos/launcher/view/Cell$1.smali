.class Lcom/smartisanos/launcher/view/Cell$1;
.super Ljava/lang/Object;
.source "Cell.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->showToastForCannotRemoveSystemApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$1;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 339
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 340
    .local v0, "launcher":Lcom/smartisanos/home/Launcher;
    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    sget v2, Lcom/smartisanos/launcher/ResIds$string;->uninstall_system_app_text:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 344
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
