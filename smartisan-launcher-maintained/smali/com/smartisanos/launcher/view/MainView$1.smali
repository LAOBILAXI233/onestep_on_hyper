.class Lcom/smartisanos/launcher/view/MainView$1;
.super Ljava/lang/Object;
.source "MainView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->hideStatusBarWithoutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$1;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$1;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MainView;->access$000(Lcom/smartisanos/launcher/view/MainView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 414
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 415
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$1;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MainView;->access$000(Lcom/smartisanos/launcher/view/MainView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 416
    return-void
.end method
