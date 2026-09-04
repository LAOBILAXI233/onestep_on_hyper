.class Lcom/smartisan/useragreement/UserAgreementActivity$1;
.super Ljava/lang/Object;
.source "UserAgreementActivity.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/useragreement/UserAgreementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/useragreement/UserAgreementActivity;


.method constructor <init>(Lcom/smartisan/useragreement/UserAgreementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/useragreement/UserAgreementActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/smartisan/useragreement/UserAgreementActivity$1;->this$0:Lcom/smartisan/useragreement/UserAgreementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/smartisan/useragreement/UserAgreementActivity$1;->this$0:Lcom/smartisan/useragreement/UserAgreementActivity;

    invoke-virtual {v0}, Lcom/smartisan/useragreement/UserAgreementActivity;->finish()V

    .line 82
    return-void
.end method
