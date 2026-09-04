.class abstract Lcom/sina/weibo/sdk/component/WeiboWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WeiboWebViewClient.java"


.field protected mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;


.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


.method public setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->mCallBack:Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;

    .line 23
    return-void
.end method
