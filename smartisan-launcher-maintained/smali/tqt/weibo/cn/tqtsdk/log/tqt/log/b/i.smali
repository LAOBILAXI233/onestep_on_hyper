.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;
.super Ljava/lang/Object;
.source "SinaStatUploadTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 359
    const-string v0, "spkey_string_end_launch_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "spkey_string_start_launcher_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 290
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 291
    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    .line 292
    const-string v3, "44B"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const-string v2, "first_play"

    .line 294
    const-string v1, "first_tts_repeat"

    .line 295
    const-string v0, "first_tts_time"

    .line 308
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "t"

    .line 309
    :goto_1
    const-string v3, "_12345"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    const-string v3, "_1204"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_2
    return-object v0

    .line 296
    :cond_1
    const-string v3, "44C"

    .line 297
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    const-string v2, "second_play"

    .line 299
    const-string v1, "second_tts_repeat"

    .line 300
    const-string v0, "second_tts_time"

    goto :goto_0

    .line 301
    :cond_2
    const-string v3, "44D"

    .line 302
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const-string v2, "third_play"

    .line 304
    const-string v1, "third_tts_repeat"

    .line 305
    const-string v0, "third_tts_time"

    goto :goto_0

    .line 308
    :cond_3
    const-string v2, "f"

    goto :goto_1

    .line 315
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 44
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v5

    .line 45
    const-string v0, "Preference"

    const-string v4, "441"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "bg_voice"

    .line 49
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 46
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 51
    const-string v0, "Preference"

    const-string v4, "442"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "weather_animation"

    .line 55
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 52
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 58
    const-string v0, "Preference"

    const-string v4, "443"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "sina.mobile.tianqitong.spkey_boolean_use_weather_notification_current_weather"

    .line 64
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 63
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 59
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 67
    const-string v0, "Preference"

    const-string v4, "444"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "sina.mobile.tianqitong.action.use_weather_notification"

    .line 73
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 72
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 68
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 76
    const-string v0, "Preference"

    const-string v4, "446"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "sina.mobile.tianqitong.action.use_festival_notification"

    .line 82
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 81
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 77
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 85
    const-string v0, "Preference"

    const-string v4, "447"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "sina.mobile.tianqitong.action.use_jieqi_notification"

    .line 91
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 90
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 86
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 94
    const-string v0, "Preference"

    const-string v4, "449"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "use_timezone_check"

    .line 98
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 95
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 101
    const-string v0, "Preference"

    const-string v4, "44B"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "44B"

    .line 105
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 101
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 107
    const-string v0, "Preference"

    const-string v4, "44C"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "44C"

    .line 111
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 107
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 113
    const-string v0, "Preference"

    const-string v4, "44D"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "44D"

    .line 117
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 113
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 119
    const-string v0, "Preference"

    const-string v4, "44E"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "sina.mobile.tianqitong.action.auto_update"

    .line 123
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 120
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 126
    const-string v0, "Preference"

    const-string v4, "44F"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "update_start_time"

    .line 131
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 127
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 133
    const-string v0, "Preference"

    const-string v4, "44G"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "update_end_time"

    .line 138
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 134
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 140
    const-string v0, "Preference"

    const-string v4, "44H"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "minutes_between_update"

    const/16 v8, 0x78

    .line 144
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 141
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 148
    const-string v0, "Preference"

    const-string v4, "44I"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "cached_citys"

    .line 150
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 148
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 151
    const-string v0, "Preference"

    const-string v4, "44J"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "tts_city"

    .line 153
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 151
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 154
    const-string v0, "Preference"

    const-string v4, "44K"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "widget_city"

    .line 156
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 154
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 157
    const-string v0, "Preference"

    const-string v4, "44L"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "notification_city"

    .line 159
    invoke-direct {p0, v3, v7}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 157
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 161
    const-string v0, "phone_area_int"

    invoke-interface {v3, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 163
    const-string v6, "Preference"

    const-string v7, "47B"

    new-array v8, v10, [Ljava/lang/String;

    const-string v0, "state"

    aput-object v0, v8, v2

    if-ne v4, v10, :cond_4

    move v0, v1

    .line 168
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    .line 164
    invoke-virtual {v5, v6, v7, v8}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 169
    const-string v6, "Preference"

    const-string v7, "47A"

    new-array v8, v10, [Ljava/lang/String;

    const-string v0, "state"

    aput-object v0, v8, v2

    if-ne v4, v1, :cond_5

    move v0, v1

    .line 174
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    .line 170
    invoke-virtual {v5, v6, v7, v8}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 175
    const-string v6, "Preference"

    const-string v7, "479"

    new-array v8, v10, [Ljava/lang/String;

    const-string v0, "state"

    aput-object v0, v8, v2

    if-nez v4, :cond_6

    move v0, v1

    .line 180
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    .line 176
    invoke-virtual {v5, v6, v7, v8}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 181
    const-string v0, "Preference"

    const-string v4, "451"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "used_tts_id"

    const-string v8, ""

    .line 186
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 182
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 187
    const-string v0, "Preference"

    const-string v4, "4A1"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "used_background_id"

    const-string v8, ""

    .line 191
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 188
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 193
    const-string v0, "Preference"

    const-string v4, "491"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "appwidget_pkg_name_4x2"

    const-string v8, ""

    .line 198
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 194
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 201
    const-string v0, "Preference"

    const-string v4, "492"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "appwidget_pkg_name_4x1"

    const-string v8, ""

    .line 206
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 202
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 209
    const-string v0, "Preference"

    const-string v4, "493"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "appwidget_pkg_name_5x2"

    const-string v8, ""

    .line 214
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 210
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 217
    const-string v0, "Preference"

    const-string v4, "494"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "appwidget_pkg_name_5x1"

    const-string v8, ""

    .line 222
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 218
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 225
    const-string v0, "Preference"

    const-string v4, "1B1"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    .line 227
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->b()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 225
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 228
    const-string v0, "Preference"

    const-string v4, "475"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    iget-object v7, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    .line 230
    invoke-static {v7}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 228
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 231
    const-string v0, "Preference"

    const-string v4, "476"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    .line 233
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 231
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 234
    const-string v0, "Preference"

    const-string v4, "477"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    .line 238
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 234
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 240
    const-string v4, "Preference"

    const-string v6, "478"

    new-array v7, v10, [Ljava/lang/String;

    const-string v0, "state"

    aput-object v0, v7, v2

    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    .line 242
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "sina.mobile.tianqitong.action.subway_accident_notification"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    .line 240
    invoke-virtual {v5, v4, v6, v7}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 244
    const-string v0, "Preference"

    const-string v4, "471"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "SPKEYS_BOOLEAN_USING_4X2"

    .line 246
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 244
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 247
    const-string v0, "Preference"

    const-string v4, "472"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "SPKEYS_BOOLEAN_USING_4X1"

    .line 249
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 247
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 250
    const-string v0, "Preference"

    const-string v4, "473"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "SPKEYS_BOOLEAN_USING_5X2"

    .line 252
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 250
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 253
    const-string v0, "Preference"

    const-string v4, "474"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    const-string v7, "SPKEYS_BOOLEAN_USING_5X1"

    .line 255
    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 253
    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 258
    const-string v0, "Preference"

    const-string v4, "371"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    invoke-direct {p0, v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 259
    const-string v0, "Preference"

    const-string v4, "372"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    invoke-direct {p0, v3}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {v5, v0, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 260
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string v0, "empty"

    .line 263
    iget-object v6, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v6}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->f(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    const-string v4, "empty"

    .line 265
    const-string v3, "empty"

    .line 266
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    const-string v4, "empty"

    .line 271
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    const-string v4, "empty"

    .line 274
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    const-string v4, "empty"

    .line 277
    :cond_3
    const-string v6, "Preference"

    const-string v7, "47F"

    new-array v8, v10, [Ljava/lang/String;

    const-string v9, "state"

    aput-object v9, v8, v2

    aput-object v4, v8, v1

    invoke-virtual {v5, v6, v7, v8}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 279
    const-string v4, "Preference"

    const-string v6, "47G"

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "state"

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    invoke-virtual {v5, v4, v6, v7}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 282
    const-string v3, "Preference"

    const-string v4, "47H"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "state"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-virtual {v5, v3, v4, v6}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 284
    const-string v0, "Preference"

    const-string v3, "47J"

    new-array v4, v10, [Ljava/lang/String;

    const-string v6, "state"

    aput-object v6, v4, v2

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    .line 286
    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/kit/b/c;->h(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 284
    invoke-virtual {v5, v0, v3, v4}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 287
    return-void

    :cond_4
    move v0, v2

    .line 163
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 169
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 175
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 242
    goto/16 :goto_3
.end method

.method private b(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 363
    const-string v0, "spkey_string_end_refresh_weather_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "spkey_string_start_refresh_weather_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 320
    const-string v0, "_1204"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 337
    .line 338
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 341
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sina.tqtdiy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    const-string v1, "window"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 352
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 353
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 326
    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "AUTOLOCATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/kit/b/m;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "locate_citycode"

    const-string v5, ""

    .line 328
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, ","

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_0
    return-object v0
.end method


.method public run()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/h;->a(Landroid/content/Context;)V

    .line 37
    :cond_0
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/i;->a()V

    .line 38
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g()V

    .line 40
    return-void
.end method
