.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;
.super Ljava/lang/Object;
.source "SdkOnResumeTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;->a:Landroid/content/Context;

    .line 15
    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 20
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onPageStart(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method
