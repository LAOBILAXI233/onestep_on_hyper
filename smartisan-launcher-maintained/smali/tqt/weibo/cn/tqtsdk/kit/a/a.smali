.class public Ltqt/weibo/cn/tqtsdk/kit/a/a;
.super Ljava/lang/Object;
.source "AccountPref.java"


.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    const-string v1, "access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {p2}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "save_token_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "access_token"

    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_guest"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    const-string v1, "account_uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_uid"

    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    const-string v1, "tqt_uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tqt_uid"

    .line 92
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public static d(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tqt_uid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 111
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    const-string v1, "unbind"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 116
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    const-string v1, "token_guest"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
