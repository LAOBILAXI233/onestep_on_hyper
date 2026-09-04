.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;
.super Ljava/lang/Object;
.source "SmartisanManagerImpl.java"

.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


.method public autoRefreshKpStat()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->g()Z

    .line 174
    return-void
.end method

.method public enterMainKpStat()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->f()Z

    .line 169
    return-void
.end method

.method public exitSinaStat()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->c()Z

    .line 268
    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 43
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "KEY_STR_REAL_CITY_CODE"

    const-string v2, "CHXX0008"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/a/a/a;->a()Ltqt/weibo/cn/tqtsdk/a/a/a;

    move-result-object v1

    new-instance v2, Ltqt/weibo/cn/tqtsdk/a/b/a;

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Ltqt/weibo/cn/tqtsdk/a/b/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ltqt/weibo/cn/tqtsdk/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    if-eqz p1, :cond_13

    .line 51
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    const-string v1, "INIT_BOOLEAN_WEATHER_NOTIFICATION_ACTIVATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "sina.mobile.tianqitong.spkey_boolean_use_weather_notification_current_weather"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 57
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "INIT_BOOLEAN_AUTO_UPDATE_ACTIVATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const-string v1, "sina.mobile.tianqitong.action.auto_update"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 60
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v1, "INIT_STRING_ARRAY_ALL_CITY_CODES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    const-string v1, ""

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    .line 66
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 67
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v1, v0

    .line 74
    :cond_6
    const-string v0, "cached_citys"

    invoke-static {v3, v0, v1}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_7
    const-string v1, "INIT_STRING_LOCATE_CITYCOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    const-string v1, "INIT_STRING_WIDGET_CITYCODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    const-string v1, "widget_city"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_8
    const-string v1, "INIT_STRING_NOTIFICATION_CITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 82
    const-string v1, "notification_city"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_9
    const-string v1, "INIT_STRING_CURRENT_USING_4X2_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 85
    const-string v1, "appwidget_pkg_name_4x2"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string v1, "INIT_STRING_CURRENT_USING_4X1_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 88
    const-string v1, "appwidget_pkg_name_4x1"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_b
    const-string v1, "INIT_STRING_CURRENT_USING_5X2_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 92
    const-string v1, "appwidget_pkg_name_5x2"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_c
    const-string v1, "INIT_STRING_CURRENT_USING_5X1_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 95
    const-string v1, "appwidget_pkg_name_5x1"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_d
    const-string v1, "INIT_BOOLEAN_USING_4X2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    const-string v1, "SPKEYS_BOOLEAN_USING_4X2"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 98
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 101
    :cond_e
    const-string v1, "INIT_BOOLEAN_USING_4X1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 102
    const-string v1, "SPKEYS_BOOLEAN_USING_4X1"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 102
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 106
    :cond_f
    const-string v1, "INIT_BOOLEAN_USING_5X2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 107
    const-string v1, "SPKEYS_BOOLEAN_USING_5X2"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 107
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 111
    :cond_10
    const-string v1, "INIT_BOOLEAN_USING_5X1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 112
    const-string v1, "SPKEYS_BOOLEAN_USING_5X1"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    invoke-static {v3, v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 114
    :cond_11
    const-string v1, "INIT_LONG_TIMES_APP_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 115
    const-string v1, "spkey_string_end_launch_time"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 115
    invoke-static {v3, v1, v4, v5}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 118
    :cond_12
    const-string v1, "INIT_LONG_TIMES_HOMEPAGE_MANUAL_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "spkey_string_end_refresh_weather_time"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    invoke-static {v3, v1, v4, v5}, Ltqt/weibo/cn/tqtsdk/kit/b/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 128
    :cond_13
    return-void
.end method

.method public initSinaStat()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->b()Z

    .line 234
    return-void
.end method

.method public initTqtStat()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Z

    .line 133
    return-void
.end method

.method public initWbStat()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->t()V

    .line 278
    return-void
.end method

.method public launchByAbnormalNotiKpStat()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->l()Z

    .line 199
    return-void
.end method

.method public launchByAdvanceWarningNotiKpStat()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->q()Z

    .line 224
    return-void
.end method

.method public launchByAlarmKpStat()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->n()Z

    .line 209
    return-void
.end method

.method public launchByOperationNotiKpStat()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->o()Z

    .line 214
    return-void
.end method

.method public launchBySolarTermsNotiKpStat()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->k()Z

    .line 194
    return-void
.end method

.method public launchBySubwayNotiKpStat()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->r()Z

    .line 229
    return-void
.end method

.method public launchByWeatherNotiKpStat()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->p()Z

    .line 219
    return-void
.end method

.method public launchByWidgetKpStat()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->m()Z

    .line 204
    return-void
.end method

.method public onDestroyActivityWbStat(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->c(Landroid/content/Context;)V

    .line 320
    return-void
.end method

.method public onPauseActivityWbStat(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/Context;)V

    .line 310
    return-void
.end method

.method public onResumeActivityWbStat(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->b(Landroid/content/Context;)V

    .line 315
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0, p1, p2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    .line 330
    return-void
.end method

.method public sendSinaStat()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->d()Z

    .line 273
    return-void
.end method

.method public sendTqtStat()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->e()Z

    .line 164
    return-void
.end method

.method public sendWbStat()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->s()V

    .line 325
    return-void
.end method

.method public someSinaStat(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    .line 240
    const-string v1, "SINA_INT_APP_ICON_INTO_TQT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "174"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    .line 243
    const-string v1, "275"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v1, "SINA_INT_NOTIFICATION_INTO_TQT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "279"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 248
    :cond_2
    const-string v1, "SINA_INT_REFRESH_MANUALLY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const-string v1, "11G"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "SINA_INT_INTO_CITY_MANAGER_BY_CLICK"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    const-string v1, "115"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 254
    :cond_4
    const-string v1, "SINA_INT_SWITCH_CITY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    const-string v1, "11A"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 257
    :cond_5
    const-string v1, "SINA_INT_APP_BROUGHT_TO_FRONT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    const-string v1, "272"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 259
    :cond_6
    const-string v1, "SINA_INT_NOTIFICATION_SHOWN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "27C"

    invoke-interface {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public someTqtStat(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string v0, "TQT_INT_APP_ICON_INTO_TQT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "itoltvi"

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c(Ljava/lang/String;)V

    .line 141
    const-string v0, "itoltvi"

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c(Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v0, "TQT_INT_NOTIFICATION_INTO_TQT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "TQT_INT_REFRESH_MANUALLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "syxl"

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    const-string v0, "TQT_INT_INTO_CITY_MANAGER_BY_CLICK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "TQT_INT_SWITCH_CITY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const-string v0, "itodtccafp"

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "TQT_INT_APP_BROUGHT_TO_FRONT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "TQT_INT_NOTIFICATION_SHOWN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public someWbStat(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    .line 284
    const-string v1, "WB_INT_APP_ICON_INTO_TQT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    const-string v2, "275"

    invoke-interface {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v1, "WB_INT_NOTIFICATION_INTO_TQT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    const-string v2, "279"

    invoke-interface {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    const-string v1, "WB_INT_REFRESH_MANUALLY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string v1, "WB_INT_INTO_CITY_MANAGER_BY_CLICK"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    const-string v1, "WB_INT_SWITCH_CITY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const-string v1, "WB_INT_APP_BROUGHT_TO_FRONT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    const-string v2, "272"

    invoke-interface {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_3
    const-string v1, "WB_INT_NOTIFICATION_SHOWN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    const-string v2, "27C"

    invoke-interface {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRefreshKpStat()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->h()Z

    .line 179
    return-void
.end method

.method public usingWeatherNotiKpStat()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->i()Z

    .line 184
    return-void
.end method

.method public usingWidgetKpStat()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;

    move-result-object v0

    check-cast v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/d;->j()Z

    .line 189
    return-void
.end method
