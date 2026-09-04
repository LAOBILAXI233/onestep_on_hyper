.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setTopNavTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


.method constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$9(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$9(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 224
    const/4 v2, 0x3

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->execRequest(Landroid/app/Activity;I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 227
    return-void
.end method
