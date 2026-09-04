.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

.implements Lcom/sina/weibo/sdk/net/RequestListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->startShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

.field private final synthetic val$req:Lcom/sina/weibo/sdk/component/ShareRequestParam;


.method constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/ShareRequestParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->val$req:Lcom/sina/weibo/sdk/component/ShareRequestParam;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$7()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post onComplete : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;->parse(Ljava/lang/String;)Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;->getPicId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->val$req:Lcom/sina/weibo/sdk/component/ShareRequestParam;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam$UploadPicResult;->getPicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$8(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->val$req:Lcom/sina/weibo/sdk/component/ShareRequestParam;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const-string v2, "upload pic faild"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkErrorResponse(Landroid/app/Activity;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$7()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post onWeiboException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->val$req:Lcom/sina/weibo/sdk/component/ShareRequestParam;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->sendSdkErrorResponse(Landroid/app/Activity;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 179
    return-void
.end method
