.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.super Landroid/widget/FrameLayout;
.source "AttentionComponentView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;
    }
.end annotation


.field private static final ALREADY_ATTEND_EN:Ljava/lang/String; = "Following"

.field private static final ALREADY_ATTEND_ZH_CN:Ljava/lang/String; = "\u5df2\u5173\u6ce8"

.field private static final ALREADY_ATTEND_ZH_TW:Ljava/lang/String; = "\u5df2\u95dc\u6ce8"

.field private static final ATTEND_EN:Ljava/lang/String; = "Follow"

.field private static final ATTEND_ZH_CN:Ljava/lang/String; = "\u5173\u6ce8"

.field private static final ATTEND_ZH_TW:Ljava/lang/String; = "\u95dc\u6ce8"

.field private static final ATTENTION_H5:Ljava/lang/String; = "http://widget.weibo.com/relationship/followsdk.php"

.field private static final FRIENDSHIPS_SHOW_URL:Ljava/lang/String; = "https://api.weibo.com/2/friendships/show.json"

.field private static final TAG:Ljava/lang/String;


.field private flButton:Landroid/widget/FrameLayout;

.field private mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

.field private mButton:Landroid/widget/TextView;

.field private volatile mIsLoadingState:Z

.field private pbLoading:Landroid/widget/ProgressBar;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->execAttented()V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->showFollowButton(Z)V

    return-void
.end method

.method private execAttented()V
    .locals 5

    .prologue
    .line 194
    new-instance v0, Lcom/sina/weibo/sdk/component/WidgetRequestParam;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;-><init>(Landroid/content/Context;)V

    .line 195
    const-string v1, "http://widget.weibo.com/relationship/followsdk.php"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setUrl(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 197
    const-string v2, "Follow"

    const-string v3, "\u5173\u6ce8"

    const-string v4, "\u95dc\u6ce8"

    .line 196
    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setSpecifyTitle(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$1(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAppKey(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAttentionFuid(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$5(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setAuthListener(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 201
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setToken(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$3;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->setWidgetRequestCallback(Lcom/sina/weibo/sdk/component/WidgetRequestParam$WidgetRequestCallback;)V

    .line 220
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WidgetRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v3, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 68
    .line 69
    const-string v0, "common_button_white.9.png"

    .line 70
    const-string v1, "common_button_white_highlighted.9.png"

    .line 68
    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    .line 73
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 77
    iget-object v3, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 78
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x42

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 80
    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->addView(Landroid/view/View;)V

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 85
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 86
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010079

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    .line 95
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$1;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0, v5}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->showFollowButton(Z)V

    .line 112
    return-void
.end method

.method private loadAttentionState(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)V
    .locals 5

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$1(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mIsLoadingState:Z

    .line 161
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->startLoading()V

    .line 163
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$1(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "access_token"

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "target_id"

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "target_screen_name"

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$4(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://api.weibo.com/2/friendships/show.json"

    const-string v3, "GET"

    new-instance v4, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;-><init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method private requestAsync(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0

    .prologue
    .line 228
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 229
    return-void
.end method

.method private showFollowButton(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->stopLoading()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    const-string v2, "Following"

    const-string v3, "\u5df2\u5173\u6ce8"

    const-string v4, "\u5df2\u95dc\u6ce8"

    .line 136
    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    const-string v1, "timeline_relationship_icon_attention.png"

    .line 139
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    const-string v2, "Follow"

    const-string v3, "\u5173\u6ce8"

    const-string v4, "\u95dc\u6ce8"

    .line 144
    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const/16 v1, -0x7e00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    const-string v1, "timeline_relationship_icon_addattention.png"

    .line 147
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->flButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    return-void
.end method


.method public setAttentionParam(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->mAttentionParam:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    .line 116
    invoke-static {p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->loadAttentionState(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)V

    .line 119
    :cond_0
    return-void
.end method
