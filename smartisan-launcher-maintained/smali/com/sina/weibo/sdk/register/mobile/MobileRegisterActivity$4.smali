.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

.implements Lcom/sina/weibo/sdk/net/RequestListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

.field private final synthetic val$phoneNum:Ljava/lang/String;


.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->val$phoneNum:Ljava/lang/String;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onComplete(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 948
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->dismiss()V

    .line 949
    invoke-static {}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$9()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get onComplete : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    if-eqz p1, :cond_0

    .line 952
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 954
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 955
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 956
    const-string v3, "uid"

    const-string v4, "uid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v3, "phone_num"

    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v3, "access_token"

    const-string v4, "oauth_token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v3, "expires_in"

    const-string v4, "expires"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 961
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->setResult(ILandroid/content/Intent;)V

    .line 962
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 4

    .prologue
    .line 929
    invoke-static {}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$9()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get onWeiboException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "the server is busy, please  wait"

    const-string v2, "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 932
    const-string v3, "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

    .line 930
    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 935
    const-string v2, "error_description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    const-string v2, "error_description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 941
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-static {v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$11(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$4;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->dismiss()V

    .line 944
    return-void

    .line 938
    :catch_0
    move-exception v1

    .line 939
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
