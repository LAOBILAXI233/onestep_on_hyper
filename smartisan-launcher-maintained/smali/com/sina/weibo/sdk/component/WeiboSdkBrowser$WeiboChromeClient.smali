.class Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WeiboSdkBrowser.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboChromeClient"
.end annotation


.field final synthetic this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


.method private constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    return-void
.end method


.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$0(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->drawProgress(I)V

    .line 444
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$1(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    .line 446
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->refreshAllViews()V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$2(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$1(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V

    .line 450
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->refreshAllViews()V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$3(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$4(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$5(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;->this$0:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->access$6(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    .line 461
    :cond_0
    return-void
.end method
