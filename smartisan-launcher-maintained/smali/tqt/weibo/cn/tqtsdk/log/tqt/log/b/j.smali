.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;
.super Ljava/lang/Object;
.source "StatKpiTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;

.field private b:I


.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->a:Landroid/content/Context;

    .line 47
    iput p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->b:I

    .line 48
    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->b:I

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_1
    if-eqz v0, :cond_1

    .line 101
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "t"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->d(Ljava/util/List;Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->c(Ljava/util/List;Landroid/content/Context;)V

    .line 111
    :try_start_0
    const-string v0, "http"

    const-string v1, "forecast.sina.cn/app/overall"

    const/4 v2, -0x1

    const-string v3, "stat.php"

    const-string v5, "UTF-8"

    .line 113
    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 111
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;[BIZZLjava/io/File;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/b/a/a;

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v0, "tqt_launch"

    goto :goto_1

    .line 64
    :pswitch_1
    const-string v0, "tqt_auto_rfr"

    goto :goto_1

    .line 67
    :pswitch_2
    const-string v0, "tqt_manual_rfr"

    goto :goto_1

    .line 70
    :pswitch_3
    const-string v0, "tqt_noti_weather_show"

    goto :goto_1

    .line 73
    :pswitch_4
    const-string v0, "tqt_aw_show"

    goto :goto_1

    .line 76
    :pswitch_5
    const-string v0, "tqt_launch_via_holiday_noti"

    goto :goto_1

    .line 79
    :pswitch_6
    const-string v0, "tqt_launch_via_abnormal_noti"

    goto :goto_1

    .line 82
    :pswitch_7
    const-string v0, "tqt_launch_via_aw"

    goto :goto_1

    .line 85
    :pswitch_8
    const-string v0, "tqt_launch_via_alarm"

    goto :goto_1

    .line 88
    :pswitch_9
    const-string v0, "tqt_launch_via_ad"

    goto :goto_1

    .line 91
    :pswitch_a
    const-string v0, "tqt_launch_via_noti_weather"

    goto :goto_1

    .line 94
    :pswitch_b
    const-string v0, "tqt_launch_via_warning_noti"

    goto :goto_1

    .line 97
    :pswitch_c
    const-string v0, "tqt_launch_via_subway_noti"

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
