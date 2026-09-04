.class Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;
.super Ljava/lang/Object;
.source "ReportProblemDescriptionFragment.java"

.implements Landroid/text/TextWatcher;


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
    .line 204
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "paramEditable"    # Landroid/text/Editable;

    .prologue
    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "paramCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramInt3"    # I

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "paramCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramInt3"    # I

    .prologue
    .line 215
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    iget-object v2, v2, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 216
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 217
    .local v1, "len":I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$000(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment$3;->this$0:Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;

    invoke-static {v2}, Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;->access$000(Lcom/smartisan/feedbackhelper/ReportProblemDescriptionFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
