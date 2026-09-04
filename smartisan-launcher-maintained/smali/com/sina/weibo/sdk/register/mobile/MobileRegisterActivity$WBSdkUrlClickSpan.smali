.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "MobileRegisterActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WBSdkUrlClickSpan"
.end annotation


.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

.field private url:Ljava/lang/String;


.method public constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    .line 845
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 846
    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->context:Landroid/content/Context;

    .line 847
    iput-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->url:Ljava/lang/String;

    .line 848
    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 852
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->context:Landroid/content/Context;

    const-class v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 854
    const-string v2, "key_url"

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 856
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$WBSdkUrlClickSpan;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 864
    const v0, -0xaf8251

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 865
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 866
    return-void
.end method
