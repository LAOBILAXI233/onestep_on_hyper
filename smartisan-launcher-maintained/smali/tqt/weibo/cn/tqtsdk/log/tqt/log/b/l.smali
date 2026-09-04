.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;
.super Ljava/lang/Object;
.source "UserActionCollectInitTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 18
    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;->a:Landroid/content/Context;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/l;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 23
    return-void
.end method
