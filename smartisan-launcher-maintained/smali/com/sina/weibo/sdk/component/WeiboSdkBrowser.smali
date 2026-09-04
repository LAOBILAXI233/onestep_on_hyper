.class public Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.super Landroid/app/Activity;
.source "WeiboSdkBrowser.java"

.implements Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;
    }
.end annotation


.field public static final BROWSER_CLOSE_SCHEME:Ljava/lang/String; = "sinaweibo://browser/close"

.field public static final BROWSER_WIDGET_SCHEME:Ljava/lang/String; = "sinaweibo://browser/datatransfer"

.field private static final CANCEL_EN:Ljava/lang/String; = "Close"

.field private static final CANCEL_ZH_CN:Ljava/lang/String; = "\u5173\u95ed"

.field private static final CANCEL_ZH_TW:Ljava/lang/String; = "\u5173\u95ed"

.field private static final CHANNEL_DATA_ERROR_EN:Ljava/lang/String; = "channel_data_error"

.field private static final CHANNEL_DATA_ERROR_ZH_CN:Ljava/lang/String; = "\u91cd\u65b0\u52a0\u8f7d"

.field private static final CHANNEL_DATA_ERROR_ZH_TW:Ljava/lang/String; = "\u91cd\u65b0\u8f09\u5165"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_EN:Ljava/lang/String; = "A network error occurs, please tap the button to reload"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_ZH_CN:Ljava/lang/String; = "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

.field private static final EMPTY_PROMPT_BAD_NETWORK_UI_ZH_TW:Ljava/lang/String; = "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

.field private static final LOADINFO_EN:Ljava/lang/String; = "Loading...."

.field private static final LOADINFO_ZH_CN:Ljava/lang/String; = "\u52a0\u8f7d\u4e2d...."

.field private static final LOADINFO_ZH_TW:Ljava/lang/String; = "\u8f09\u5165\u4e2d...."

.field private static final TAG:Ljava/lang/String;

.field private static final WEIBOBROWSER_NO_TITLE_EN:Ljava/lang/String; = "No Title"

.field private static final WEIBOBROWSER_NO_TITLE_ZH_CN:Ljava/lang/String; = "\u65e0\u6807\u9898"

.field private static final WEIBOBROWSER_NO_TITLE_ZH_TW:Ljava/lang/String; = "\u7121\u6a19\u984c"


.field private isErrorPage:Z

.field private isLoading:Z

.field private mHtmlTitle:Ljava/lang/String;

.field private mLeftBtn:Landroid/widget/TextView;

.field private mLoadErrorRetryBtn:Landroid/widget/Button;

.field private mLoadErrorView:Landroid/widget/LinearLayout;

.field private mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

.field private mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

.field private mSpecifyTitle:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    return-void
.end method

.method static synthetic access$10(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboCustomScheme(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->updateTitleName()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    return-object v0
.end method

.method public static closeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/WeiboCallbackManager;

    move-result-object v0

    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->removeWeiboAuthListener(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 599
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/WeiboCallbackManager;->removeWidgetRequestCallback(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 603
    :cond_1
    return-void
.end method

.method private createBrowserRequestParam(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;
    .locals 3

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 502
    const-string v0, "key_launcher"

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    .line 503
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_0

    .line 504
    new-instance v0, Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installAuthWeiboWebViewClient(Lcom/sina/weibo/sdk/component/AuthRequestParam;)V

    .line 522
    :goto_0
    return-object v0

    .line 510
    :cond_0
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_1

    .line 511
    new-instance v0, Lcom/sina/weibo/sdk/component/ShareRequestParam;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 513
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installShareWeiboWebViewClient(Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    goto :goto_0

    .line 516
    :cond_1
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->WIDGET:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_2

    .line 517
    new-instance v0, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    .line 518
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setupRequestParam(Landroid/os/Bundle;)V

    .line 519
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->installWidgetWeiboWebViewClient(Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    const-string v0, "sinaweibo"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    .line 425
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->promptError()V

    .line 427
    :cond_0
    return-void
.end method

.method private hiddenErrorPrompt()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 437
    return-void
.end method

.method private initDataFromIntent(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->createBrowserRequestParam(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    .line 141
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    if-eqz v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getSpecifyTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const/4 v0, 0x0

    .line 158
    :goto_1
    return v0

    .line 145
    :cond_1
    const-string v1, "key_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "key_specify_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_2
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initTitleBar()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 360
    .line 362
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 363
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 364
    const/4 v2, -0x1

    .line 365
    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    const-string v1, "weibosdk_navigationbar_background.9.png"

    .line 366
    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    .line 370
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 371
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const/16 v2, -0x7e00

    const v3, 0x66ff8200

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    const-string v2, "Close"

    const-string v3, "\u5173\u95ed"

    const-string v4, "\u5173\u95ed"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 377
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 379
    invoke-static {p0, v8}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 380
    invoke-static {p0, v8}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 381
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 384
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    .line 385
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 386
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const v2, -0xadadae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 388
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 389
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    const/16 v2, 0xa0

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 391
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 395
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 397
    return-object v0
.end method

.method private initWebView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/Utility;->generateUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 211
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 212
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$WeiboChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 213
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 214
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 215
    return-void
.end method

.method private installAuthWeiboWebViewClient(Lcom/sina/weibo/sdk/component/AuthRequestParam;)V
    .locals 1

    .prologue
    .line 530
    new-instance v0, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/AuthWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/AuthRequestParam;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 531
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/WeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 532
    return-void
.end method

.method private installShareWeiboWebViewClient(Lcom/sina/weibo/sdk/component/ShareRequestParam;)V
    .locals 1

    .prologue
    .line 535
    new-instance v0, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    .line 536
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/ShareWeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 537
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 538
    return-void
.end method

.method private installWidgetWeiboWebViewClient(Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V
    .locals 1

    .prologue
    .line 541
    new-instance v0, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/WidgetRequestParam;)V

    .line 542
    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/WidgetWeiboWebViewClient;->setBrowserRequestCallBack(Lcom/sina/weibo/sdk/component/BrowserRequestCallBack;)V

    .line 543
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWeiboWebViewClient:Lcom/sina/weibo/sdk/component/WeiboWebViewClient;

    .line 544
    return-void
.end method

.method private isWeiboCustomScheme(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    const-string v1, "sinaweibo"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z
    .locals 2

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->getLauncher()Lcom/sina/weibo/sdk/component/BrowserLauncher;

    move-result-object v0

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->SHARE:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private promptError()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 432
    return-void
.end method

.method private setContentView()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 248
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 251
    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 254
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 256
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initTitleBar()Landroid/view/View;

    move-result-object v2

    .line 264
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    invoke-static {p0, v9}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 265
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    const-string v4, "weibosdk_common_shadow_top.9.png"

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 267
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v4, Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    .line 271
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setBackgroundColor(I)V

    .line 272
    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->drawProgress(I)V

    .line 273
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v5

    .line 273
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v5, v4}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    .line 282
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 283
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 287
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    .line 290
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 292
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 293
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 300
    const-string v3, "weibosdk_empty_failed.png"

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 307
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 306
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 305
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 304
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 308
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 313
    const v3, -0x424243

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    const-string v3, "A network error occurs, please tap the button to reload"

    .line 317
    const-string v4, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    .line 318
    const-string v5, "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

    .line 315
    invoke-static {p0, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    .line 326
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 327
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    const v3, -0x878788

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 328
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 329
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    .line 330
    const-string v3, "channel_data_error"

    .line 331
    const-string v4, "\u91cd\u65b0\u52a0\u8f7d"

    .line 332
    const-string v5, "\u91cd\u65b0\u8f09\u5165"

    .line 329
    invoke-static {p0, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    .line 334
    const-string v3, "weibosdk_common_button_alpha.9.png"

    .line 335
    const-string v4, "weibosdk_common_button_alpha_highlighted.9.png"

    .line 333
    invoke-static {p0, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    const/16 v3, 0x8e

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 338
    const/16 v4, 0x2e

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 336
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 339
    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 340
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    new-instance v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorRetryBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView(Landroid/view/View;)V

    .line 356
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setTopNavTitle()V

    .line 357
    return-void
.end method

.method private setTopNavTitle()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLeftBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method private setViewLoading()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    .line 417
    const-string v1, "Loading...."

    const-string v2, "\u52a0\u8f7d\u4e2d...."

    const-string v3, "\u8f09\u5165\u4e2d...."

    .line 416
    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    .line 419
    return-void
.end method

.method private setViewNormal()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->updateTitleName()V

    .line 411
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mLoadingBar:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    .line 412
    return-void
.end method

.method public static startAuth(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcom/sina/weibo/sdk/component/AuthRequestParam;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 103
    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->AUTH:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setLauncher(Lcom/sina/weibo/sdk/component/BrowserLauncher;)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setUrl(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setAuthInfo(Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    .line 106
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/AuthRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method private startShare()V
    .locals 6

    .prologue
    .line 166
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v1, "Enter startShare()............"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    check-cast v0, Lcom/sina/weibo/sdk/component/ShareRequestParam;

    .line 168
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v2, "loadUrl hasImage............"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/ShareRequestParam;->buildUploadPicParam(Lcom/sina/weibo/sdk/net/WeiboParameters;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 172
    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    const-string v3, "http://service.weibo.com/share/mobilesdk_uppic.php"

    .line 173
    const-string v4, "POST"

    new-instance v5, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;

    invoke-direct {v5, p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/ShareRequestParam;)V

    .line 172
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startShared(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method private updateTitleName()V
    .locals 2

    .prologue
    .line 235
    const-string v0, ""

    .line 237
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    .line 243
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mSpecifyTitle:Ljava/lang/String;

    goto :goto_0
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initDataFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView()V

    .line 129
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->initWebView()V

    .line 131
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboShareRequestParam(Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->startShare()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 482
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->clearCookies(Landroid/content/Context;)V

    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 484
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 488
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mRequestParam:Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;

    .line 491
    const/4 v1, 0x3

    .line 490
    invoke-virtual {v0, p0, v1}, Lcom/sina/weibo/sdk/component/BrowserRequestParamBase;->execRequest(Landroid/app/Activity;I)V

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 494
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 569
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->promptError()V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isErrorPage:Z

    .line 574
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->hiddenErrorPrompt()V

    goto :goto_0
.end method

.method public onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 548
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mUrl:Ljava/lang/String;

    .line 550
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isWeiboCustomScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->mHtmlTitle:Ljava/lang/String;

    .line 559
    :cond_0
    return-void
.end method

.method public onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 581
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 583
    const-string v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->handleReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    const-string v1, "onReceivedSslErrorCallBack........."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 478
    return-void
.end method

.method protected refreshAllViews()V
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->isLoading:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setViewLoading()V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setViewNormal()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 563
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    return v0
.end method
