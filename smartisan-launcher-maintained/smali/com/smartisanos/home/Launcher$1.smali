.class Lcom/smartisanos/home/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->setLauncherWindowStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;

.field final synthetic val$flag:Z


.method constructor <init>(Lcom/smartisanos/home/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$1;->this$0:Lcom/smartisanos/home/Launcher;

    iput-boolean p2, p0, Lcom/smartisanos/home/Launcher$1;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 423
    iget-object v3, p0, Lcom/smartisanos/home/Launcher$1;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 424
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 425
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 426
    .local v0, "bits":I
    iget-boolean v3, p0, Lcom/smartisanos/home/Launcher$1;->val$flag:Z

    if-eqz v3, :cond_0

    .line 427
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 431
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 432
    return-void

    .line 429
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method
