.class Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;
.super Ljava/lang/Object;
.source "MobileRegisterActivity.java"

.implements Lcom/sina/weibo/sdk/net/RequestListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getMsg(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 901
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

    .line 902
    if-eqz p1, :cond_0

    .line 904
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    const-string v2, "cfrom"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->access$10(Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 907
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 4

    .prologue
    .line 883
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

    .line 885
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "the server is busy, please  wait"

    const-string v2, "\u670d\u52a1\u5668\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 886
    const-string v3, "\u670d\u52d9\u5668\u5fd9,\u8acb\u7a0d\u5f8c\u518d\u8a66"

    .line 884
    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 889
    const-string v2, "error_description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    const-string v2, "error_description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 895
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity$3;->this$0:Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 896
    const/4 v2, 0x1

    .line 895
    invoke-static {v1, v0, v2}, Lcom/sina/weibo/sdk/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 897
    return-void

    .line 892
    :catch_0
    move-exception v1

    .line 893
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
