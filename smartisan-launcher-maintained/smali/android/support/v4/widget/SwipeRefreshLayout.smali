.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerFinalOffset:F

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 108
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 116
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 117
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 126
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 139
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 170
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1110
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1134
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 317
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 319
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 322
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    .line 323
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 326
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42200000    # 40.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 328
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 329
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 331
    const/high16 v2, 0x42800000    # 64.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 332
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 333
    new-instance v2, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 335
    new-instance v2, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 336
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 338
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 339
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 341
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 342
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 343
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1082
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1083
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1084
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1085
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1086
    if-eqz p2, :cond_0

    .line 1087
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1089
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1090
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1091
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1094
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 1096
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1108
    :goto_0
    return-void

    .line 1098
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1099
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1100
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1101
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1102
    if-eqz p2, :cond_1

    .line 1103
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1105
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1106
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private createProgressView()V
    .locals 3

    .prologue
    const v2, -0x50506

    .line 363
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 364
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    .line 365
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 366
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_0

    .line 576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 577
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 584
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 576
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 5
    .param p1, "overscrollTop"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 961
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 962
    invoke-direct {p0, v4, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 991
    :goto_0
    return-void

    .line 965
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 966
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1

    .line 969
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 988
    .restart local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 989
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    .prologue
    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 908
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 20
    .param p1, "overscrollTop"    # F

    .prologue
    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 913
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v6, p1, v13

    .line 915
    .local v6, "originalDragPercent":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 916
    .local v3, "dragPercent":F
    float-to-double v14, v3

    const-wide v16, 0x3fd999999999999aL    # 0.4

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40400000    # 3.0f

    div-float v2, v13, v14

    .line 917
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v5, v13, v14

    .line 918
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v14, v14

    sub-float v8, v13, v14

    .line 920
    .local v8, "slingshotDist":F
    :goto_0
    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 922
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v14, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v11, v13, v14

    .line 924
    .local v11, "tensionPercent":F
    mul-float v13, v8, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v4, v13, v14

    .line 926
    .local v4, "extraMove":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float v14, v8, v3

    add-float/2addr v14, v4

    float-to-int v14, v14

    add-int v10, v13, v14

    .line 928
    .local v10, "targetY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v13}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    .line 929
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 931
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v13, :cond_1

    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 936
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v13, :cond_2

    .line 937
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v14, p1, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 939
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_5

    .line 940
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0x4c

    if-le v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 941
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 943
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 951
    :cond_3
    :goto_1
    const v13, 0x3f4ccccd    # 0.8f

    mul-float v9, v2, v13

    .line 952
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v14, 0x0

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v15, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 953
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 955
    const/high16 v13, -0x41800000    # -0.25f

    const v14, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v13, v14

    .line 956
    .local v7, "rotation":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v13, v7}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 957
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v13, v10, v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 958
    return-void

    .line 918
    .end local v4    # "extraMove":F
    .end local v7    # "rotation":F
    .end local v8    # "slingshotDist":F
    .end local v9    # "strokeStart":F
    .end local v10    # "targetY":I
    .end local v11    # "tensionPercent":F
    .end local v12    # "tensionSlingshotPercent":F
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto/16 :goto_0

    .line 946
    .restart local v4    # "extraMove":F
    .restart local v8    # "slingshotDist":F
    .restart local v10    # "targetY":I
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "tensionSlingshotPercent":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v13

    const/16 v14, 0xff

    if-ge v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 948
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1175
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1176
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1177
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1180
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1181
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1183
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 229
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_0

    .line 448
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 450
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 451
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    .line 452
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 498
    :goto_0
    return-object v0

    .line 486
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 493
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 495
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 496
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 497
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startDragging(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 1073
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v1

    .line 1074
    .local v0, "yDiff":F
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_0

    .line 1075
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1076
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1077
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 1079
    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 478
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 474
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 1143
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1144
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1149
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1157
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1158
    if-eqz p2, :cond_0

    .line 1159
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1161
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 1162
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 419
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 425
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 426
    if-eqz p1, :cond_1

    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    return-void
.end method


.method public canChildScrollUp()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 660
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v3, :cond_1

    .line 661
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v1, p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v1

    .line 673
    :cond_0
    :goto_0
    return v1

    .line 663
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_6

    .line 664
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 665
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 666
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 667
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 668
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 670
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    move v1, v2

    goto :goto_0

    .line 673
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 899
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 881
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 875
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 348
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_1

    .line 358
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 350
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 352
    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 353
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_0

    .line 355
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 1128
    const/4 v1, 0x0

    .line 1129
    .local v1, "targetTop":I
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 1130
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 1131
    .local v0, "offset":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 1132
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 223
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 224
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 688
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 690
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 693
    .local v0, "action":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 694
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 697
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v4, :cond_2

    .line 741
    :cond_1
    :goto_0
    return v3

    .line 703
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 741
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 705
    :pswitch_1
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v5}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 706
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 707
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 709
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 710
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_1

    .line 713
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_1

    .line 717
    .end local v1    # "pointerIndex":I
    :pswitch_2
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    .line 718
    sget-object v4, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    :cond_3
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 723
    .restart local v1    # "pointerIndex":I
    if-ltz v1, :cond_1

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 727
    .local v2, "y":F
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    goto :goto_1

    .line 731
    .end local v1    # "pointerIndex":I
    .end local v2    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 736
    :pswitch_4
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 737
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v8

    .line 598
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v7

    .line 599
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v9, :cond_2

    .line 603
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 605
    :cond_2
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 608
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 609
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    .line 610
    .local v2, "childLeft":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    .line 611
    .local v3, "childTop":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .line 612
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v10

    sub-int v1, v9, v10

    .line 613
    .local v1, "childHeight":I
    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 614
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v6

    .line 615
    .local v6, "circleWidth":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v5

    .line 616
    .local v5, "circleHeight":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 v12, v8, 0x2

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 622
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 623
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_0

    .line 624
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 626
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v1, :cond_2

    .line 643
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 630
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 629
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 632
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 631
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 629
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 633
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 634
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 633
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 637
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 638
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_3

    .line 639
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_0

    .line 637
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 894
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 888
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 779
    if-lez p3, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 780
    int-to-float v1, p3

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 781
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v4

    .line 782
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 787
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 794
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    aget v1, p4, v4

    sub-int v1, p3, v1

    .line 795
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 796
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 800
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 801
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    .line 803
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 805
    :cond_2
    return-void

    .line 784
    .end local v0    # "parentConsumed":[I
    :cond_3
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 785
    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 830
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int v6, p5, v0

    .line 839
    .local v6, "dy":I
    if-gez v6, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 841
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 843
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 770
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 773
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 818
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 819
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 820
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 823
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 824
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 995
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 996
    .local v0, "action":I
    const/4 v2, -0x1

    .line 998
    .local v2, "pointerIndex":I
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    .line 999
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 1002
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v5, :cond_2

    .line 1069
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 1008
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 1069
    :cond_3
    :goto_1
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1010
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1011
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 1015
    :pswitch_3
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1016
    if-gez v2, :cond_4

    .line 1017
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1021
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1022
    .local v3, "y":F
    invoke-direct {p0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1024
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_3

    .line 1025
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1026
    .local v1, "overscrollTop":F
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    .line 1027
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_1

    .line 1035
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1036
    if-gez v2, :cond_5

    .line 1037
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 1046
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1050
    :pswitch_6
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1051
    if-gez v2, :cond_6

    .line 1052
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1056
    :cond_6
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_7

    .line 1057
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1058
    .restart local v3    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    mul-float v1, v5, v6

    .line 1059
    .restart local v1    # "overscrollTop":F
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1060
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1062
    .end local v1    # "overscrollTop":F
    .end local v3    # "y":F
    :cond_7
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 750
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 753
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->stop()V

    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    .line 201
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 203
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 209
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 210
    return-void

    .line 206
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    goto :goto_0
.end method

.method setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 438
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 534
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 561
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 562
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 545
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 546
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 547
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 550
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    .line 592
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 593
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 215
    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 218
    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 849
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 850
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 683
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 684
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 377
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 507
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 525
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 526
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 516
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    .prologue
    .line 273
    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 274
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 275
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    .line 276
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 251
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 252
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 253
    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 255
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 257
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 393
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 395
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "endTarget":I
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v1, :cond_0

    .line 398
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 402
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 404
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 405
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 409
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    .line 400
    .restart local v0    # "endTarget":I
    :cond_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    float-to-int v0, v1

    goto :goto_0

    .line 407
    .end local v0    # "endTarget":I
    :cond_1
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 282
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 286
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    .line 287
    const/high16 v1, 0x42600000    # 56.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 294
    :goto_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 296
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 289
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_1
.end method

.method setTargetOffsetTopAndBottom(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    .line 1167
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1168
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1169
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1170
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    .line 1172
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 859
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 460
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 466
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    .line 469
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 865
    return-void
.end method
