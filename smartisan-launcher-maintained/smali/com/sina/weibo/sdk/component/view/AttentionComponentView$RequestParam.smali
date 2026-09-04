.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestParam"
.end annotation


.field private mAccessToken:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAttentionScreenName:Ljava/lang/String;

.field private mAttentionUid:Ljava/lang/String;

.field private mAuthlistener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Z
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->hasAuthoriz()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionScreenName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAuthlistener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method public static createRequestParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;-><init>()V

    .line 272
    iput-object p0, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAppKey:Ljava/lang/String;

    .line 273
    iput-object p1, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionUid:Ljava/lang/String;

    .line 274
    iput-object p2, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionScreenName:Ljava/lang/String;

    .line 275
    iput-object p3, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAuthlistener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 276
    return-object v0
.end method

.method public static createRequestParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;-><init>()V

    .line 253
    iput-object p0, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAppKey:Ljava/lang/String;

    .line 254
    iput-object p1, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAccessToken:Ljava/lang/String;

    .line 255
    iput-object p2, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionUid:Ljava/lang/String;

    .line 256
    iput-object p3, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAttentionScreenName:Ljava/lang/String;

    .line 257
    iput-object p4, v0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAuthlistener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 258
    return-object v0
.end method

.method private hasAuthoriz()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$RequestParam;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
