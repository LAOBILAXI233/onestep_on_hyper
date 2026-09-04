.class public Lcom/smartisanos/quicksearchbox/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


.field public static final PREF_NAME:Ljava/lang/String; = "QuickSearchBoxSetting"

.field private static isT9Shown:Z = false

.field private static final spIsDataInit:Ljava/lang/String; = "isDataInit"

.field private static final spIsT9LastShown:Ljava/lang/String; = "isT9LastShown"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/quicksearchbox/util/Util;->isT9Shown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v0
.end method

.method public static byteToDrawable(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # [B

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v0, "QuickSearchBoxSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getTimeInt()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string p0, "hh:mm:ss:SSS"

    .line 35
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 36
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static indexDataInited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->isIndexDataInit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isDataInit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIndexDataInit(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isDataInit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_0
    return v0
.end method

.method public static isT9LastShown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isT9LastShown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :cond_0
    return v0
.end method

.method public static isT9Shown()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/smartisanos/quicksearchbox/util/Util;->isT9Shown:Z

    return v0
.end method

.method public static setLastShownKeyBoard(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isT9"    # Z

    .prologue
    .line 90
    sput-boolean p1, Lcom/smartisanos/quicksearchbox/util/Util;->isT9Shown:Z

    .line 91
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isT9LastShown"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
