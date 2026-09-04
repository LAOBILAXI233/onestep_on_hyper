.class public Ltqt/weibo/cn/tqtsdk/kit/b/e;
.super Ljava/lang/Object;
.source "CityUtils.java"


.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "locate_citycode"

    const-string v2, ""

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
