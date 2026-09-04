.class final enum Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;
.super Ljava/lang/Enum;
.source "SsoHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;",
        ">;"
    }
.end annotation


.field private static final synthetic ENUM$VALUES:[Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

.field public static final enum FETCH_USER_LIST:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

.field public static final enum INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

.field public static final enum QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

.field public static final enum QUICK_AUTH_BY_UID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    const-string v1, "QUICK_AUTH"

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 124
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    const-string v1, "QUICK_AUTH_BY_UID"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH_BY_UID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 125
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    const-string v1, "FETCH_USER_LIST"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->FETCH_USER_LIST:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 126
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->QUICK_AUTH_BY_UID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->FETCH_USER_LIST:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->INVALID:Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->ENUM$VALUES:[Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;->ENUM$VALUES:[Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/auth/sso/SsoHandler$RequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
