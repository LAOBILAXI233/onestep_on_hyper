.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 37
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .line 49
    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 87
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_0

    .line 89
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 90
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 97
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 99
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 106
    :goto_1
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 64
    sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 67
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 74
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 76
    :try_start_1
    sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 83
    :goto_1
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 135
    .local v1, "currentLeft":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 137
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 140
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 142
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    sub-int v3, v1, v0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 142
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 151
    .end local v0    # "absOffset":I
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 115
    .local v1, "currentTop":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 117
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 120
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 122
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .line 123
    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v1, v0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v0

    .line 122
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 131
    .end local v0    # "absOffset":I
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 42
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 43
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    :cond_0
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_0
    return-void
.end method
