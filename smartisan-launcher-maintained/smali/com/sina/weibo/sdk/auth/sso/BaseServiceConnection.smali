.class abstract Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;
.super Ljava/lang/Object;
.source "BaseServiceConnection.java"

.implements Landroid/content/ServiceConnection;


.field protected mContext:Landroid/content/Context;

.field protected mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/BaseServiceConnection;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 14
    return-void
.end method
