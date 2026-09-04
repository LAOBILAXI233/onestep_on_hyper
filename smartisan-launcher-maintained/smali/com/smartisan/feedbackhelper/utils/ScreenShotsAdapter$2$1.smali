.class Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;
.super Ljava/lang/Object;
.source "ScreenShotsAdapter.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;

.field final synthetic val$view:Landroid/view/View;


.method constructor <init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;->this$1:Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;

    iput-object p2, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    return-void
.end method
