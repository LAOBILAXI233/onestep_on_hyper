.class public Lcom/meizu/flyme/reflect/StatusBarProxy;
.super Ljava/lang/Object;
.source "StatusBarProxy.java"


.field private static final TAG:Ljava/lang/String; = "StatusBar"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 105
    .local v4, "obj":Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 106
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 111
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "height":I
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return v5

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/16 v5, 0x4b

    goto :goto_0
.end method

.method public static setImmersedWindow(Landroid/view/Window;Z)Z
    .locals 8
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "immersive"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "result":Z
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 68
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 70
    .local v4, "trans_status":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_2

    .line 72
    const/16 v4, 0x40

    .line 73
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "meizuFlags"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, "flags":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 76
    .local v5, "value":I
    if-eqz p1, :cond_1

    .line 77
    or-int/2addr v5, v4

    .line 81
    :goto_0
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 v3, 0x1

    .line 92
    .end local v1    # "flags":Ljava/lang/reflect/Field;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "trans_status":I
    .end local v5    # "value":I
    :cond_0
    :goto_1
    return v3

    .line 79
    .restart local v1    # "flags":Ljava/lang/reflect/Field;
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "trans_status":I
    .restart local v5    # "value":I
    :cond_1
    and-int/lit8 v5, v5, -0x41

    goto :goto_0

    .line 83
    .end local v1    # "flags":Ljava/lang/reflect/Field;
    .end local v5    # "value":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "StatusBar"

    const-string v7, "setImmersedWindow: failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static setStatusBarDarkIcon(Landroid/view/Window;Z)Z
    .locals 9
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 26
    const/4 v5, 0x0

    .line 27
    .local v5, "result":Z
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 30
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const-class v7, Landroid/view/WindowManager$LayoutParams;

    .line 31
    const-string v8, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 32
    .local v1, "darkFlag":Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/WindowManager$LayoutParams;

    .line 33
    const-string v8, "meizuFlags"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 34
    .local v4, "meizuFlags":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 37
    .local v0, "bit":I
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 38
    .local v6, "value":I
    if-eqz p1, :cond_1

    .line 39
    or-int/2addr v6, v0

    .line 43
    :goto_0
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 44
    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v5, 0x1

    .line 50
    .end local v0    # "bit":I
    .end local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "meizuFlags":Ljava/lang/reflect/Field;
    .end local v6    # "value":I
    :cond_0
    :goto_1
    return v5

    .line 41
    .restart local v0    # "bit":I
    .restart local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .restart local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "meizuFlags":Ljava/lang/reflect/Field;
    .restart local v6    # "value":I
    :cond_1
    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v6, v7

    goto :goto_0

    .line 46
    .end local v0    # "bit":I
    .end local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "meizuFlags":Ljava/lang/reflect/Field;
    .end local v6    # "value":I
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "StatusBar"

    const-string v8, "setStatusBarDarkIcon: failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
