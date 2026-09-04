.class Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$7;
.super Ljava/lang/Object;
.source "ReportProblemDescriptionFragment.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->showDialog()V
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
    .line 341
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$7;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$7;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$300(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)V

    .line 345
    return-void
.end method
