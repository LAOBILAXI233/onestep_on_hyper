.class public Lsmartisanos/widget/letters/QuickBarEx;
.super Landroid/widget/LinearLayout;
.source "QuickBarEx.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;,
        Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;,
        Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;,
        Lsmartisanos/widget/letters/QuickBarEx$QBListener;
    }
.end annotation


.field public static final ICON_STATUS_HOLDER:I = 0x1

.field public static final ICON_STATUS_NORMAL:I = 0x0

.field public static final ICON_STATUS_TOUCHED:I = 0x2

.field public static LETTER_CHANGED_CLICK:I = 0x0

.field public static LETTER_CHANGED_SLIDE:I = 0x0

.field private static final POPUP_WINDOW_ARROW_WIDTH:I = 0x34

.field public static POUND_POSITION_BOTTOM:I = 0x0

.field public static POUND_POSITION_TOP:I = 0x0

.field public static final QuickBarEx_DEBUG:Z

.field public static final QuickBarEx_TAG:Ljava/lang/String; = "QuickBarEx"

.field private static final REVERSE_SCALE_SIDEBAR:F = 1.1514f

.field private static final SCALE_SIDEBAR:F = 0.8685f

.field public static final SIDEBAR_IN_LEFT_TOP_MODE:I = 0x1

.field private static final STATE_END:I = 0x3

.field private static final STATE_MOVE:I = 0x2

.field private static final STATE_START:I = 0x1

.field private static final SURNAME_NUM_COLUMNS_THRESHOLD:I = 0x8

.field private static final SURNAME_NUM_ROWS_THRESHOLD:I = 0x8

.field public static final VISIBILITY_LIMIT:I = 0x1e


.field private X_OFFSET_SIDEBAR_MODE:F

.field private Y_OFFSET_SIDEBAR_MODE:F

.field private mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

.field private mColumnCount:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRawX:F

.field private mEndX:I

.field private mGridView:Landroid/widget/GridView;

.field private mHasPerformedLongPress:Z

.field private mIconsForSymbols:[[Landroid/graphics/Bitmap;

.field private mIsPerformingHideAnim:Z

.field private mIsPerformingShowAnim:Z

.field private mLastRawX:F

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsmartisanos/widget/letters/LBLetter;",
            ">;"
        }
    .end annotation
.end field

.field private mLettersBar:Lsmartisanos/widget/letters/LettersBar;

.field private mMeasuredHeight:I

.field private mMissX:F

.field private mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

.field private mPopupGridView:Lsmartisanos/widget/SurnameGridView;

.field private mPopupViewMaxHeight:I

.field private mPopupViewPendingHorizontal:I

.field private mPopupViewPendingVertical:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupYOffset:I

.field private mPoundPosition:I

.field private mPoundVisibility:Z

.field private mPrePosition:I

.field private mQBListener:Lsmartisanos/widget/letters/QuickBarEx$QBListener;

.field private mSecondPopup:Landroid/widget/PopupWindow;

.field private mSecondPopupView:Landroid/widget/TextView;

.field private mStartX:I

.field private mState:I

.field private mSurnameGridViewColumnsThreshold:I

.field private mSurnameGridViewItemHeight:I

.field private mSurnameGridViewItemWidth:I

.field private mSurnameGridViewNumColumns:I

.field private mSurnameGridViewNumRows:I

.field private mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

.field private mSymbols:[I

.field private mThumbModeYDiff:I

.field private mWidth:I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    const-string v0, "QuickBarEx"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    .line 89
    sput v2, Lsmartisanos/widget/letters/QuickBarEx;->POUND_POSITION_TOP:I

    .line 90
    const/4 v0, 0x2

    sput v0, Lsmartisanos/widget/letters/QuickBarEx;->POUND_POSITION_BOTTOM:I

    .line 127
    const/4 v0, 0x0

    sput v0, Lsmartisanos/widget/letters/QuickBarEx;->LETTER_CHANGED_SLIDE:I

    .line 128
    sput v2, Lsmartisanos/widget/letters/QuickBarEx;->LETTER_CHANGED_CLICK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/letters/QuickBarEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/letters/QuickBarEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMeasuredHeight:I

    .line 64
    iput v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    .line 72
    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    .line 74
    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    .line 75
    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    .line 80
    iput-boolean v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingHideAnim:Z

    .line 81
    iput-boolean v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingShowAnim:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    .line 88
    iput-boolean v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundVisibility:Z

    .line 91
    sget v0, Lsmartisanos/widget/letters/QuickBarEx;->POUND_POSITION_BOTTOM:I

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundPosition:I

    .line 107
    iput v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    .line 171
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/QuickBarEx;->init(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$QBListener;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mQBListener:Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    return-object v0
.end method

.method static synthetic access$100(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->onShowLetterGridAnimationEnd()V

    return-void
.end method

.method static synthetic access$1102(Lsmartisanos/widget/letters/QuickBarEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingHideAnim:Z

    return p1
.end method

.method static synthetic access$1200(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->onHideLetterGridAnimationEnd()V

    return-void
.end method

.method static synthetic access$1300(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    return-object v0
.end method

.method static synthetic access$1400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/SurnameGridView;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    return-object v0
.end method

.method static synthetic access$1800(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1900(Lsmartisanos/widget/letters/QuickBarEx;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMeasuredHeight:I

    return v0
.end method

.method static synthetic access$200(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGridWithAnim()V

    return-void
.end method

.method static synthetic access$2000(Lsmartisanos/widget/letters/QuickBarEx;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    return v0
.end method

.method static synthetic access$2100(Lsmartisanos/widget/letters/QuickBarEx;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemHeight:I

    return v0
.end method

.method static synthetic access$2200(Lsmartisanos/widget/letters/QuickBarEx;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    return v0
.end method

.method static synthetic access$300(Lsmartisanos/widget/letters/QuickBarEx;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    return v0
.end method

.method static synthetic access$400(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lsmartisanos/widget/letters/QuickBarEx;->showFlowPopupWindow(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$600(Lsmartisanos/widget/letters/QuickBarEx;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lsmartisanos/widget/letters/QuickBarEx;->showGridPopupWindow(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$702(Lsmartisanos/widget/letters/QuickBarEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$802(Lsmartisanos/widget/letters/QuickBarEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingShowAnim:Z

    return p1
.end method

.method static synthetic access$900(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/LettersBar;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/letters/QuickBarEx;

    .prologue
    .line 43
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    return-object v0
.end method

.method private dipToPx(D)I
    .locals 7
    .param p1, "dipValue"    # D

    .prologue
    .line 728
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 729
    .local v0, "scale":F
    float-to-double v2, v0

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private dismissPopupWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1111
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1113
    iput-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1114
    iput-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    .line 1115
    iput-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    .line 1117
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1119
    iput-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 1120
    iput-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    .line 1122
    :cond_1
    return-void
.end method

.method private getScreenWidth()I
    .locals 4

    .prologue
    .line 721
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 722
    .local v0, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 723
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 724
    iget v2, v0, Landroid/graphics/Point;->x:I

    return v2
.end method

.method private hideLetterGridWithAnim()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 680
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->dismissPopupWindow()V

    .line 681
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 682
    .local v1, "startAS":Landroid/animation/AnimatorSet;
    const-string v3, "x"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getX()F

    move-result v5

    aput v5, v4, v6

    iget v5, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 683
    .local v0, "pvhX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 684
    .local v2, "translateAnimator":Landroid/animation/Animator;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 685
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 686
    new-instance v3, Lsmartisanos/widget/letters/QuickBarEx$6;

    invoke-direct {v3, p0}, Lsmartisanos/widget/letters/QuickBarEx$6;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 711
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x3e06a7f0    # 0.1315f

    .line 324
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    .line 325
    iget-object v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 328
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    sget v4, Lsmartisanos/widget/R$layout;->quickbar_ex:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 330
    sget v4, Lsmartisanos/widget/R$dimen;->quickbar_ex_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mWidth:I

    .line 331
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v4

    sget v5, Lsmartisanos/widget/R$dimen;->letters_bar_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    .line 332
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v4

    iget v5, p0, Lsmartisanos/widget/letters/QuickBarEx;->mWidth:I

    sub-int/2addr v4, v5

    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    .line 334
    sget-boolean v4, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v4, :cond_0

    .line 335
    const-string v4, "QuickBarEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStartX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->initLettersBar()V

    .line 339
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->initGridView()V

    .line 341
    iget v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 344
    .local v3, "screenWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 345
    .local v2, "screenHeight":I
    int-to-float v4, v3

    mul-float/2addr v4, v7

    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->X_OFFSET_SIDEBAR_MODE:F

    .line 346
    int-to-float v4, v2

    mul-float/2addr v4, v7

    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->Y_OFFSET_SIDEBAR_MODE:F

    .line 347
    return-void
.end method

.method private initGridView()V
    .locals 2

    .prologue
    .line 364
    sget v0, Lsmartisanos/widget/R$id;->quickbar_right_grid_view:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    .line 365
    new-instance v0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;-><init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    .line 366
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsmartisanos/widget/letters/AlphabetsConfig;->alphabetsByLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->setAlphabets([Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lsmartisanos/widget/letters/QuickBarEx$2;

    invoke-direct {v1, p0}, Lsmartisanos/widget/letters/QuickBarEx$2;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 381
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lsmartisanos/widget/letters/QuickBarEx$3;

    invoke-direct {v1, p0}, Lsmartisanos/widget/letters/QuickBarEx$3;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lsmartisanos/widget/letters/QuickBarEx$4;

    invoke-direct {v1, p0}, Lsmartisanos/widget/letters/QuickBarEx$4;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 410
    return-void
.end method

.method private initLettersBar()V
    .locals 2

    .prologue
    .line 351
    sget v0, Lsmartisanos/widget/R$id;->quickbar_left_letters_bar:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/letters/LettersBar;

    iput-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    .line 352
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/LettersBar;->setLetters(Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    new-instance v1, Lsmartisanos/widget/letters/QuickBarEx$1;

    invoke-direct {v1, p0}, Lsmartisanos/widget/letters/QuickBarEx$1;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/LettersBar;->setListener(Lsmartisanos/widget/letters/LettersBar$LBListener;)V

    .line 360
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->initLetters()V

    .line 361
    return-void
.end method

.method private measureHeight(I)I
    .locals 1
    .param p1, "measureSpec"    # I

    .prologue
    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method private moveQuickBar(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "missX"    # F

    .prologue
    .line 624
    sub-float v0, p1, p2

    .line 625
    .local v0, "xOffset":F
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 626
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 627
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 629
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 630
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    goto :goto_0

    .line 631
    :cond_2
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 632
    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 633
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    goto :goto_0
.end method

.method private onHideLetterGridAnimationEnd()V
    .locals 2

    .prologue
    .line 714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    .line 715
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 716
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/LettersBar;->setShowBg(Z)V

    .line 717
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->invalidate()V

    .line 718
    return-void
.end method

.method private onMoveInLongPressState(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 537
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v6, v9

    .line 542
    .local v6, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v7, v9

    .line 544
    .local v7, "rawY":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsmartisanos/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 545
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    if-eqz v9, :cond_0

    .line 546
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 547
    .local v2, "contentViewLocation":[I
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    invoke-virtual {v9, v2}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getLocationOnScreen([I)V

    .line 549
    const/4 v4, -0x1

    .line 550
    .local v4, "position":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    invoke-virtual {v9}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 551
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    invoke-virtual {v9, v3}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 552
    .local v1, "child":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 553
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 554
    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int v9, v6, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    sub-int v10, v7, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 555
    move v4, v3

    .line 560
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    if-ltz v4, :cond_6

    .line 561
    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    if-eq v9, v4, :cond_4

    .line 562
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    iget v10, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v9, v10}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 563
    .local v5, "preChild":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 564
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 565
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    .line 567
    :cond_3
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    invoke-virtual {v9, v4}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 568
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 569
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    move-object v9, v1

    .line 570
    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 571
    .local v8, "surname":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    .line 582
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "preChild":Landroid/view/View;
    .end local v8    # "surname":Ljava/lang/String;
    :cond_4
    :goto_2
    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    goto/16 :goto_0

    .line 550
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 576
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    iget v10, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v9, v10}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 577
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 578
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 579
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    goto :goto_2

    .line 585
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "contentViewLocation":[I
    .end local v3    # "i":I
    .end local v4    # "position":I
    :cond_7
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    if-eqz v9, :cond_0

    .line 586
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 587
    .restart local v2    # "contentViewLocation":[I
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v9, v2}, Lsmartisanos/widget/SurnameGridView;->getLocationOnScreen([I)V

    .line 589
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    const/4 v10, 0x0

    aget v10, v2, v10

    sub-int v10, v6, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    sub-int v11, v7, v11

    invoke-virtual {v9, v10, v11}, Lsmartisanos/widget/SurnameGridView;->pointToPosition(II)I

    move-result v4

    .line 590
    .restart local v4    # "position":I
    if-ltz v4, :cond_a

    .line 591
    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    if-eq v9, v4, :cond_9

    .line 592
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v10, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v9, v10}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 593
    .restart local v5    # "preChild":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 594
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 595
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    .line 597
    :cond_8
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v9, v4}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 598
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 599
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 600
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v9}, Lsmartisanos/widget/SurnameGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 601
    .restart local v8    # "surname":Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 602
    invoke-direct {p0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    .line 612
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "preChild":Landroid/view/View;
    .end local v8    # "surname":Ljava/lang/String;
    :cond_9
    :goto_3
    iput v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    goto/16 :goto_0

    .line 606
    :cond_a
    iget-object v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v10, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v9, v10}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 608
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 609
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lsmartisanos/widget/letters/QuickBarEx;->showSecondPopupWindow(Landroid/view/View;)V

    goto :goto_3
.end method

.method private onShowLetterGridAnimationEnd()V
    .locals 2

    .prologue
    .line 673
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->setX(F)V

    .line 674
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    .line 675
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/LettersBar;->setShowBg(Z)V

    .line 676
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->invalidate()V

    .line 677
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 619
    iput p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    .line 620
    iget-object v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLettersBar:Lsmartisanos/widget/letters/LettersBar;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lsmartisanos/widget/letters/LettersBar;->setSettled(Z)V

    .line 621
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFlowPopupWindow(Landroid/view/View;I)V
    .locals 44
    .param p1, "alphabetView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-object/from16 v39, v0

    if-nez v39, :cond_0

    .line 734
    new-instance v39, Ljava/lang/IllegalArgumentException;

    const-string v40, "You must implements SurnameListener"

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 737
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lsmartisanos/widget/letters/AlphabetsConfig;->isSurnameSupportedByLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2

    .line 928
    :cond_1
    :goto_0
    return-void

    .line 741
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v34

    .line 742
    .local v34, "surnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v34, :cond_1

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v39

    if-eqz v39, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v39

    sget v40, Lsmartisanos/widget/R$layout;->surname_flow_popup:I

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 747
    .local v13, "contentView":Landroid/view/View;
    sget v39, Lsmartisanos/widget/R$id;->surname_content:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    .line 749
    const-wide/high16 v40, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    .line 751
    const-wide v40, 0x4071b00000000000L    # 283.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewMaxHeight:I

    .line 752
    const-wide/high16 v40, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    .line 753
    const-wide v40, 0x4040800000000000L    # 33.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemHeight:I

    .line 754
    const/16 v39, 0x8

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "font_scale"

    const/high16 v41, 0x3f800000    # 1.0f

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v14

    .line 757
    .local v14, "fontScale":F
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 758
    .local v23, "paint":Landroid/graphics/Paint;
    const/16 v39, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 759
    sget-object v39, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 760
    const-wide/high16 v40, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v14

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 761
    const-string v39, "#B3000000"

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    const/16 v30, 0x0

    .line 764
    .local v30, "surnameFlowLayoutWidth":I
    const-wide v40, 0x4058800000000000L    # 98.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    .line 766
    .local v31, "surnameItemMaxWidth":I
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 767
    .local v27, "surname":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v39

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v33, v0

    .line 768
    .local v33, "surnameWidth":I
    move/from16 v0, v33

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 769
    move/from16 v33, v31

    .line 771
    :cond_3
    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    mul-int/lit8 v39, v39, 0x2

    add-int v39, v39, v33

    add-int v30, v30, v39

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v39

    sget v40, Lsmartisanos/widget/R$layout;->surname_popup_item_ex:I

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 774
    .local v32, "surnameView":Landroid/widget/TextView;
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    new-instance v22, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v39, -0x2

    const/16 v40, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 776
    .local v22, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemHeight:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 777
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    const/16 v40, 0x0

    const-wide/high16 v42, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 779
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4

    .line 780
    sget v39, Lsmartisanos/widget/R$drawable;->surname_popup_item_special:I

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 785
    :goto_2
    new-instance v39, Lsmartisanos/widget/letters/QuickBarEx$7;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$7;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    new-instance v39, Lsmartisanos/widget/letters/QuickBarEx$8;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx$8;-><init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/widget/TextView;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/SurnameFlowLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 782
    :cond_4
    sget v39, Lsmartisanos/widget/R$drawable;->surname_popup_item_left:I

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 814
    .end local v22    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v27    # "surname":Ljava/lang/String;
    .end local v32    # "surnameView":Landroid/widget/TextView;
    .end local v33    # "surnameWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move/from16 v0, v30

    move/from16 v1, v39

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v40, v0

    mul-int v38, v39, v40

    .line 816
    .local v38, "width":I
    :goto_3
    div-int v39, v30, v38

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v40

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Lsmartisanos/widget/letters/SurnameFlowLayout;->measure(II)V

    .line 819
    sget-boolean v39, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v39, :cond_6

    .line 820
    const-string v39, "QuickBarEx"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "surname FlowLayout, width = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v39, "QuickBarEx"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "surname FlowLayout, measuredHeight = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getMeasuredHeight()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    .line 825
    .local v21, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v38

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/SurnameFlowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    if-nez v39, :cond_7

    .line 829
    new-instance v39, Landroid/widget/PopupWindow;

    invoke-direct/range {v39 .. v39}, Landroid/widget/PopupWindow;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    const/16 v40, -0x2

    const/16 v41, -0x2

    invoke-virtual/range {v39 .. v41}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x106000d

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 834
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 836
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 837
    .local v17, "locationOnScreen":[I
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 838
    .local v18, "locationOnWindow":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->getLocationOnScreen([I)V

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->getLocationInWindow([I)V

    .line 840
    const/16 v39, 0x1

    aget v39, v18, v39

    const/16 v40, 0x1

    aget v40, v17, v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    .line 842
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v6, v0, [I

    .line 843
    .local v6, "alphabetViewLocation":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v39

    if-eqz v39, :cond_8

    .line 846
    invoke-static {}, Lsmartisanos/util/SidebarUtils;->getSidebarModeState()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_8

    .line 847
    const/16 v39, 0x0

    aget v40, v6, v39

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->X_OFFSET_SIDEBAR_MODE:F

    move/from16 v41, v0

    sub-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    aput v40, v6, v39

    .line 851
    :cond_8
    const/16 v39, 0x0

    aget v39, v6, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v40

    div-int/lit8 v40, v40, 0x2

    add-int v7, v39, v40

    .line 852
    .local v7, "anchorX":I
    const/16 v39, 0x1

    aget v39, v6, v39

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v40

    div-int/lit8 v40, v40, 0x2

    add-int v8, v39, v40

    .line 854
    .local v8, "anchorY":I
    sget-boolean v39, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v39, :cond_9

    .line 855
    const-string v39, "QuickBarEx"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "alphabet anchorX = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x0

    aget v41, v6, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", anchorY = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget v41, v6, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_9
    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 859
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 860
    .local v25, "popMeasureWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 862
    .local v24, "popMeasureHeight":I
    sget-boolean v39, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v39, :cond_a

    .line 863
    const-string v39, "QuickBarEx"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "popMeasureWidth = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", popMeasureHeight = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_a
    invoke-direct/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v39

    sub-int v39, v39, v7

    div-int/lit8 v40, v25, 0x2

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 868
    .local v26, "rightSpace":I
    div-int/lit8 v39, v25, 0x2

    sub-int v19, v7, v39

    .line 870
    .local v19, "locationX":I
    sub-int v39, v25, v26

    add-int/lit8 v9, v39, -0x1a

    .line 873
    .local v9, "arrowTranslationX":I
    sget v39, Lsmartisanos/widget/R$id;->surname_top_mask:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageView;

    .line 874
    .local v36, "topMask":Landroid/widget/ImageView;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/widget/FrameLayout$LayoutParams;

    .line 875
    .local v37, "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 877
    sget v39, Lsmartisanos/widget/R$id;->surname_bottom_mask:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 878
    .local v11, "bottomMask":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 879
    .local v12, "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v38

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 881
    sget v39, Lsmartisanos/widget/R$id;->surname_container:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 883
    .local v28, "surnameContainer":Landroid/widget/LinearLayout;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/FrameLayout$LayoutParams;

    .line 884
    .local v29, "surnameContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getMeasuredHeight()I

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewMaxHeight:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_b

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewMaxHeight:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 887
    :cond_b
    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    .line 890
    const-wide/high16 v40, 0x402c000000000000L    # 14.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    const-wide/high16 v40, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v40

    const-wide/high16 v42, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v41

    const-wide/high16 v42, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v42

    move-object/from16 v0, v28

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 891
    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    add-int v9, v9, v39

    .line 892
    const-wide/high16 v40, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 893
    const-wide/high16 v40, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v39

    move/from16 v0, v39

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 894
    move-object/from16 v0, v37

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v39, v0

    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 895
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v39, v0

    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 900
    :goto_4
    invoke-virtual/range {v36 .. v37}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    const/16 v16, 0x0

    .line 906
    .local v16, "isShowBelow":Z
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    move/from16 v0, p2

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    move/from16 v0, p2

    move/from16 v1, v39

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x2

    move/from16 v0, p2

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x2

    move/from16 v0, p2

    move/from16 v1, v39

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x3

    move/from16 v0, p2

    move/from16 v1, v39

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v39, v0

    const/16 v40, 0x5

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x3

    move/from16 v0, p2

    move/from16 v1, v39

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x4

    move/from16 v0, p2

    move/from16 v1, v39

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v39, v0

    const/16 v40, 0x7

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_10

    .line 910
    :cond_f
    const/16 v16, 0x1

    .line 913
    :cond_10
    if-eqz v16, :cond_13

    .line 914
    sget v39, Lsmartisanos/widget/R$id;->surname_popup_top_arrow:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    .line 915
    .local v35, "topArrow":Landroid/widget/ImageView;
    int-to-float v0, v9

    move/from16 v39, v0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 916
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 918
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    move/from16 v39, v0

    add-int v20, v8, v39

    .line 927
    .end local v35    # "topArrow":Landroid/widget/ImageView;
    .local v20, "locationY":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    move/from16 v41, v0

    add-int v41, v41, v20

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move/from16 v2, v40

    move/from16 v3, v19

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .end local v6    # "alphabetViewLocation":[I
    .end local v7    # "anchorX":I
    .end local v8    # "anchorY":I
    .end local v9    # "arrowTranslationX":I
    .end local v11    # "bottomMask":Landroid/widget/ImageView;
    .end local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "isShowBelow":Z
    .end local v17    # "locationOnScreen":[I
    .end local v18    # "locationOnWindow":[I
    .end local v19    # "locationX":I
    .end local v20    # "locationY":I
    .end local v21    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v24    # "popMeasureHeight":I
    .end local v25    # "popMeasureWidth":I
    .end local v26    # "rightSpace":I
    .end local v28    # "surnameContainer":Landroid/widget/LinearLayout;
    .end local v29    # "surnameContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v36    # "topMask":Landroid/widget/ImageView;
    .end local v37    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v38    # "width":I
    :cond_11
    move/from16 v38, v30

    .line 814
    goto/16 :goto_3

    .line 897
    .restart local v6    # "alphabetViewLocation":[I
    .restart local v7    # "anchorX":I
    .restart local v8    # "anchorY":I
    .restart local v9    # "arrowTranslationX":I
    .restart local v11    # "bottomMask":Landroid/widget/ImageView;
    .restart local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v17    # "locationOnScreen":[I
    .restart local v18    # "locationOnWindow":[I
    .restart local v19    # "locationX":I
    .restart local v21    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v24    # "popMeasureHeight":I
    .restart local v25    # "popMeasureWidth":I
    .restart local v26    # "rightSpace":I
    .restart local v28    # "surnameContainer":Landroid/widget/LinearLayout;
    .restart local v29    # "surnameContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v36    # "topMask":Landroid/widget/ImageView;
    .restart local v37    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v38    # "width":I
    :cond_12
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_4

    .line 920
    .restart local v16    # "isShowBelow":Z
    :cond_13
    sget v39, Lsmartisanos/widget/R$id;->surname_popup_bottom_arrow:I

    move/from16 v0, v39

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 921
    .local v10, "bottomArrow":Landroid/widget/ImageView;
    int-to-float v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 922
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    sub-int v39, v8, v24

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    move/from16 v40, v0

    sub-int v20, v39, v40

    .restart local v20    # "locationY":I
    goto :goto_5
.end method

.method private showGridPopupWindow(Landroid/view/View;I)V
    .locals 36
    .param p1, "alphabetView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 932
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string v32, "You must implements SurnameListener"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 935
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lsmartisanos/widget/letters/AlphabetsConfig;->isSurnameSupportedByLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 1108
    :cond_1
    :goto_0
    return-void

    .line 939
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mAlphabetsAdapter:Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 940
    .local v26, "surnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v31

    if-eqz v31, :cond_1

    .line 943
    new-instance v24, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;-><init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/content/Context;Ljava/util/List;)V

    .line 945
    .local v24, "surnameAdapter":Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v31

    sget v32, Lsmartisanos/widget/R$layout;->surname_popup:I

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 946
    .local v13, "contentView":Landroid/view/View;
    sget v31, Lsmartisanos/widget/R$id;->surname_content:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    .line 948
    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    .line 950
    const-wide v32, 0x4040800000000000L    # 33.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemHeight:I

    .line 951
    const-wide v32, 0x4071b00000000000L    # 283.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewMaxHeight:I

    .line 952
    const-wide/high16 v32, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewPendingVertical:I

    .line 953
    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewPendingHorizontal:I

    .line 955
    const/16 v31, 0x8

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    .line 956
    const-wide/high16 v32, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    .line 958
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v31, v0

    :goto_1
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    .line 959
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    mul-double v32, v32, v34

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewPendingHorizontal:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    add-int v30, v31, v32

    .line 962
    .local v30, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewMaxHeight:I

    move/from16 v31, v0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupViewPendingVertical:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    add-int v15, v31, v32

    .line 964
    .local v15, "height":I
    sget-boolean v31, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v31, :cond_3

    .line 965
    const-string v31, "QuickBarEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "surname GridView, width = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", height = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lsmartisanos/widget/SurnameGridView;->setNumColumns(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-direct {v0, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v31 .. v32}, Lsmartisanos/widget/SurnameGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    const/16 v32, 0x11

    invoke-virtual/range {v31 .. v32}, Lsmartisanos/widget/SurnameGridView;->setGravity(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SurnameGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    new-instance v32, Lsmartisanos/widget/letters/QuickBarEx$9;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$9;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual/range {v31 .. v32}, Lsmartisanos/widget/SurnameGridView;->setOnPressChangeListener(Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v31, v0

    new-instance v32, Lsmartisanos/widget/letters/QuickBarEx$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx$10;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual/range {v31 .. v32}, Lsmartisanos/widget/SurnameGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 1006
    new-instance v31, Landroid/widget/PopupWindow;

    invoke-direct/range {v31 .. v31}, Landroid/widget/PopupWindow;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    const/16 v32, -0x2

    const/16 v33, -0x2

    invoke-virtual/range {v31 .. v33}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x106000d

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1011
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1013
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1014
    .local v17, "locationOnScreen":[I
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1015
    .local v18, "locationOnWindow":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->getLocationOnScreen([I)V

    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->getLocationInWindow([I)V

    .line 1017
    const/16 v31, 0x1

    aget v31, v18, v31

    const/16 v32, 0x1

    aget v32, v17, v32

    sub-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    .line 1018
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v6, v0, [I

    .line 1019
    .local v6, "alphabetViewLocation":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1021
    sget-boolean v31, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v31, :cond_5

    .line 1022
    const-string v31, "QuickBarEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "alphabetView.getWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", alphabetView.getHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 1026
    invoke-static {}, Lsmartisanos/util/SidebarUtils;->getSidebarModeState()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 1027
    const/16 v31, 0x0

    aget v32, v6, v31

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->X_OFFSET_SIDEBAR_MODE:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    aput v32, v6, v31

    .line 1031
    :cond_6
    const/16 v31, 0x0

    aget v31, v6, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v7, v31, v32

    .line 1032
    .local v7, "anchorX":I
    const/16 v31, 0x1

    aget v31, v6, v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v8, v31, v32

    .line 1034
    .local v8, "anchorY":I
    sget-boolean v31, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v31, :cond_7

    .line 1035
    const-string v31, "QuickBarEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "alphabet anchorX = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget v33, v6, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", anchorY = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget v33, v6, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_7
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1039
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 1040
    .local v22, "popMeasureWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 1042
    .local v21, "popMeasureHeight":I
    sget-boolean v31, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v31, :cond_8

    .line 1043
    const-string v31, "QuickBarEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "popMeasureWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", popMeasureHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_8
    invoke-direct/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v31

    sub-int v31, v31, v7

    div-int/lit8 v32, v22, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1048
    .local v23, "rightSpace":I
    div-int/lit8 v31, v22, 0x2

    sub-int v19, v7, v31

    .line 1050
    .local v19, "locationX":I
    sub-int v31, v22, v23

    add-int/lit8 v9, v31, -0x1a

    .line 1053
    .local v9, "arrowTranslationX":I
    sget v31, Lsmartisanos/widget/R$id;->surname_top_mask:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 1054
    .local v28, "topMask":Landroid/widget/ImageView;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/FrameLayout$LayoutParams;

    .line 1055
    .local v29, "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1057
    sget v31, Lsmartisanos/widget/R$id;->surname_bottom_mask:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1058
    .local v11, "bottomMask":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1059
    .local v12, "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    move/from16 v0, v31

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1061
    sget v31, Lsmartisanos/widget/R$id;->surname_container:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 1062
    .local v25, "surnameContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewColumnsThreshold:I

    move/from16 v31, v0

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 1064
    const-wide/high16 v32, 0x402c000000000000L    # 14.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v32

    const-wide/high16 v34, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v33

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v34

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1065
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    add-int v9, v9, v31

    .line 1066
    const-wide/high16 v32, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1067
    const-wide/high16 v32, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    move/from16 v0, v31

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1080
    :goto_3
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    const/16 v16, 0x0

    .line 1086
    .local v16, "isShowBelow":Z
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    move/from16 v0, p2

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_c

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    move/from16 v0, p2

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, p2

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x2

    move/from16 v0, p2

    move/from16 v1, v31

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, p2

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, p2

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mColumnCount:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x4

    move/from16 v0, p2

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_d

    .line 1090
    :cond_c
    const/16 v16, 0x1

    .line 1093
    :cond_d
    if-eqz v16, :cond_12

    .line 1094
    sget v31, Lsmartisanos/widget/R$id;->surname_popup_top_arrow:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 1095
    .local v27, "topArrow":Landroid/widget/ImageView;
    int-to-float v0, v9

    move/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1096
    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    move/from16 v31, v0

    add-int v20, v8, v31

    .line 1107
    .end local v27    # "topArrow":Landroid/widget/ImageView;
    .local v20, "locationY":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    move/from16 v33, v0

    add-int v33, v33, v20

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    move/from16 v3, v19

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 958
    .end local v6    # "alphabetViewLocation":[I
    .end local v7    # "anchorX":I
    .end local v8    # "anchorY":I
    .end local v9    # "arrowTranslationX":I
    .end local v11    # "bottomMask":Landroid/widget/ImageView;
    .end local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "height":I
    .end local v16    # "isShowBelow":Z
    .end local v17    # "locationOnScreen":[I
    .end local v18    # "locationOnWindow":[I
    .end local v19    # "locationX":I
    .end local v20    # "locationY":I
    .end local v21    # "popMeasureHeight":I
    .end local v22    # "popMeasureWidth":I
    .end local v23    # "rightSpace":I
    .end local v25    # "surnameContainer":Landroid/widget/LinearLayout;
    .end local v28    # "topMask":Landroid/widget/ImageView;
    .end local v29    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v30    # "width":I
    :cond_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v31

    goto/16 :goto_1

    .line 962
    .restart local v30    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumRows:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemHeight:I

    move/from16 v32, v0

    mul-int v31, v31, v32

    goto/16 :goto_2

    .line 1069
    .restart local v6    # "alphabetViewLocation":[I
    .restart local v7    # "anchorX":I
    .restart local v8    # "anchorY":I
    .restart local v9    # "arrowTranslationX":I
    .restart local v11    # "bottomMask":Landroid/widget/ImageView;
    .restart local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "height":I
    .restart local v17    # "locationOnScreen":[I
    .restart local v18    # "locationOnWindow":[I
    .restart local v19    # "locationX":I
    .restart local v21    # "popMeasureHeight":I
    .restart local v22    # "popMeasureWidth":I
    .restart local v23    # "rightSpace":I
    .restart local v25    # "surnameContainer":Landroid/widget/LinearLayout;
    .restart local v28    # "topMask":Landroid/widget/ImageView;
    .restart local v29    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_10
    const-wide/high16 v32, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    mul-int/lit8 v31, v31, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewNumColumns:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameGridViewItemWidth:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    sub-int v31, v31, v32

    div-int/lit8 v14, v31, 0x2

    .line 1071
    .local v14, "extraPadding":I
    const-wide/high16 v32, 0x402c000000000000L    # 14.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    add-int v31, v31, v14

    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v32

    const-wide/high16 v34, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v33

    add-int v33, v33, v14

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v34

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1072
    add-int/lit8 v9, v7, -0x1a

    .line 1073
    const-wide/high16 v32, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    add-int v31, v31, v14

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1074
    const-wide/high16 v32, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v31

    add-int v31, v31, v14

    move/from16 v0, v31

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_3

    .line 1077
    .end local v14    # "extraPadding":I
    :cond_11
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_3

    .line 1100
    .restart local v16    # "isShowBelow":Z
    :cond_12
    sget v31, Lsmartisanos/widget/R$id;->surname_popup_bottom_arrow:I

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1101
    .local v10, "bottomArrow":Landroid/widget/ImageView;
    int-to-float v0, v9

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1102
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    sub-int v31, v8, v21

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupYOffset:I

    move/from16 v32, v0

    sub-int v20, v31, v32

    .restart local v20    # "locationY":I
    goto/16 :goto_4
.end method

.method private showLetterGridWithAnim()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 638
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mQBListener:Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mQBListener:Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    invoke-interface {v3}, Lsmartisanos/widget/letters/QuickBarEx$QBListener;->onLetterGridShow()V

    .line 641
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 642
    .local v0, "endAS":Landroid/animation/AnimatorSet;
    const-string v3, "x"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getX()F

    move-result v5

    aput v5, v4, v6

    iget v5, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 643
    .local v1, "pvhX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 644
    .local v2, "translateAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 645
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 646
    new-instance v3, Lsmartisanos/widget/letters/QuickBarEx$5;

    invoke-direct {v3, p0}, Lsmartisanos/widget/letters/QuickBarEx$5;-><init>(Lsmartisanos/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 670
    return-void
.end method

.method private showSecondPopupWindow(Landroid/view/View;)V
    .locals 22
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1125
    if-nez p1, :cond_1

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 1132
    new-instance v16, Landroid/widget/PopupWindow;

    invoke-direct/range {v16 .. v16}, Landroid/widget/PopupWindow;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-virtual/range {v16 .. v18}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x106000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/letters/QuickBarEx;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    sget v17, Lsmartisanos/widget/R$layout;->surname_second_popup_ex:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    .line 1137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lsmartisanos/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v18

    const-wide/high16 v20, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/letters/QuickBarEx;->dipToPx(D)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v20

    invoke-virtual/range {v16 .. v20}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1141
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1143
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v5, v0, [I

    .line 1144
    .local v5, "anchorViewLocation":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1146
    const-string v16, "QuickBarEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "original anchorViewLocation[0] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", anchorViewLocation[1] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1149
    .local v12, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TextView;->measure(II)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    .line 1153
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopupView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    .line 1155
    .local v10, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1156
    .local v6, "anchorViewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1158
    .local v4, "anchorViewHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lsmartisanos/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1166
    .local v9, "firstItem":Landroid/view/View;
    :goto_1
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [I

    .line 1167
    .local v11, "initialOffset":[I
    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1169
    const-string v16, "QuickBarEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initialOffset[0] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Lsmartisanos/util/SidebarUtils;->getSidebarModeState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1172
    const/16 v16, 0x0

    aget v17, v5, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->X_OFFSET_SIDEBAR_MODE:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v5, v16

    .line 1173
    const/16 v16, 0x0

    aget v17, v11, v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->X_OFFSET_SIDEBAR_MODE:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v11, v16

    .line 1176
    :cond_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v5, v18

    const/16 v19, 0x0

    aget v19, v11, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f5e5604    # 0.8685f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const v18, 0x3f936113    # 1.1514f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v5, v16

    .line 1177
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v5, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->Y_OFFSET_SIDEBAR_MODE:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const v18, 0x3f936113    # 1.1514f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v5, v16

    .line 1182
    .end local v9    # "firstItem":Landroid/view/View;
    .end local v11    # "initialOffset":[I
    :goto_2
    const-string v16, "QuickBarEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "adjusted anchorViewLocation[0] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", anchorViewLocation[1] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/16 v16, 0x0

    aget v16, v5, v16

    div-int/lit8 v17, v6, 0x2

    add-int v7, v16, v17

    .line 1185
    .local v7, "anchorX":I
    const/16 v16, 0x1

    aget v16, v5, v16

    div-int/lit8 v17, v4, 0x2

    add-int v8, v16, v17

    .line 1187
    .local v8, "anchorY":I
    div-int/lit8 v16, v13, 0x2

    sub-int v14, v7, v16

    .line 1188
    .local v14, "x":I
    sub-int v16, v8, v10

    add-int/lit8 v15, v16, -0x14

    .line 1190
    .local v15, "y":I
    sget-boolean v16, Lsmartisanos/widget/letters/QuickBarEx;->QuickBarEx_DEBUG:Z

    if-eqz v16, :cond_4

    .line 1191
    const-string v16, "QuickBarEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "x = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", width = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", anchorView.getWidth() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v16, "QuickBarEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "y = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", height = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", anchorView.getHeight() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mSecondPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x33

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1163
    .end local v7    # "anchorX":I
    .end local v8    # "anchorY":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lsmartisanos/widget/SurnameGridView;->getFirstVisiblePosition()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "firstItem":Landroid/view/View;
    goto/16 :goto_1

    .line 1179
    .end local v9    # "firstItem":Landroid/view/View;
    :cond_6
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v5, v17

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/letters/QuickBarEx;->mThumbModeYDiff:I

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v5, v16

    goto/16 :goto_2
.end method


.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsmartisanos/widget/letters/AlphabetsConfig;->isAlphabetsSupportedByLanguage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 436
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 532
    :cond_0
    :goto_0
    return v6

    .line 439
    :cond_1
    const/4 v3, 0x0

    .line 441
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 442
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 443
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 444
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 446
    .local v2, "rawX":F
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lsmartisanos/util/SidebarUtils;->getSidebarModeState()I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 447
    const v8, 0x3f936113    # 1.1514f

    mul-float/2addr v2, v8

    .line 450
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 532
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0

    .line 452
    :pswitch_0
    iput-boolean v6, p0, Lsmartisanos/widget/letters/QuickBarEx;->mHasPerformedLongPress:Z

    .line 453
    iput v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    iput v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    .line 454
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v7, :cond_5

    .line 455
    iput v11, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    .line 457
    :cond_5
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v9, :cond_6

    .line 458
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v8, v8

    sub-float v8, v2, v8

    iput v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    .line 460
    :cond_6
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v9, :cond_3

    .line 461
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 462
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    .line 467
    :pswitch_1
    iget-boolean v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mHasPerformedLongPress:Z

    if-eqz v8, :cond_7

    .line 468
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/QuickBarEx;->onMoveInLongPressState(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 471
    :cond_7
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    iput v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    .line 472
    iput v2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    .line 473
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v7, :cond_8

    .line 474
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 476
    invoke-direct {p0, v10}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    .line 477
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    invoke-direct {p0, v2, v8}, Lsmartisanos/widget/letters/QuickBarEx;->moveQuickBar(FF)V

    .line 478
    const/4 v3, 0x1

    goto :goto_1

    .line 480
    :cond_8
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v10, :cond_9

    .line 481
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    invoke-direct {p0, v2, v8}, Lsmartisanos/widget/letters/QuickBarEx;->moveQuickBar(FF)V

    .line 482
    const/4 v3, 0x1

    goto :goto_1

    .line 483
    :cond_9
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v9, :cond_3

    .line 484
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x42200000    # 40.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mEndX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 486
    invoke-direct {p0, v10}, Lsmartisanos/widget/letters/QuickBarEx;->setState(I)V

    .line 487
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    invoke-direct {p0, v2, v8}, Lsmartisanos/widget/letters/QuickBarEx;->moveQuickBar(FF)V

    .line 488
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 494
    :pswitch_2
    iget-boolean v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mHasPerformedLongPress:Z

    if-eqz v8, :cond_d

    .line 495
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsmartisanos/widget/letters/AlphabetsConfig;->surnameTypeSupportedByLanguage(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 496
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    if-ltz v8, :cond_a

    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    if-eqz v8, :cond_a

    .line 497
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupFlowLayout:Lsmartisanos/widget/letters/SurnameFlowLayout;

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v8, v9}, Lsmartisanos/widget/letters/SurnameFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 498
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_a

    .line 499
    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 500
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 503
    .end local v1    # "child":Landroid/view/View;
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    goto/16 :goto_1

    .line 505
    :cond_b
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    if-ltz v8, :cond_c

    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    if-eqz v8, :cond_c

    .line 506
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    invoke-virtual {v8, v9}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 507
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_c

    .line 508
    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 509
    iget-object v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v1, v9, v10, v11}, Lsmartisanos/widget/SurnameGridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 512
    .end local v1    # "child":Landroid/view/View;
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPrePosition:I

    goto/16 :goto_1

    .line 517
    :cond_d
    iput v11, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMissX:F

    .line 518
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getX()F

    move-result v8

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mStartX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 520
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v8, v10, :cond_3

    .line 521
    iget v8, p0, Lsmartisanos/widget/letters/QuickBarEx;->mCurrentRawX:F

    iget v9, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLastRawX:F

    sub-float/2addr v8, v9

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_e

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getX()F

    move-result v8

    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v9

    add-int/lit16 v9, v9, -0x96

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    .line 522
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->showLetterGridWithAnim()V

    .line 526
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 524
    :cond_e
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGridWithAnim()V

    goto :goto_2

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideLetterGrid()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGrid(Z)V

    .line 302
    return-void
.end method

.method public hideLetterGrid(Z)V
    .locals 1
    .param p1, "withAnim"    # Z

    .prologue
    .line 310
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->dismissPopupWindow()V

    .line 311
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->isLetterGridHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    if-eqz p1, :cond_1

    .line 313
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->hideLetterGridWithAnim()V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx;->onHideLetterGridAnimationEnd()V

    goto :goto_0
.end method

.method public initLetters()V
    .locals 6

    .prologue
    .line 206
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "symbolsSize":I
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSymbols:[I

    if-eqz v3, :cond_1

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSymbols:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 211
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    iget-object v4, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSymbols:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIconsForSymbols:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Lsmartisanos/widget/letters/LBLetter;->fromSymbol(Ljava/lang/String;[Landroid/graphics/Bitmap;)Lsmartisanos/widget/letters/LBLetter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSymbols:[I

    array-length v2, v3

    .line 217
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsmartisanos/widget/letters/LettersConfig;->lettersByLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "letters":[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lsmartisanos/widget/letters/LettersConfig;->isLocaleLetter(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-static {v4}, Lsmartisanos/widget/letters/LBLetter;->fromLocaleLetter(Ljava/lang/String;)Lsmartisanos/widget/letters/LBLetter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_2
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-static {v4}, Lsmartisanos/widget/letters/LBLetter;->fromLetter(Ljava/lang/String;)Lsmartisanos/widget/letters/LBLetter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_3
    iget-boolean v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundVisibility:Z

    if-eqz v3, :cond_4

    .line 227
    iget v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundPosition:I

    sget v4, Lsmartisanos/widget/letters/QuickBarEx;->POUND_POSITION_TOP:I

    if-ne v3, v4, :cond_5

    .line 228
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    sget-object v4, Lsmartisanos/widget/letters/LBLetter;->POUND:Lsmartisanos/widget/letters/LBLetter;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 234
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->invalidate()V

    .line 235
    return-void

    .line 230
    :cond_5
    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx;->mLetters:Ljava/util/List;

    sget-object v4, Lsmartisanos/widget/letters/LBLetter;->POUND:Lsmartisanos/widget/letters/LBLetter;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public initSpecialIcons([I[[Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "symbols"    # [I
    .param p2, "bitmaps"    # [[Landroid/graphics/Bitmap;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 191
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The symbols.length must equals bitmaps.length !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Paramer bitmaps[x][y], y must is 3 !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_3
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSymbols:[I

    .line 200
    iput-object p2, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIconsForSymbols:[[Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx;->initLetters()V

    goto :goto_0
.end method

.method public isLetterGridHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLetterGridHide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 274
    iget-boolean v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingHideAnim:Z

    if-nez v1, :cond_0

    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLetterGridShow()Z
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_0

    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLetterGridShown()Z
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingAnim()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mIsPerformingHideAnim:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 415
    invoke-direct {p0, p2}, Lsmartisanos/widget/letters/QuickBarEx;->measureHeight(I)I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mMeasuredHeight:I

    .line 416
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1200
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1201
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    if-ne p1, p0, :cond_0

    .line 1202
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1206
    :cond_0
    return-void
.end method

.method public setPoundPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 242
    iput p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundPosition:I

    .line 243
    return-void
.end method

.method public setPoundVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mPoundVisibility:Z

    .line 239
    return-void
.end method

.method public setQBListener(Lsmartisanos/widget/letters/QuickBarEx$QBListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    .prologue
    .line 175
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mQBListener:Lsmartisanos/widget/letters/QuickBarEx$QBListener;

    .line 176
    return-void
.end method

.method public setSurnameListener(Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    .prologue
    .line 179
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx;->mSurnameListener:Lsmartisanos/widget/letters/QuickBarEx$SurnameListener;

    .line 180
    return-void
.end method
