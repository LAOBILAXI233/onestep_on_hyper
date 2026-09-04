.class public Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.super Ljava/lang/Object;
.source "SsoHandler.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;,
        Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;
    }
.end annotation


.field public static final AUTH_FAILED_MSG:Ljava/lang/String; = "auth failed!!!!!"

.field public static final AUTH_FAILED_NOT_INSTALL_MSG:Ljava/lang/String; = "not install weibo client!!!!!"

.field private static final DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME:Ljava/lang/String; = "com.sina.weibo.remotessoservice"

.field private static final EXTRA_NICK_NAME:Ljava/lang/String; = "com.sina.weibo.intent.extra.NICK_NAME"

.field private static final EXTRA_QUICK_AUTH_UID:Ljava/lang/String; = "com.sina.weibo.intent.extra.QUICK_AUTH_UID"

.field private static final EXTRA_REQUEST_CODE:Ljava/lang/String; = "com.sina.weibo.intent.extra.REQUEST_CODE"

.field public static final EXTRA_USER_ICON:Ljava/lang/String; = "com.sina.weibo.intent.extra.USER_ICON"

.field private static final EXTRA_USER_UID:Ljava/lang/String; = "com.sina.weibo.intent.extra.USER_UID"

.field private static final EXTRA_WB_TOKEN:Ljava/lang/String; = "com.sina.weibo.intent.extra.WB_TOKEN"

.field private static final MSG_ON_COMPLETE:I = 0x1

.field private static final MSG_ON_EXCEPTION:I = 0x2

.field private static final OAUTH2_BASE_URL:Ljava/lang/String; = "https://open.weibo.cn/oauth2/authorize"

.field private static final REQUEST_CODE_GET_USER_INFO:I = 0x80ce

.field private static final REQUEST_CODE_MOBILE_REGISTER:I = 0x9c40

.field private static final REQUEST_CODE_SSO_AUTH:I = 0x80cd

.field private static final TAG:Ljava/lang/String;


.field private mAuthActivity:Landroid/app/Activity;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

.field private mInternalListener:Lcom/sina/weibo/sdk/net/RequestListener;

.field private mQuickAuthUid:Ljava/lang/String;

.field private mSSOAuthRequestCode:I

.field private mUserIconimageBytes:[B

.field private mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

.field private mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

.field private mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserIconimageBytes:[B

    .line 959
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mInternalListener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 143
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    .line 144
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 145
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-direct {v0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    .line 146
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/AidTask;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->aidTaskInit(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserIconimageBytes:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v0

    return v0
.end method

.method private authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V
    .locals 4

    .prologue
    .line 224
    iput p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 225
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 227
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne p3, v0, :cond_1

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 238
    :cond_2
    const/4 v0, 0x0

    .line 239
    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    if-ne p3, v1, :cond_3

    .line 240
    const/4 v0, 0x1

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoAuthServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Z)V

    invoke-direct {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v1

    .line 247
    if-nez v1, :cond_0

    .line 248
    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 251
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "not install weibo client!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z
    .locals 3

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isWeiboAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 702
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sina.weibo.remotessoservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static convertToken2GsidUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://m.weibo.cn/login?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    const-string v1, "backURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v1, "&backTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, "&vt=4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    const-string v1, "&access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchTokenAsync(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 766
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 767
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v1, "response_type"

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getKeyHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "quick_auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance v1, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    const-string v2, "https://open.weibo.cn/oauth2/authorize"

    const-string v3, "GET"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mInternalListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->request4RdirectURL(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 784
    return-void
.end method

.method private getUserInfoListFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/auth/sso/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 658
    :goto_0
    const/16 v0, 0x14

    if-lt v1, v0, :cond_1

    .line 682
    :cond_0
    return-object v3

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "com.sina.weibo.intent.extra.USER_UID_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "com.sina.weibo.intent.extra.NICK_NAME_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "com.sina.weibo.intent.extra.USER_ICON_"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 665
    const/4 v0, 0x0

    .line 667
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 674
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 675
    if-eqz v6, :cond_2

    .line 676
    array-length v0, v6

    invoke-static {v6, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    :cond_2
    new-instance v6, Lcom/sina/weibo/sdk/auth/sso/UserInfo;

    invoke-direct {v6, v4, v5, v0}, Lcom/sina/weibo/sdk/auth/sso/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


.method public authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2

    .prologue
    .line 183
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->ALL:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 184
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 185
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 504
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const v0, 0x80cd

    if-ne v0, p1, :cond_8

    .line 509
    if-ne p2, v4, :cond_6

    .line 511
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-static {v0, v1, p3}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->checkResponseAppLegal(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    const-string v2, ""

    const-string v3, ""

    const-string v4, "Weibo Client is illegal"

    invoke-direct {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v1, "error_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    const-string v2, "error_description"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    sget-object v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error_description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 526
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login Success! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 535
    :cond_2
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Failed to receive access token by SSO"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto/16 :goto_0

    .line 539
    :cond_3
    const-string v3, "access_denied"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 540
    :cond_4
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0

    .line 544
    :cond_5
    sget-object v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Login failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v4, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v4, v0, v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 549
    :cond_6
    if-nez p2, :cond_0

    .line 551
    if-eqz p3, :cond_7

    .line 552
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 554
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    .line 555
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 557
    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-direct {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 560
    :cond_7
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0

    .line 564
    :cond_8
    const v0, 0x80ce

    if-ne v0, p1, :cond_15

    .line 566
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->FETCH_USER_LIST:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    if-ne v0, v2, :cond_e

    .line 567
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 569
    if-eqz p3, :cond_a

    const-string v0, "com.sina.weibo.intent.extra.USER_UID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 570
    :goto_1
    if-eqz p3, :cond_b

    const-string v0, "com.sina.weibo.intent.extra.NICK_NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 572
    :goto_2
    if-eqz p3, :cond_c

    const-string v0, "com.sina.weibo.intent.extra.USER_ICON"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 573
    :goto_3
    if-eqz v0, :cond_19

    .line 574
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    :goto_4
    sget-object v4, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get the nick name & user icon from Weibo Client: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-eqz p3, :cond_9

    .line 581
    invoke-direct {p0, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->getUserInfoListFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 584
    :cond_9
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    if-eqz v4, :cond_0

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 586
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrievedFailed()V

    goto/16 :goto_0

    .line 569
    :cond_a
    const-string v0, ""

    move-object v3, v0

    goto :goto_1

    .line 570
    :cond_b
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    :cond_c
    move-object v0, v1

    .line 572
    goto :goto_3

    .line 588
    :cond_d
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    new-instance v5, Lcom/sina/weibo/sdk/auth/sso/UserInfo;

    invoke-direct {v5, v3, v2, v0}, Lcom/sina/weibo/sdk/auth/sso/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v5}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrieved(Lcom/sina/weibo/sdk/auth/sso/UserInfo;)V

    .line 589
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoListRetrieved(Ljava/util/List;)V

    goto/16 :goto_0

    .line 595
    :cond_e
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    if-ne v0, v2, :cond_12

    .line 596
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 597
    if-eqz p3, :cond_10

    const-string v0, "com.sina.weibo.intent.extra.WB_TOKEN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_5
    if-eqz p3, :cond_f

    const-string v1, "com.sina.weibo.intent.extra.USER_ICON"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    :cond_f
    iput-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserIconimageBytes:[B

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 605
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchTokenAsync(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :cond_10
    const-string v0, ""

    goto :goto_5

    .line 607
    :cond_11
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Get the WB Token from Weibo Client failed, do SSO logic!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 612
    :cond_12
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH_BY_UID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    if-ne v0, v1, :cond_0

    .line 613
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 614
    if-eqz p3, :cond_13

    const-string v0, "com.sina.weibo.intent.extra.WB_TOKEN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 618
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->fetchTokenAsync(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_13
    const-string v0, ""

    goto :goto_6

    .line 620
    :cond_14
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 624
    :cond_15
    const v0, 0x9c40

    if-ne p1, v0, :cond_0

    .line 627
    if-ne p2, v4, :cond_16

    .line 628
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 629
    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Login Success! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 635
    :cond_16
    if-nez p2, :cond_0

    .line 636
    if-eqz p3, :cond_18

    .line 637
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    if-nez v0, :cond_17

    .line 640
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_17
    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "error_description"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 648
    :cond_18
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    goto/16 :goto_0

    :cond_19
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public authorizeClientSso(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 199
    :cond_0
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->SsoOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 200
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 201
    return-void
.end method

.method public authorizeWeb(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2

    .prologue
    .line 211
    const v0, 0x80cd

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;->WebOnly:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;

    invoke-direct {p0, v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(ILcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/sso/SsoHandler$AuthType;)V

    .line 212
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->activateApp()V

    .line 213
    return-void
.end method

.method public fetchGuestUserInfoAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "https://api.weibo.cn/2/sdk/login"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    new-instance v2, Lcom/sina/weibo/sdk/net/WeiboParameters;

    .line 796
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-direct {v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 798
    const-string v0, ""

    .line 800
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->getInstance(Landroid/content/Context;)Lcom/sina/deviceidjnisdk/IDeviceId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/deviceidjnisdk/IDeviceId;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 803
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_0
    const-string v3, "did"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v3, "c"

    invoke-virtual {v2, v3, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v3, ""

    .line 812
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v3, p2, v0}, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->calculateM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v3, "m"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, ""

    .line 818
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/deviceidjnisdk/DeviceIdFactory;->getIValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 819
    const-string v3, "i"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "from"

    invoke-virtual {v2, v0, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    new-instance v4, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;

    invoke-direct {v4, p0, p4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$3;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 859
    return-void
.end method

.method public fetchGuestUserInfoAsyncByAid(Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 868
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/AidTask;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;

    move-result-object v1

    .line 869
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;

    invoke-direct {v2, p0, p1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$4;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Lcom/sina/weibo/sdk/auth/sso/IGuestUserInfoListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    .line 896
    return-void
.end method

.method public fetchUserInfoAsync(Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isSupportFetchUserInfo()Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    if-eqz p1, :cond_1

    .line 417
    invoke-interface {p1}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrievedFailed()V

    .line 432
    :cond_1
    :goto_0
    return v0

    .line 421
    :cond_2
    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->FETCH_USER_LIST:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 422
    const v1, 0x80ce

    iput v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 423
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    .line 425
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/sina/weibo/sdk/auth/sso/FetchUserListServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 425
    invoke-direct {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v1

    .line 426
    if-nez v1, :cond_3

    .line 427
    if-eqz p1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    invoke-interface {v1}, Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;->onUserInfoRetrievedFailed()V

    goto :goto_0

    .line 432
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSSOAuthRequestCode()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    return v0
.end method

.method getUserInfoListener()Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mUserInfoListener:Lcom/sina/weibo/sdk/auth/sso/IUserInfoListener;

    return-object v0
.end method

.method getWebAuthHandler()Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    return-object v0
.end method

.method getWeiboAuthListener()Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    return-object v0
.end method

.method public initWeiboInfo()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/WeiboAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager;->getWeiboInfo()Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    .line 152
    return-void
.end method

.method public isSupportFetchUserInfo()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v2, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isWeiboAppInstalled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 400
    :cond_1
    :goto_0
    return v0

    .line 383
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 385
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 387
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 388
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 389
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 390
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 391
    if-gt v3, v5, :cond_3

    .line 392
    if-ne v3, v5, :cond_1

    if-lt v2, v1, :cond_1

    :cond_3
    move v0, v1

    .line 393
    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupportQuickAuth()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isWeiboAppInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getSupportApi()I

    move-result v2

    .line 269
    sget-object v3, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSupportQuickAuth sdkInt = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/16 v3, 0x2873

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 272
    goto :goto_0

    .line 279
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 280
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 281
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 283
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 284
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 285
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 286
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 287
    if-gt v3, v6, :cond_3

    .line 288
    if-ne v3, v6, :cond_0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 289
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    sget-object v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isWeiboAppInstalled()Z
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;->isLegal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quickAuthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isSupportQuickAuth()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    if-eqz p1, :cond_1

    .line 313
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 329
    :cond_1
    :goto_0
    return v0

    .line 317
    :cond_2
    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mQuickAuthUid:Ljava/lang/String;

    .line 319
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 321
    const v1, 0x80ce

    iput v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 322
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 322
    invoke-direct {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v1

    .line 323
    if-nez v1, :cond_3

    .line 324
    if-eqz p1, :cond_1

    .line 325
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 329
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public quickAuthorize(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboInfo:Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->initWeiboInfo()V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->isSupportQuickAuth()Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    if-eqz p2, :cond_1

    .line 346
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 365
    :cond_1
    :goto_0
    return v0

    .line 350
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH_BY_UID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 354
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mQuickAuthUid:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 357
    const v1, 0x80ce

    iput v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 358
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 359
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;

    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoQuickAuthServiceConnection;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    .line 358
    invoke-direct {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->bindRemoteSSOService(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;)Z

    move-result v1

    .line 359
    if-nez v1, :cond_3

    .line 360
    if-eqz p2, :cond_1

    .line 361
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    const-string v2, "auth failed!!!!!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 365
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public quickAuthorizeAsync(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z
    .locals 2

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 449
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mCurRequest:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mQuickAuthUid:Ljava/lang/String;

    .line 451
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 453
    const v0, 0x80ce

    iput v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    .line 455
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$2;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public registerOrLoginByMobile(Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 3

    .prologue
    .line 1013
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 1015
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    const-class v2, Lcom/sina/weibo/sdk/register/mobile/MobileRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1016
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1017
    const-string v2, "register_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1019
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    const v2, 0x9c40

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1020
    return-void
.end method

.method startSingleSignOn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 719
    const/4 v1, 0x1

    .line 720
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 722
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWebAuthHandler:Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/sso/WebAuthHandler;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAuthBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 728
    const-string v3, "_weibo_command_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    const-string v3, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v3, "aid"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v5}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/utils/Utility;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/utils/SecurityHelper;->validateAppSignatureForIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    :goto_0
    return v0

    .line 742
    :cond_0
    const v3, 0x80ce

    if-ne v3, p3, :cond_1

    .line 743
    :try_start_0
    const-string v3, "com.sina.weibo.intent.extra.REQUEST_CODE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mQuickAuthUid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 745
    const-string v3, "com.sina.weibo.intent.extra.QUICK_AUTH_UID"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mQuickAuthUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    :cond_1
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mSSOAuthRequestCode:I

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 749
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
