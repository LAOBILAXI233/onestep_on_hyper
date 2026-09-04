.class Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->createDownloadConfirmDialog(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field private final synthetic val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;


.method constructor <init>(Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$2;->val$listener:Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;->onCancel()V

    .line 82
    :cond_0
    return-void
.end method
