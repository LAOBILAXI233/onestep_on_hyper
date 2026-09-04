.class Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;
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


.field private final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;->val$context:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/WeiboDownloader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/WeiboDownloader;->access$0(Landroid/content/Context;)V

    .line 75
    return-void
.end method
