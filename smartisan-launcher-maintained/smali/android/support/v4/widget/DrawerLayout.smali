.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

.implements Landroid/support/v4/widget/DrawerLayoutImpl;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    }
.end annotation


.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    new-array v1, v2, [I

    const v4, 0x10100b3

    aput v4, v1, v3

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    :goto_1
    sput-boolean v2, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    .local v0, "version":I
    if-lt v0, v5, :cond_2

    .line 359
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 363
    :goto_2
    return-void

    .end local v0    # "version":I
    :cond_0
    move v1, v3

    .line 181
    goto :goto_0

    :cond_1
    move v2, v3

    .line 184
    goto :goto_1

    .line 361
    .restart local v0    # "version":I
    :cond_2
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 376
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 193
    const/high16 v2, -0x67000000

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 195
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 203
    iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 205
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 206
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 207
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 208
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 230
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 231
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 233
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 377
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 378
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 379
    .local v0, "density":F
    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 380
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    .line 382
    .local v1, "minVel":F
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 383
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 385
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 386
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 387
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 388
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 390
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 391
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 392
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 393
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 396
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 398
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 401
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 402
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 403
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v2, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 405
    sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 408
    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 410
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 411
    return-void
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .prologue
    .line 999
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1000
    const-string v0, "LEFT"

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1003
    const-string v0, "RIGHT"

    goto :goto_0

    .line 1005
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1291
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1294
    :cond_0
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    .line 1794
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1795
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1796
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1797
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    .line 1798
    const/4 v3, 0x1

    .line 1801
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    return v3

    .line 1795
    .restart local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1801
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1864
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2004
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2006
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1174
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1175
    :cond_0
    const/4 v0, 0x0

    .line 1179
    :goto_0
    return v0

    .line 1178
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1132
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1134
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1135
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1138
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 1147
    :goto_0
    return-object v1

    .line 1141
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1144
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1151
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1152
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1153
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1155
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1156
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 1165
    :goto_0
    return-object v1

    .line 1159
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1161
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1162
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1165
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .prologue
    .line 1124
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1128
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 894
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 895
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 896
    .local v0, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v0, p1, :cond_2

    .line 900
    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 894
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 903
    :cond_2
    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 907
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method


.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 561
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1830
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1836
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1837
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 1838
    .local v3, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1839
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1840
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1841
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1842
    const/4 v3, 0x1

    .line 1843
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1838
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1846
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1850
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    if-nez v3, :cond_5

    .line 1851
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1852
    .local v4, "nonDrawerViewsCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    .line 1853
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1854
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1855
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1852
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1860
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "nonDrawerViewsCount":I
    :cond_5
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1976
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1978
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1979
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1982
    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1993
    :goto_0
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_1

    .line 1994
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1996
    :cond_1
    return-void

    .line 1987
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1880
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_1

    .line 1881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1882
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1884
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1885
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1886
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1885
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1889
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1891
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 945
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1820
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1708
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1709
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1719
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1720
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1721
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1722
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1724
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1725
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1666
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1667
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1676
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1680
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1681
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1682
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1683
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1698
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1699
    return-void

    .line 1684
    :cond_1
    if-eqz p2, :cond_3

    .line 1685
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1687
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1688
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1689
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1688
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1691
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1694
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1695
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1696
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1557
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1560
    const/4 v5, 0x0

    .line 1561
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1562
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1563
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1564
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1566
    .local v4, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_1

    .line 1562
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1570
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1572
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1573
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v7, v2

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1573
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1580
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_1

    .line 1576
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1577
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1576
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_2

    .line 1583
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1584
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1586
    if-eqz v5, :cond_4

    .line 1587
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1589
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1275
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1276
    .local v0, "childCount":I
    const/4 v3, 0x0

    .line 1277
    .local v3, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1278
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v2, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1279
    .local v2, "onscreen":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1281
    .end local v2    # "onscreen":F
    :cond_0
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1284
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 1285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1287
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 7
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 842
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 843
    iput v6, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 845
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 848
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 849
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 850
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 849
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 854
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    invoke-direct {p0, p1, v6}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 859
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 860
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 861
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 862
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 866
    .end local v3    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 870
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 871
    iput v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 872
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 875
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 876
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 877
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 876
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 881
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 884
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 888
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 890
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 910
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 913
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 914
    .local v1, "listenerCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 915
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 914
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 918
    .end local v0    # "i":I
    .end local v1    # "listenerCount":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    .line 1359
    .local v18, "height":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    .line 1360
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v14

    .line 1362
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1363
    .local v21, "restoreCount":I
    if-eqz v17, :cond_4

    .line 1364
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    .line 1365
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 1366
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1367
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1368
    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 1365
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1373
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1374
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 1375
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    goto :goto_1

    .line 1377
    .end local v27    # "vright":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 1378
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_1

    .line 1381
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1383
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 1384
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1386
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v17, :cond_6

    .line 1387
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 1388
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 1389
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 1390
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1392
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1417
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_5
    :goto_2
    return v22

    .line 1393
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 1394
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1396
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1397
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1398
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1399
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1400
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1400
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1404
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 1405
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1407
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1408
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1409
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v16

    .line 1410
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1411
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1412
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1412
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .prologue
    .line 979
    .line 980
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 979
    invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 981
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 982
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 983
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 984
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    .line 985
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 989
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1
    return-object v1

    .line 982
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 989
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .prologue
    .line 949
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 950
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 951
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 952
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 953
    .local v2, "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 957
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 950
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1868
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1869
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1870
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1875
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1869
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1875
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1806
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1825
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1811
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 7
    .param p1, "edgeGravity"    # I

    .prologue
    const/4 v6, 0x3

    .line 696
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 698
    .local v1, "layoutDirection":I
    sparse-switch p1, :sswitch_data_0

    .line 741
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 700
    :sswitch_0
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v5, v6, :cond_1

    .line 701
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 703
    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 705
    .local v2, "leftLockMode":I
    :goto_1
    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 703
    .end local v2    # "leftLockMode":I
    :cond_2
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 710
    :sswitch_1
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v5, v6, :cond_3

    .line 711
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 713
    :cond_3
    if-nez v1, :cond_4

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 715
    .local v3, "rightLockMode":I
    :goto_2
    if-eq v3, v6, :cond_0

    move v2, v3

    .line 716
    goto :goto_0

    .line 713
    .end local v3    # "rightLockMode":I
    :cond_4
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 720
    :sswitch_2
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v5, v6, :cond_5

    .line 721
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 723
    :cond_5
    if-nez v1, :cond_6

    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 725
    .local v4, "startLockMode":I
    :goto_3
    if-eq v4, v6, :cond_0

    move v2, v4

    .line 726
    goto :goto_0

    .line 723
    .end local v4    # "startLockMode":I
    :cond_6
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 730
    :sswitch_3
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v5, v6, :cond_7

    .line 731
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 733
    :cond_7
    if-nez v1, :cond_8

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 735
    .local v0, "endLockMode":I
    :goto_4
    if-eq v0, v6, :cond_0

    move v2, v0

    .line 736
    goto :goto_0

    .line 733
    .end local v0    # "endLockMode":I
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 757
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 790
    .line 791
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 790
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 792
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 793
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 797
    :goto_0
    return-object v1

    .line 794
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 795
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 797
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 940
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 931
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1755
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1756
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    .line 1759
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 4
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1738
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1739
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1741
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1742
    .local v0, "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1425
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1427
    .local v1, "gravity":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1426
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1428
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v2, v3

    .line 1436
    :goto_0
    return v2

    .line 1432
    :cond_0
    and-int/lit8 v2, v0, 0x5

    if-eqz v2, :cond_1

    move v2, v3

    .line 1434
    goto :goto_0

    .line 1436
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1786
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1787
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    .line 1790
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1771
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1774
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    .line 962
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 963
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 964
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 965
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 967
    .local v0, "dx":I
    const/4 v5, 0x3

    .line 968
    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 967
    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 969
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 970
    return-void

    .line 968
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1018
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1010
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1012
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 1346
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1347
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1348
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    .line 1349
    .local v0, "inset":I
    if-lez v0, :cond_0

    .line 1350
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1351
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1354
    .end local v0    # "inset":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1441
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1444
    .local v0, "action":I
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v9, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1445
    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v8, v9

    .line 1447
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    .line 1449
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    .line 1483
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v8, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    return v6

    .line 1451
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1452
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1453
    .local v5, "y":F
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1454
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1455
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 1456
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1457
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1458
    const/4 v3, 0x1

    .line 1461
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1462
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1468
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_1
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1469
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1470
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_0

    .line 1477
    :pswitch_2
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1478
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1479
    iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1895
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1897
    const/4 v0, 0x1

    .line 1899
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1904
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1905
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1906
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1907
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1909
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1911
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :goto_0
    return v1

    .line 1909
    .restart local v0    # "visibleDrawer":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1911
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1184
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1185
    sub-int v17, p4, p2

    .line 1186
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 1187
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_9

    .line 1188
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1190
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1187
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1196
    .local v13, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1197
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    .line 1198
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1199
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    .line 1197
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1201
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1202
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1206
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1207
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1208
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1214
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    .line 1216
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 1218
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    .line 1221
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1252
    :goto_4
    if-eqz v4, :cond_3

    .line 1253
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1256
    :cond_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_8

    const/4 v15, 0x0

    .line 1257
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 1258
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1210
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_4
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 1211
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_2

    .line 1214
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1227
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_0
    sub-int v11, p5, p3

    .line 1228
    .local v11, "height":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    .line 1229
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    .line 1228
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1236
    .end local v11    # "height":I
    :sswitch_1
    sub-int v11, p5, p3

    .line 1237
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 1241
    .local v9, "childTop":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 1242
    iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1246
    :cond_6
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1243
    :cond_7
    add-int v18, v9, v7

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 1244
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 1256
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_8
    const/4 v15, 0x4

    goto :goto_5

    .line 1262
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1263
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1264
    return-void

    .line 1218
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1022
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1023
    .local v20, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 1024
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 1025
    .local v21, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1027
    .local v15, "heightSize":I
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v14, v0, :cond_2

    .line 1028
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1033
    const/high16 v22, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1034
    const/high16 v20, 0x40000000    # 2.0f

    .line 1039
    :cond_1
    :goto_0
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    .line 1040
    const/high16 v14, 0x40000000    # 2.0f

    .line 1051
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/4 v3, 0x1

    .line 1054
    .local v3, "applyInsets":Z
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v18

    .line 1058
    .local v18, "layoutDirection":I
    const/4 v12, 0x0

    .line 1059
    .local v12, "hasDrawerOnLeftEdge":Z
    const/4 v13, 0x0

    .line 1060
    .local v13, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 1061
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v6, :cond_12

    .line 1062
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1064
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1061
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1035
    .end local v3    # "applyInsets":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v12    # "hasDrawerOnLeftEdge":Z
    .end local v13    # "hasDrawerOnRightEdge":Z
    .end local v16    # "i":I
    .end local v18    # "layoutDirection":I
    :cond_3
    if-nez v20, :cond_1

    .line 1036
    const/high16 v20, 0x40000000    # 2.0f

    .line 1037
    const/16 v21, 0x12c

    goto :goto_0

    .line 1041
    :cond_4
    if-nez v14, :cond_2

    .line 1042
    const/high16 v14, 0x40000000    # 2.0f

    .line 1043
    const/16 v15, 0x12c

    goto :goto_1

    .line 1046
    :cond_5
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1053
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 1068
    .restart local v3    # "applyInsets":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v12    # "hasDrawerOnLeftEdge":Z
    .restart local v13    # "hasDrawerOnRightEdge":Z
    .restart local v16    # "i":I
    .restart local v18    # "layoutDirection":I
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1070
    .local v19, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v3, :cond_8

    .line 1071
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1072
    .local v4, "cgrav":I
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1073
    sget-object v22, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v5, v1, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1079
    .end local v4    # "cgrav":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1081
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1083
    .local v9, "contentWidthSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1085
    .local v8, "contentHeightSpec":I
    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1075
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    .restart local v4    # "cgrav":I
    :cond_9
    sget-object v22, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_5

    .line 1086
    .end local v4    # "cgrav":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 1087
    sget-boolean v22, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v22, :cond_b

    .line 1088
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_b

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1093
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v22

    and-int/lit8 v7, v22, 0x7

    .line 1096
    .local v7, "childGravity":I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v7, v0, :cond_e

    const/16 v17, 0x1

    .line 1097
    .local v17, "isLeftEdgeDrawer":Z
    :goto_6
    if-eqz v17, :cond_c

    if-nez v12, :cond_d

    :cond_c
    if-nez v17, :cond_f

    if-eqz v13, :cond_f

    .line 1099
    :cond_d
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1100
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " already has a "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1096
    .end local v17    # "isLeftEdgeDrawer":Z
    :cond_e
    const/16 v17, 0x0

    goto :goto_6

    .line 1103
    .restart local v17    # "isLeftEdgeDrawer":Z
    :cond_f
    if-eqz v17, :cond_10

    .line 1104
    const/4 v12, 0x1

    .line 1108
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 1111
    .local v11, "drawerWidthSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1114
    .local v10, "drawerHeightSpec":I
    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 1106
    .end local v10    # "drawerHeightSpec":I
    .end local v11    # "drawerWidthSpec":I
    :cond_10
    const/4 v13, 0x1

    goto :goto_7

    .line 1116
    .end local v7    # "childGravity":I
    .end local v17    # "isLeftEdgeDrawer":Z
    :cond_11
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1121
    .end local v5    # "child":Landroid/view/View;
    .end local v19    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_12
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v4, 0x3

    .line 1916
    instance-of v2, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v2, :cond_1

    .line 1917
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1943
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1921
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1922
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1924
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_2

    .line 1925
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1926
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1927
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1931
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_2
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v2, v4, :cond_3

    .line 1932
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1934
    :cond_3
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v2, v4, :cond_4

    .line 1935
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1937
    :cond_4
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v2, v4, :cond_5

    .line 1938
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1940
    :cond_5
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v2, v4, :cond_0

    .line 1941
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1341
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1342
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1947
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 1948
    .local v7, "superState":Landroid/os/Parcelable;
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v7}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1950
    .local v6, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1951
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1952
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1953
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1955
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    if-ne v10, v8, :cond_2

    move v4, v8

    .line 1957
    .local v4, "isOpenedAndNotClosing":Z
    :goto_1
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    move v3, v8

    .line 1958
    .local v3, "isClosedAndOpening":Z
    :goto_2
    if-nez v4, :cond_0

    if-eqz v3, :cond_4

    .line 1961
    :cond_0
    iget v8, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1966
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isClosedAndOpening":Z
    .end local v4    # "isOpenedAndNotClosing":Z
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1967
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1968
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1969
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1971
    return-object v6

    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2
    move v4, v9

    .line 1955
    goto :goto_1

    .restart local v4    # "isOpenedAndNotClosing":Z
    :cond_3
    move v3, v9

    .line 1957
    goto :goto_2

    .line 1951
    .restart local v3    # "isClosedAndOpening":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1488
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1489
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1492
    .local v0, "action":I
    const/4 v7, 0x1

    .line 1494
    .local v7, "wantTouchEvents":Z
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 1535
    :goto_0
    :pswitch_0
    return v7

    .line 1496
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1497
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1498
    .local v9, "y":F
    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1499
    iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1500
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1501
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1506
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1507
    .restart local v8    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1508
    .restart local v9    # "y":F
    const/4 v4, 0x1

    .line 1509
    .local v4, "peekingOnly":Z
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 1510
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1511
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    .line 1512
    .local v1, "dx":F
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    .line 1513
    .local v2, "dy":F
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 1514
    .local v5, "slop":I
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 1516
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    .line 1517
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1518
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 1522
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1523
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    .line 1518
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1528
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1529
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1530
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1641
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1642
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1652
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1653
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1654
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1655
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1657
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1658
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 1597
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1598
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1607
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1611
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1612
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1613
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1614
    iput v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1616
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1631
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1632
    return-void

    .line 1617
    :cond_1
    if-eqz p2, :cond_3

    .line 1618
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1620
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1621
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1623
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1623
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1627
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1628
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1629
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 572
    if-nez p1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1544
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1546
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1547
    if-eqz p1, :cond_0

    .line 1548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1550
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1268
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1269
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1271
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z

    .prologue
    .line 449
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 450
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 451
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 452
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 453
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .prologue
    .line 420
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 422
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 540
    :cond_0
    if-eqz p1, :cond_1

    .line 541
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 545
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 546
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 596
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 597
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 598
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 5
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    .line 620
    .line 621
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 620
    invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 623
    .local v0, "absGravity":I
    sparse-switch p2, :sswitch_data_0

    .line 638
    :goto_0
    if-eqz p1, :cond_0

    .line 640
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 641
    .local v1, "helper":Landroid/support/v4/widget/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 643
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 658
    :cond_1
    :goto_2
    return-void

    .line 625
    :sswitch_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 628
    :sswitch_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 631
    :sswitch_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 634
    :sswitch_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 640
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 645
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 646
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 647
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 651
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 652
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 623
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    .prologue
    .line 679
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 684
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 685
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 510
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 475
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    and-int v0, p2, v1

    if-ne v0, v1, :cond_2

    .line 480
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 490
    :goto_1
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 491
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_0

    .line 481
    :cond_2
    and-int v0, p2, v2

    if-ne v0, v2, :cond_3

    .line 482
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 483
    :cond_3
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 484
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 485
    :cond_4
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 486
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 771
    .line 772
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 771
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 773
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 774
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 776
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 922
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 927
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 518
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 519
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 520
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1324
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1325
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1326
    return-void

    .line 1324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1304
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1305
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1306
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1336
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1337
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1338
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 9
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 805
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 806
    .local v1, "leftState":I
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v4

    .line 809
    .local v4, "rightState":I
    if-eq v1, v7, :cond_0

    if-ne v4, v7, :cond_2

    .line 810
    :cond_0
    const/4 v5, 0x1

    .line 817
    .local v5, "state":I
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 818
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 819
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 820
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 826
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v5, v6, :cond_6

    .line 827
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 829
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 832
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 833
    .local v2, "listenerCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 834
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v6, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 833
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 811
    .end local v0    # "i":I
    .end local v2    # "listenerCount":I
    .end local v5    # "state":I
    :cond_2
    if-eq v1, v8, :cond_3

    if-ne v4, v8, :cond_4

    .line 812
    :cond_3
    const/4 v5, 0x2

    .restart local v5    # "state":I
    goto :goto_0

    .line 814
    .end local v5    # "state":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "state":I
    goto :goto_0

    .line 821
    .restart local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_5
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 822
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 838
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_6
    return-void
.end method
