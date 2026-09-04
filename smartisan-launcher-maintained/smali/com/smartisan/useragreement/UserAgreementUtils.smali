.class public Lcom/smartisan/useragreement/UserAgreementUtils;
.super Ljava/lang/Object;
.source "UserAgreementUtils.java"


.field public static final PROP_RO_PRODUCT_MANUFACTURER:Ljava/lang/String; = "ro.product.manufacturer"

.field public static final PROP_RO_PROJECT_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStatusBar(Landroid/app/Activity;ZLandroid/view/Window;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "transparent"    # Z
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-static {p0, p2}, Lcom/smartisan/useragreement/UserAgreementUtils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisan/useragreement/UserAgreementUtils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 25
    :cond_0
    return-void
.end method

.method private static applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "win"    # Landroid/view/Window;

    .prologue
    .line 81
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_2

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 84
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 86
    .local v7, "x":I
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 87
    const-string v8, "FLAG_TRANSLUCENT_STATUS"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 92
    :goto_0
    if-eqz v7, :cond_0

    .line 93
    invoke-virtual {p1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 95
    :cond_0
    const-string v8, "Meizu"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    const/4 v7, 0x0

    .line 98
    :try_start_1
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 99
    const-string v8, "FLAG_TRANSLUCENT_NAVIGATION"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 104
    :goto_1
    if-eqz v7, :cond_1

    .line 105
    invoke-virtual {p1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 134
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "x":I
    :cond_1
    :goto_2
    return-void

    .line 89
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "x":I
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 102
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "x":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "libs":[Ljava/lang/String;
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 112
    .local v5, "reflect":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 113
    array-length v9, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_4

    aget-object v3, v4, v8

    .line 114
    .local v3, "lib":Ljava/lang/String;
    const-string v10, "touchwiz"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "com.htc."

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 115
    :cond_3
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 123
    .end local v3    # "lib":Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_2
    const-class v8, Landroid/view/View;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 124
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    .line 125
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 126
    .local v6, "result":I
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 129
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "result":I
    :catch_2
    move-exception v8

    goto :goto_2

    .line 117
    .restart local v3    # "lib":Ljava/lang/String;
    :cond_5
    const-string v10, "com.sonyericsson.navigationbar"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 118
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT"

    .line 119
    goto :goto_4

    .line 113
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static getProductInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v1, "ro.product.manufacturer"

    invoke-static {v1}, Lcom/smartisan/useragreement/UserAgreementUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    const-string v1, "ro.product.model"

    invoke-static {v1}, Lcom/smartisan/useragreement/UserAgreementUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v0, ""

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v3, 0x0

    .line 30
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 32
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 33
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static isXiaoMiDevice()Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/smartisan/useragreement/UserAgreementUtils;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "info":Ljava/lang/String;
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "darkmode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-static {}, Lcom/smartisan/useragreement/UserAgreementUtils;->isXiaoMiDevice()Z

    move-result v8

    if-nez v8, :cond_0

    .line 77
    :goto_0
    return v6

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/Window;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "darkModeFlag":I
    :try_start_0
    const-string v8, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 69
    .local v5, "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 70
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 71
    const-string v8, "setExtraFlags"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    .local v3, "extraFlagField":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    move v8, v1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 73
    goto :goto_0

    :cond_1
    move v8, v6

    .line 72
    goto :goto_1

    .line 74
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
