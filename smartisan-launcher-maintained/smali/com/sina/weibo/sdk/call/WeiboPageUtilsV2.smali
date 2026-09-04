.class public final Lcom/sina/weibo/sdk/call/WeiboPageUtilsV2;
.super Ljava/lang/Object;
.source "WeiboPageUtilsV2.java"


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static displayInWeiboMap(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 723
    if-nez p0, :cond_0

    .line 724
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    const-string v5, "http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s"

    .line 728
    const-string v0, ""

    .line 729
    const-string v1, ""

    .line 730
    const-string v2, ""

    .line 732
    if-eqz p1, :cond_3

    .line 733
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 734
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    const-string v2, "offset"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v1

    move-object v4, v0

    .line 738
    :goto_0
    const/4 v1, 0x0

    .line 739
    if-eqz p1, :cond_1

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 742
    :cond_1
    if-eqz p1, :cond_2

    .line 743
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    .line 744
    const-string v0, "extparam"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    invoke-static {p0, v2, v3, v0, v1}, Lcom/sina/weibo/sdk/call/WeiboPageUtilsV2;->openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_2
    return-void

    :cond_3
    move-object v3, v1

    move-object v4, v0

    goto :goto_0
.end method

.method public static openInWeiboBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 667
    if-nez p0, :cond_0

    .line 668
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "url\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 676
    const-string v0, "topnav"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 677
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    .line 679
    const-string v1, "sinainternalbrowser\u4e0d\u5408\u6cd5"

    .line 678
    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sinaweibo://browser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 687
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v2, "sinainternalbrowser"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v2, "extparam"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sinaweibo://browser"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    if-eqz v1, :cond_3

    .line 697
    invoke-static {v1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, p4}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_4
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openQrcodeScanner(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 764
    if-nez p0, :cond_0

    .line 765
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://qrcode"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    if-eqz p1, :cond_1

    .line 770
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://qrcode"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    if-eqz p1, :cond_2

    .line 777
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 780
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 783
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static postNewWeibo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://sendweibo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://sendweibo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_2

    .line 84
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewNearbyPeople(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://nearbypeople"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://nearbypeople"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    if-eqz p1, :cond_2

    .line 130
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewNearbyWeibo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://nearbyweibo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_1

    .line 169
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://nearbyweibo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    if-eqz p1, :cond_2

    .line 178
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPageDetailInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 613
    if-nez p0, :cond_0

    .line 614
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    if-nez p1, :cond_1

    .line 617
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_2
    const-string v0, "cardid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pagedetailinfo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    if-eqz p1, :cond_4

    .line 630
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_4
    if-eqz p1, :cond_6

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pagedetailinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    if-eqz p1, :cond_5

    .line 637
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_5
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_6
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPageInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 301
    if-nez p0, :cond_0

    .line 302
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pageinfo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_3

    .line 311
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pageinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    if-eqz p1, :cond_4

    .line 318
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewPagePhotoList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 550
    if-nez p0, :cond_0

    .line 551
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    if-nez p1, :cond_1

    .line 554
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2
    const-string v0, "cardid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_3
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 569
    :goto_0
    if-gez v0, :cond_4

    .line 570
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const/4 v0, -0x1

    goto :goto_0

    .line 573
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pagephotolist"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_5

    .line 575
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_5
    if-eqz p1, :cond_7

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pagephotolist"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    if-eqz p1, :cond_6

    .line 582
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_6
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_1
    return-void

    .line 588
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageProductList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    if-nez p1, :cond_1

    .line 356
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    const-string v0, "cardid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_3
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 371
    :goto_0
    if-gez v0, :cond_4

    .line 372
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const/4 v0, -0x1

    goto :goto_0

    .line 375
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pageproductlist"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    if-eqz p1, :cond_5

    .line 378
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_5
    if-eqz p1, :cond_7

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pageproductlist"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    if-eqz p1, :cond_6

    .line 385
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_6
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_1
    return-void

    .line 391
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageUserList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    if-nez p1, :cond_1

    .line 422
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    const-string v0, "cardid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_3
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 437
    :goto_0
    if-gez v0, :cond_4

    .line 438
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const/4 v0, -0x1

    goto :goto_0

    .line 441
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pageuserlist"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    if-eqz p1, :cond_5

    .line 444
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_5
    if-eqz p1, :cond_7

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pageuserlist"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    if-eqz p1, :cond_6

    .line 451
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_6
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_1
    return-void

    .line 457
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewPageWeiboList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 485
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    if-nez p1, :cond_1

    .line 488
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_1
    const-string v0, "pageid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2
    const-string v0, "cardid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_3
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 503
    :goto_0
    if-gez v0, :cond_4

    .line 504
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const/4 v0, -0x1

    goto :goto_0

    .line 507
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://pageweibolist"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    if-eqz p1, :cond_5

    .line 510
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_5
    if-eqz p1, :cond_7

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://pageweibolist"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    if-eqz p1, :cond_6

    .line 517
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_6
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_1
    return-void

    .line 523
    :cond_7
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewUserInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 210
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "nick"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://userinfo"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_3

    .line 221
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://userinfo"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    if-eqz p1, :cond_4

    .line 229
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewUsertrends(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    :cond_1
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://usertrends"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    if-eqz p1, :cond_3

    .line 265
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://usertrends"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    if-eqz p1, :cond_4

    .line 272
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static weiboDetail(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/call/WeiboNotInstalledException;
        }
    .end annotation

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 805
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    if-nez p1, :cond_1

    .line 808
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "mblogId(\u5fae\u535aid)\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_1
    const-string v0, "mblogid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    new-instance v0, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;

    const-string v1, "mblogId(\u5fae\u535aid)\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/call/WeiboIllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sinaweibo://detail"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    if-eqz p1, :cond_3

    .line 818
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sinaweibo://detail"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    if-eqz p1, :cond_4

    .line 824
    invoke-static {p1}, Lcom/sina/weibo/sdk/call/CommonUtils;->buildUriQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 827
    invoke-static {p0, v2, v1, v0}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_5
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/call/CommonUtils;->openWeiboActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
