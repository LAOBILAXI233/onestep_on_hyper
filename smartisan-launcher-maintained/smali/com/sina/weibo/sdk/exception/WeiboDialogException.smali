.class public Lcom/sina/weibo/sdk/exception/WeiboDialogException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboDialogException.java"


.field private static final serialVersionUID:J = 0x1L


.field private mErrorCode:I

.field private mFailingUrl:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 44
    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->mErrorCode:I

    .line 45
    iput-object p3, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->mFailingUrl:Ljava/lang/String;

    .line 46
    return-void
.end method


.method public getErrorCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->mErrorCode:I

    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->mFailingUrl:Ljava/lang/String;

    return-object v0
.end method
