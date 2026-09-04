.class public Lcom/meizu/flyme/reflect/ActionBarProxy;
.super Lcom/meizu/flyme/reflect/Proxy;
.source "ActionBarProxy.java"


.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sSetActionBarViewCollapsableMethod:Ljava/lang/reflect/Method;

.field private static sSetActionModeHeaderHiddenMethod:Ljava/lang/reflect/Method;

.field private static sSetBackButtonDrawableMethod:Ljava/lang/reflect/Method;

.field private static sSetOverFlowButtonDrawableMethod:Ljava/lang/reflect/Method;

.field private static sSetTabsShowAtBottom:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Landroid/app/ActionBar;

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/meizu/flyme/reflect/Proxy;-><init>()V

    return-void
.end method

.method public static SetBackButtonDrawable(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "actionbar"    # Landroid/app/ActionBar;
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetBackButtonDrawableMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    const-string v2, "setBackButtonDrawable"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/reflect/ActionBarProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetBackButtonDrawableMethod:Ljava/lang/reflect/Method;

    .line 61
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetBackButtonDrawableMethod:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, p0, v1}, Lcom/meizu/flyme/reflect/ActionBarProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static SetOverFlowButtonDrawable(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "actionbar"    # Landroid/app/ActionBar;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetOverFlowButtonDrawableMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    const-string v2, "setOverFlowButtonDrawable"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/reflect/ActionBarProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetOverFlowButtonDrawableMethod:Ljava/lang/reflect/Method;

    .line 71
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetOverFlowButtonDrawableMethod:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v0, p0, v1}, Lcom/meizu/flyme/reflect/ActionBarProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getActionBarHeight(Landroid/content/Context;Landroid/app/ActionBar;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionbar"    # Landroid/app/ActionBar;

    .prologue
    .line 122
    if-eqz p1, :cond_1

    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    .line 125
    const/4 v3, 0x1

    .line 124
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 131
    .end local v0    # "tv":Landroid/util/TypedValue;
    :goto_0
    return v1

    .line 129
    .restart local v0    # "tv":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    goto :goto_0

    .line 131
    .end local v0    # "tv":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSmartBarHeight(Landroid/content/Context;Landroid/app/ActionBar;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionbar"    # Landroid/app/ActionBar;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 144
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 146
    .local v4, "obj":Ljava/lang/Object;
    const-string v5, "mz_action_button_min_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 147
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 154
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "height":I
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return v5

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    invoke-virtual {p1}, Landroid/app/ActionBar;->getHeight()I

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static hasSmartBar()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    const-string v1, "android.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-string v3, "hasSmartBar"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v1

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public static setActionBarTabsShowAtBottom(Landroid/app/ActionBar;Z)Z
    .locals 7
    .param p0, "actionbar"    # Landroid/app/ActionBar;
    .param p1, "showAtBottom"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetTabsShowAtBottom:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    const-string v2, "setTabsShowAtBottom"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/reflect/ActionBarProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetTabsShowAtBottom:Ljava/lang/reflect/Method;

    .line 111
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetTabsShowAtBottom:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, p0, v1}, Lcom/meizu/flyme/reflect/ActionBarProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setActionBarViewCollapsable(Landroid/app/ActionBar;Z)Z
    .locals 7
    .param p0, "bar"    # Landroid/app/ActionBar;
    .param p1, "collapsable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionBarViewCollapsableMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    const-string v2, "setActionBarViewCollapsable"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/reflect/ActionBarProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionBarViewCollapsableMethod:Ljava/lang/reflect/Method;

    .line 97
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionBarViewCollapsableMethod:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, p0, v1}, Lcom/meizu/flyme/reflect/ActionBarProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setActionModeHeaderHidden(Landroid/app/ActionBar;Z)Z
    .locals 7
    .param p0, "bar"    # Landroid/app/ActionBar;
    .param p1, "hide"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionModeHeaderHiddenMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/meizu/flyme/reflect/ActionBarProxy;->sClass:Ljava/lang/Class;

    const-string v2, "setActionModeHeaderHidden"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/reflect/ActionBarProxy;->getMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionModeHeaderHiddenMethod:Ljava/lang/reflect/Method;

    .line 84
    sget-object v0, Lcom/meizu/flyme/reflect/ActionBarProxy;->sSetActionModeHeaderHiddenMethod:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, p0, v1}, Lcom/meizu/flyme/reflect/ActionBarProxy;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
