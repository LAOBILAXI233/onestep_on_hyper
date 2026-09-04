.class Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$6;
.super Ljava/lang/Object;
.source "ReportProblemDescriptionFragment.java"

.implements Landroid/view/View$OnTouchListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;


.method constructor <init>(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$6;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
