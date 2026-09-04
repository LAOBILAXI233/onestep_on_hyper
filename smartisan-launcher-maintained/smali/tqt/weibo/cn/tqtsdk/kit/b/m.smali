.class public Ltqt/weibo/cn/tqtsdk/kit/b/m;
.super Ljava/lang/Object;
.source "SpNameUtils.java"


.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 14
    const-string v0, "sina.mobile.tianqitong.uadaily"

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 38
    const-string v0, "tqt_weibo"

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 109
    const-string v0, "tqt_default_sp"

    .line 110
    const-string v0, "tqt_default_sp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
