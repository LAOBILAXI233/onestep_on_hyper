.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$2(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    .line 140
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    const-string v2, "code"

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->setResult(ILandroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->finish()V

    goto :goto_0
.end method
