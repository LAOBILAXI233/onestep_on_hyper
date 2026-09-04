.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;
.super Ljava/lang/Object;
.source "WeiboQuickAuthorize.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;,
        Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;,
        Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;
    }
.end annotation


.field private static final C:Ljava/lang/String; = "weatherandroid"

.field private static final FROM:Ljava/lang/String;

.field private static final PIN:Ljava/lang/String; = "21Aip2ZtHQb1uI6SM44OFBBOqoKjTQOa"

.field private static final TAG:Ljava/lang/String; = "WeiboQuickAuthorize"


.field private mContext:Landroid/content/Context;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->j()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->FROM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 33
    return-void
.end method

.method static synthetic access$000(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object v0
.end method

.method static synthetic access$100(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->toGetGuestToken()V

    return-void
.end method

.method static synthetic access$200(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private toGetGuestToken()V
    .locals 5

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    const-string v1, "weatherandroid"

    const-string v2, "21Aip2ZtHQb1uI6SM44OFBBOqoKjTQOa"

    sget-object v3, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->FROM:Ljava/lang/String;

    new-instance v4, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;

    invoke-direct {v4, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$a;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchGuestUserInfoAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


.method public weiboQuickAuth(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;

    invoke-direct {v1, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$b;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->quickAuthorizeAsync(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;

    invoke-direct {v1, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize$c;-><init>(Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchUserInfoAsync(Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/activity/WeiboQuickAuthorize;->toGetGuestToken()V

    goto :goto_0
.end method
