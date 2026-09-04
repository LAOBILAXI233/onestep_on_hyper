.class public Lcom/sina/weibo/sdk/exception/WeiboAuthException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboAuthException.java"


.field public static final DEFAULT_AUTH_ERROR_CODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_AUTH_ERROR_DESC:Ljava/lang/String; = "Unknown Error Description"

.field public static final DEFAULT_AUTH_ERROR_TYPE:Ljava/lang/String; = "Unknown Error Type"

.field private static final serialVersionUID:J = 0x1L


.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorType:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorType:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorCode:Ljava/lang/String;

    .line 64
    return-void
.end method


.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
