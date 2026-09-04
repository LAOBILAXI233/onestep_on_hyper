.class public Ltqt/weibo/cn/tqtsdk/kit/b/l;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


.method public static a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const/16 v0, 0x438

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method
