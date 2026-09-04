.class Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;
.super Lcom/sina/weibo/sdk/component/WeiboWebViewClient;
.source "WidgetWeiboWebViewClient.java"


.field private mAct:Landroid/app/Activity;

.field private mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

.field private mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;


.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    .line 22
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getWidgetRequestCallback()Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    .line 23
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 24
    return-void
.end method


.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 84
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 40
    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 41
    const-string v1, "sinaweibo://browser/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const-string v1, "sinaweibo://browser/datatransfer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    :cond_1
    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/Utility;->parseUri(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    if-eqz v1, :cond_3

    .line 50
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetCallback:Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;

    invoke-interface {v1, p2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;->onWebViewResult(Ljava/lang/String;)V

    .line 52
    :cond_3
    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mAct:Landroid/app/Activity;

    .line 54
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getAuthListenerKey()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->mWidgetRequestParam:Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->getWidgetRequestCallbackKey()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
