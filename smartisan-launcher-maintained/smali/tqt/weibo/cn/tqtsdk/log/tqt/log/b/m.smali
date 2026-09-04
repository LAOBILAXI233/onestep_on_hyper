.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;
.super Ljava/lang/Object;
.source "UserActionCollectSPChangeTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;


.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;->a:Landroid/content/SharedPreferences;

    .line 15
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;->b:Ljava/lang/String;

    .line 16
    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 21
    return-void
.end method
