.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/c;
.super Ljava/lang/Object;
.source "SdkInitTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/c;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    const-string v0, "861524840"

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setAppKey(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setChannel(Ljava/lang/String;)V

    .line 27
    const-wide/32 v0, 0x15f90

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setUploadInterval(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method
