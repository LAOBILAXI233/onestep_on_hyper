.class public final Lcom/sina/weibo/sdk/call/WeiboPageUtils;
.super Ljava/lang/Object;
.source "WeiboPageUtils.java"


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayInWeiboMap(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 504
    if-nez p0, :cond_0

    .line 505
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    const-string v3, "http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s"

    .line 509
    const-string v2, ""

    .line 510
    const-string v1, ""

    .line 511
    const-string v0, ""

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {p0, v0, v1, p2}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 463
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    const-string v0, "topnav"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "sinainternalbrowser\u4e0d\u5408\u6cd5"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://browser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 482
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v2, "sinainternalbrowser"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static openQrcodeScanner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 533
    if-nez p0, :cond_0

    .line 534
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://qrcode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 539
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public static postNewWeibo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://sendweibo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    :try_start_0
    const-string v0, "content"

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\+"

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const-string v0, "poiid"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "poiname"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p4, :cond_1

    .line 75
    const-string v0, "longitude"

    invoke-virtual {p4}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "latitude"

    invoke-virtual {p4}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {v2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "extparam"

    invoke-virtual {v2, v0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static viewNearPhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nearphoto"

    const-string v3, "\u5468\u8fb9\u70ed\u56fe"

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public static viewNearbyPeople(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://nearbypeople"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    if-eqz p1, :cond_1

    .line 105
    const-string v2, "longitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "latitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "offset"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static viewNearbyWeibo(Landroid/content/Context;Lcom/sina/weibo/sdk/call/Position;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://nearbyweibo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    if-eqz p1, :cond_1

    .line 135
    const-string v2, "longitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "latitude"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "offset"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/call/Position;->getStrOffset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static viewPageDetailInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pagedetailinfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 438
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v2, "cardid"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static viewPageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pageinfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 392
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pagephotolist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 398
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "cardid"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static viewPageProductList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p0, :cond_0

    .line 254
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 263
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pageproductlist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "cardid"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public static viewPageUserList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 306
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pageuserlist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "cardid"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static viewPageWeiboList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 349
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://pageweibolist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "cardid"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "page"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "count"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static viewPoiPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPageInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public static viewPoiPhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "100101"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nearphoto"

    const-string v3, "\u5468\u8fb9\u70ed\u56fe"

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/sdk/call/WeiboPageUtils;->viewPagePhotoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public static viewUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://userinfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "nick"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static viewUsertrends(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://usertrends"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static weiboDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 605
    if-nez p0, :cond_0

    .line 606
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://detail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 615
    const-string v2, "mblogid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method
