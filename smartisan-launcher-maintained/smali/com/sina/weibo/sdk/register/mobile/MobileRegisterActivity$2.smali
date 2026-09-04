.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

.implements Lcom/sina/weibo/sdk/component/view/TitleBar$ListenerOnTitleBtnClicked;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;


.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLeftBtnClicked()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(I)V

    .line 260
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$2;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V

    .line 261
    return-void
.end method
