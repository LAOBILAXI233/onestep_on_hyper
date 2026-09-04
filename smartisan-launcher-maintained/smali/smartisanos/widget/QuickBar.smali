.class public Lsmartisanos/widget/QuickBar;
.super Landroid/view/View;
.source "QuickBar.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/QuickBar$SurnameAdapter;,
        Lsmartisanos/widget/QuickBar$SurnameListener;,
        Lsmartisanos/widget/QuickBar$QBTouchListener;,
        Lsmartisanos/widget/QuickBar$QBListener;
    }
.end annotation


.field private static final BACK_INDEX:I = 0x1b

.field private static final CHANGE_COUNT:I = 0x12

.field private static final COLUMN_COUNT:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DIVIDE_HEIGHT_DIP:F = 1.0f

.field public static final ICON_STATUS_HOLDER:I = 0x1

.field public static final ICON_STATUS_NORMAL:I = 0x0

.field public static final ICON_STATUS_TOUCHED:I = 0x2

.field public static LETTER_CHANGED_CLICK:I = 0x0

.field public static LETTER_CHANGED_SLIDE:I = 0x0

.field private static final POPUP_WINDOW_ARROW_WIDTH_DIP:F = 17.33f

.field private static final POUND:Ljava/lang/String; = "#"

.field public static POUND_POSITION_BOTTOM:I = 0x0

.field public static POUND_POSITION_TOP:I = 0x0

.field private static final SECOND_POPUP_HEIGHT_OFFSET_DIP:F = 6.78f

.field private static final SINGLE_ITEM_HEIGHT_DIP:F = 25.0f

.field private static final STATE_END:I = 0x4

.field private static final STATE_MOVE:I = 0x1

.field private static final STATE_START:I = 0x3

.field private static final SURNAME_DEBUG:Z = false

.field private static final SURNAME_NUM_COLUMNS_THRESHOLD:I = 0x8

.field private static final SURNAME_NUM_ROWS_THRESHOLD:I = 0x8

.field private static final TAG:Ljava/lang/String; = "QuickBar"

.field private static final VISIBILITY_FLAG_GONE:I = 0x2

.field private static final VISIBILITY_FLAG_NON_CHANGE:I = 0x0

.field private static final VISIBILITY_FLAG_VISIBLE:I = 0x1

.field public static final VISIBILITY_LIMIT:I = 0x1e


.field private mBg:Landroid/graphics/drawable/NinePatchDrawable;

.field private mBgDownNinePatch:Landroid/graphics/NinePatch;

.field private mBgLeftInvisiblePadding:I

.field private mChoose:I

.field private mContext:Landroid/content/Context;

.field private mDrawTouchX:F

.field private mDrawTouchY:F

.field private mDuration:J

.field private mEndX:I

.field private mFontY:I

.field private mHasChooseColor:I

.field private mHasDismissedSurnamePopupWindow:Z

.field private mHasPerformedLongPress:Z

.field private mHighlight:Landroid/graphics/Bitmap;

.field private mHighlightX:I

.field private mHighlightY:I

.field private mIconDot:Landroid/graphics/Bitmap;

.field private mIconDotYOffset:I

.field private mIconX:I

.field private mIconY:I

.field private mIsDrawDownBg:Z

.field private mIsFixedHeight:Z

.field private mIsInterception:Z

.field private mIsPerformingHideAnim:Z

.field private mIsPerformingShowAnim:Z

.field private mIsStateChanged:Z

.field private mIsVisible:Z

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastX:F

.field private mLetterMinHeight:I

.field private mLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressEnabled:Z

.field private mLongPressMotionEvent:Landroid/view/MotionEvent;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mMeasuredHeight:I

.field private mMissX:F

.field private mMoveIndex:I

.field private mNoChooseColor:I

.field private mNowX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupGridView:Lsmartisanos/widget/SurnameGridView;

.field private mPopupViewMaxHeight:I

.field private mPopupViewPendingHorizontal:I

.field private mPopupViewPendingVertical:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupYOffset:I

.field private mPoundPosition:I

.field private mPoundVisibility:Z

.field private mPrePosition:I

.field private mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

.field private mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

.field private mQuickBarFontSize:I

.field private mQuickBarFontX:I

.field private mQuickBarWidth:I

.field private mQuickBarX:I

.field private mScreenWidth:I

.field private mSecondPopup:Landroid/widget/PopupWindow;

.field private mSecondPopupView:Landroid/widget/TextView;

.field mShowBg:Z

.field private mSingleHeight:F

.field private mSingleWidth:F

.field private mSpecialIcons:[[Landroid/graphics/Bitmap;

.field private mSpecialPosition:I

.field private mSpecialSymbol:[I

.field private mStartIndex:I

.field private mStartX:I

.field private mState:I

.field private mStateActionDown:I

.field private mSurnameListener:Lsmartisanos/widget/QuickBar$SurnameListener;

.field private mTableLetters:[Ljava/lang/String;

.field private mThumbModeYDiff:I

.field private mToastSurnameNotFound:Ljava/lang/String;

.field private mWidth:I


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    const/4 v0, 0x0

    sput v0, Lsmartisanos/widget/QuickBar;->LETTER_CHANGED_SLIDE:I

    .line 57
    sput v1, Lsmartisanos/widget/QuickBar;->LETTER_CHANGED_CLICK:I

    .line 63
    sput v1, Lsmartisanos/widget/QuickBar;->POUND_POSITION_TOP:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lsmartisanos/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 163
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mPoundVisibility:Z

    .line 74
    sget v0, Lsmartisanos/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mPoundPosition:I

    .line 75
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    .line 78
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    .line 84
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 86
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 95
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 105
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 106
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    .line 107
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    .line 108
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    .line 113
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lsmartisanos/widget/QuickBar;->mDuration:J

    .line 118
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 119
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    .line 131
    const/16 v0, 0xa

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 133
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    .line 136
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 137
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 138
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    .line 139
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mMoveIndex:I

    .line 141
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsVisible:Z

    .line 152
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    .line 160
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    .line 913
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 914
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mLongPressEnabled:Z

    .line 916
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    .line 956
    new-instance v0, Lsmartisanos/widget/QuickBar$3;

    invoke-direct {v0, p0}, Lsmartisanos/widget/QuickBar$3;-><init>(Lsmartisanos/widget/QuickBar;)V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mPoundVisibility:Z

    .line 74
    sget v0, Lsmartisanos/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mPoundPosition:I

    .line 75
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    .line 78
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    .line 84
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 86
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 95
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 105
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 106
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    .line 107
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    .line 108
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    .line 113
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lsmartisanos/widget/QuickBar;->mDuration:J

    .line 118
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 119
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    .line 131
    const/16 v0, 0xa

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 133
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    .line 136
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 137
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 138
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    .line 139
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mMoveIndex:I

    .line 141
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsVisible:Z

    .line 152
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    .line 160
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    .line 913
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 914
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mLongPressEnabled:Z

    .line 916
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    .line 956
    new-instance v0, Lsmartisanos/widget/QuickBar$3;

    invoke-direct {v0, p0}, Lsmartisanos/widget/QuickBar$3;-><init>(Lsmartisanos/widget/QuickBar;)V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 168
    invoke-direct {p0, p1}, Lsmartisanos/widget/QuickBar;->init(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mPoundVisibility:Z

    .line 74
    sget v0, Lsmartisanos/widget/QuickBar;->POUND_POSITION_BOTTOM:I

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mPoundPosition:I

    .line 75
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    .line 78
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    .line 84
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    .line 86
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 95
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 105
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 106
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    .line 107
    iput v6, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    .line 108
    iput v3, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    .line 113
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lsmartisanos/widget/QuickBar;->mDuration:J

    .line 118
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    .line 119
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    .line 131
    const/16 v0, 0xa

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mBgLeftInvisiblePadding:I

    .line 133
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    .line 136
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 137
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 138
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    .line 139
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mMoveIndex:I

    .line 141
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsVisible:Z

    .line 152
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    .line 160
    iput-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    .line 913
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 914
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mLongPressEnabled:Z

    .line 916
    iput v4, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    .line 956
    new-instance v0, Lsmartisanos/widget/QuickBar$3;

    invoke-direct {v0, p0}, Lsmartisanos/widget/QuickBar$3;-><init>(Lsmartisanos/widget/QuickBar;)V

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 173
    return-void
.end method

.method static synthetic access$002(Lsmartisanos/widget/QuickBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    return p1
.end method

.method static synthetic access$100(Lsmartisanos/widget/QuickBar;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->onShowLetterGridAnimationEnd()V

    return-void
.end method

.method static synthetic access$202(Lsmartisanos/widget/QuickBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    return p1
.end method

.method static synthetic access$300(Lsmartisanos/widget/QuickBar;I)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lsmartisanos/widget/QuickBar;->onHideLetterGridAnimationEnd(I)V

    return-void
.end method

.method static synthetic access$400(Lsmartisanos/widget/QuickBar;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->showPopupWindow()V

    return-void
.end method

.method static synthetic access$500(Lsmartisanos/widget/QuickBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lsmartisanos/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lsmartisanos/widget/QuickBar;)Lsmartisanos/widget/SurnameGridView;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    return-object v0
.end method

.method static synthetic access$700(Lsmartisanos/widget/QuickBar;)Lsmartisanos/widget/QuickBar$SurnameListener;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSurnameListener:Lsmartisanos/widget/QuickBar$SurnameListener;

    return-object v0
.end method

.method static synthetic access$800(Lsmartisanos/widget/QuickBar;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    return v0
.end method

.method static synthetic access$900(Lsmartisanos/widget/QuickBar;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/QuickBar;

    .prologue
    .line 51
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mItemHeight:I

    return v0
.end method

.method private calculateDotAlignmentHeight(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 394
    iget-boolean v2, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v3

    .line 397
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 401
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, -0x1

    .line 402
    .local v1, "itemsCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v2, v4, :cond_2

    .line 404
    add-int/lit8 v1, v1, -0x1

    .line 407
    :cond_2
    iget v2, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mLetterMinHeight:I

    mul-int/2addr v4, v1

    sub-int/2addr v2, v4

    div-int v0, v2, v1

    .line 408
    .local v0, "height":I
    if-lez v0, :cond_3

    .end local v0    # "height":I
    :goto_1
    move v3, v0

    goto :goto_0

    .restart local v0    # "height":I
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private calculateVisibleLettersIndex()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 376
    .local v0, "hide":I
    iget-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    if-nez v3, :cond_0

    iget v3, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    iget-object v4, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mLetterMinHeight:I

    if-ge v3, v4, :cond_0

    .line 377
    const/4 v3, 0x2

    iget-object v4, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    iget v6, p0, Lsmartisanos/widget/QuickBar;->mLetterMinHeight:I

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 380
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 382
    move v1, v0

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/2addr v1, v0

    goto :goto_0

    .line 386
    .end local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 387
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_2
    return-object v2
.end method

.method private dipToPx(D)I
    .locals 7
    .param p1, "dipValue"    # D

    .prologue
    .line 888
    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 889
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

    .line 1178
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1180
    iput-object v1, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1181
    iput-object v1, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    .line 1183
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1185
    iput-object v1, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 1186
    iput-object v1, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    .line 1188
    :cond_1
    return-void
.end method

.method private drawSpecialLetters(ILandroid/graphics/Canvas;FF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mIconX:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 417
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mIconY:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    .line 418
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 419
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 420
    :cond_2
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 421
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawTouchBg(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 428
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchX:F

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 450
    :goto_0
    return-void

    .line 430
    :cond_0
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchX:F

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 431
    .local v5, "x":I
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchY:F

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 434
    .local v6, "y":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 435
    add-int/lit8 v5, v5, -0x1

    .line 436
    :cond_1
    const/16 v7, 0x8

    if-lt v6, v7, :cond_3

    .line 437
    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    .line 438
    add-int/lit8 v6, v6, -0x1

    .line 440
    :cond_2
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    int-to-float v0, v7

    .line 445
    .local v0, "b":F
    :goto_1
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v7, v7

    int-to-float v8, v5

    iget v9, p0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 446
    .local v1, "l":F
    int-to-float v7, v6

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    mul-float v4, v7, v8

    .line 447
    .local v4, "t":F
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v7, v7

    add-int/lit8 v8, v5, 0x1

    int-to-float v8, v8

    iget v9, p0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 448
    .local v2, "r":F
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 449
    .local v3, "rectf":Landroid/graphics/RectF;
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mBgDownNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v7, p1, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 442
    .end local v0    # "b":F
    .end local v1    # "l":F
    .end local v2    # "r":F
    .end local v3    # "rectf":Landroid/graphics/RectF;
    .end local v4    # "t":F
    :cond_3
    add-int/lit8 v7, v6, 0x1

    int-to-float v7, v7

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    mul-float v0, v7, v8

    .restart local v0    # "b":F
    goto :goto_1
.end method

.method private getIndex(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 606
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 607
    const/4 v0, -0x1

    .line 610
    :goto_0
    return v0

    .line 608
    :cond_0
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 609
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    div-float v1, p2, v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    div-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 610
    .local v0, "z":I
    goto :goto_0
.end method

.method private getSingleLetterHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 367
    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int v0, p1, v1

    .line 368
    .local v0, "singleHeight":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    .line 369
    iget-boolean v1, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    if-eqz v1, :cond_0

    .end local v0    # "singleHeight":I
    :goto_0
    return v0

    .restart local v0    # "singleHeight":I
    :cond_0
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mLetterMinHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private hideLetterGridWithAnim(I)V
    .locals 8
    .param p1, "visibleFlag"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 794
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->dismissPopupWindow()V

    .line 795
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->removeLongPressCallback()V

    .line 796
    iput-boolean v6, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    .line 797
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 798
    .local v1, "startAS":Landroid/animation/AnimatorSet;
    const-string v3, "x"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v5

    aput v5, v4, v7

    iget v5, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 799
    .local v0, "pvhX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 800
    .local v2, "translateAnimator":Landroid/animation/Animator;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 801
    iget-wide v4, p0, Lsmartisanos/widget/QuickBar;->mDuration:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 802
    new-instance v3, Lsmartisanos/widget/QuickBar$2;

    invoke-direct {v3, p0, p1}, Lsmartisanos/widget/QuickBar$2;-><init>(Lsmartisanos/widget/QuickBar;I)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 823
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 824
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mContext:Landroid/content/Context;

    .line 178
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 179
    .local v0, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 180
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 181
    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    .line 183
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    .local v1, "resources":Landroid/content/res/Resources;
    sget v3, Lsmartisanos/widget/R$dimen;->quickbartable_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mWidth:I

    .line 185
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    .line 186
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-direct {p0, v4, v5}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mLetterMinHeight:I

    .line 188
    iget v3, p0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    .line 189
    iget v3, p0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mWidth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    .line 191
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_font_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mQuickBarFontSize:I

    .line 192
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_font_x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mQuickBarFontX:I

    .line 193
    iget v3, p0, Lsmartisanos/widget/QuickBar;->mWidth:I

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    .line 194
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_font_y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mFontY:I

    .line 195
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mQuickBarX:I

    .line 197
    sget v3, Lsmartisanos/widget/R$drawable;->quickbar_highlight:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lsmartisanos/widget/QuickBar;->mHighlight:Landroid/graphics/Bitmap;

    .line 198
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_highlight_x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mHighlightX:I

    .line 199
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_highlight_y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mHighlightY:I

    .line 201
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_iconme_x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mIconX:I

    .line 202
    sget v3, Lsmartisanos/widget/R$dimen;->quickbar_iconme_y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mIconY:I

    .line 204
    sget v3, Lsmartisanos/widget/R$drawable;->quickbar_dot:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lsmartisanos/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    .line 205
    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    invoke-direct {p0, v4, v5}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mIconDotYOffset:I

    .line 207
    const-string v3, "#828591"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mHasChooseColor:I

    .line 208
    const-string v3, "#4c040d1e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lsmartisanos/widget/QuickBar;->mNoChooseColor:I

    .line 210
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mQuickBarFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget v3, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 215
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->initLetters()V

    .line 216
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->loadResource()V

    .line 217
    return-void
.end method

.method private letterChanged(IIFIZ)V
    .locals 4
    .param p1, "stateDown"    # I
    .param p2, "state"    # I
    .param p3, "endX"    # F
    .param p4, "index"    # I
    .param p5, "isStateChanged"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 859
    if-eqz p5, :cond_1

    .line 860
    iput-boolean v3, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 861
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 869
    if-ne p1, v1, :cond_4

    if-ne p2, v1, :cond_4

    .line 870
    const/16 v0, 0x1b

    if-ne p4, v0, :cond_2

    .line 871
    invoke-direct {p0, v3}, Lsmartisanos/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    if-eqz v0, :cond_0

    .line 873
    if-ltz p4, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    array-length v0, v0

    if-ge p4, v0, :cond_0

    .line 874
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    add-int/lit8 v2, p4, -0x1

    aget-object v1, v1, v2

    sget v2, Lsmartisanos/widget/QuickBar;->LETTER_CHANGED_CLICK:I

    invoke-interface {v0, v1, v2}, Lsmartisanos/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    sub-int v0, p4, v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 876
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 878
    :cond_3
    invoke-direct {p0, v3}, Lsmartisanos/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto :goto_0

    .line 882
    :cond_4
    const/4 p5, 0x1

    .line 883
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    goto :goto_0
.end method

.method private loadResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 614
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_0

    .line 615
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisanos/widget/R$drawable;->quickbar_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    .line 616
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisanos/widget/R$drawable;->quickbar_bg_down:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 617
    .local v0, "bgDown":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v2, p0, Lsmartisanos/widget/QuickBar;->mBgDownNinePatch:Landroid/graphics/NinePatch;

    .line 618
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lsmartisanos/widget/QuickBar;->mWidth:I

    iget v3, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 619
    .local v1, "npdBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 621
    .end local v0    # "bgDown":Landroid/graphics/Bitmap;
    .end local v1    # "npdBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 296
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 297
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 298
    .local v2, "specSize":I
    const/4 v0, 0x0

    .line 299
    .local v0, "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 300
    move v0, v2

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 302
    move v0, v2

    goto :goto_0
.end method

.method private measureSingleHeight()V
    .locals 2

    .prologue
    .line 1262
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    .line 1263
    return-void
.end method

.method private moveQuickBar(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "missX"    # F

    .prologue
    .line 845
    sub-float v0, p1, p2

    .line 846
    .local v0, "xOffset":F
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 847
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 848
    const/4 v1, 0x3

    iput v1, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 850
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 851
    const/4 v1, 0x4

    iput v1, p0, Lsmartisanos/widget/QuickBar;->mState:I

    goto :goto_0

    .line 852
    :cond_2
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 853
    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 854
    const/4 v1, 0x1

    iput v1, p0, Lsmartisanos/widget/QuickBar;->mState:I

    goto :goto_0
.end method

.method private onHideLetterGridAnimationEnd(I)V
    .locals 2
    .param p1, "visibleFlag"    # I

    .prologue
    const/4 v1, 0x0

    .line 827
    iput-boolean v1, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 828
    iput-boolean v1, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 829
    iput-boolean v1, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 831
    const/4 v0, 0x3

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 832
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 833
    packed-switch p1, :pswitch_data_0

    .line 841
    :goto_0
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 842
    return-void

    .line 835
    :pswitch_0
    invoke-super {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 838
    :pswitch_1
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMoveInLongPressState(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1191
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v4, v7

    .line 1196
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v5, v7

    .line 1198
    .local v5, "rawY":I
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    if-eqz v7, :cond_0

    .line 1199
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1200
    .local v1, "contentViewLocation":[I
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v7, v1}, Lsmartisanos/widget/SurnameGridView;->getLocationOnScreen([I)V

    .line 1202
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    aget v8, v1, v10

    sub-int v8, v4, v8

    aget v9, v1, v11

    sub-int v9, v5, v9

    invoke-virtual {v7, v8, v9}, Lsmartisanos/widget/SurnameGridView;->pointToPosition(II)I

    move-result v2

    .line 1203
    .local v2, "position":I
    if-ltz v2, :cond_4

    .line 1204
    iget v7, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    if-eq v7, v2, :cond_3

    .line 1205
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    invoke-virtual {v7, v8}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1206
    .local v3, "preChild":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 1207
    invoke-virtual {v3, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1208
    invoke-direct {p0, v12}, Lsmartisanos/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    .line 1210
    :cond_2
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v7, v2}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1211
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1212
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1213
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    invoke-virtual {v7}, Lsmartisanos/widget/SurnameGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1214
    .local v6, "surname":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1215
    invoke-direct {p0, v0}, Lsmartisanos/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    .line 1225
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "preChild":Landroid/view/View;
    .end local v6    # "surname":Ljava/lang/String;
    :cond_3
    :goto_1
    iput v2, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    goto :goto_0

    .line 1219
    :cond_4
    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v8, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    invoke-virtual {v7, v8}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1221
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1222
    invoke-direct {p0, v12}, Lsmartisanos/widget/QuickBar;->showSecondPopupWindow(Landroid/view/View;)V

    goto :goto_1
.end method

.method private onShowLetterGridAnimationEnd()V
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 789
    const/4 v0, 0x4

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 790
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 791
    return-void
.end method

.method private postLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 944
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressEnabled:Z

    if-nez v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 947
    :cond_0
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 948
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lsmartisanos/widget/QuickBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1282
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lsmartisanos/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 954
    return-void
.end method

.method private showLetterGridWithAnim()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 755
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 756
    .local v0, "endAS":Landroid/animation/AnimatorSet;
    const-string v3, "x"

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v5

    aput v5, v4, v6

    iget v5, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 757
    .local v1, "pvhX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 758
    .local v2, "translateAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 759
    iget-wide v4, p0, Lsmartisanos/widget/QuickBar;->mDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 760
    new-instance v3, Lsmartisanos/widget/QuickBar$1;

    invoke-direct {v3, p0}, Lsmartisanos/widget/QuickBar$1;-><init>(Lsmartisanos/widget/QuickBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 783
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 784
    return-void
.end method

.method private showPopupWindow()V
    .locals 48

    .prologue
    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/MotionEvent;->getX()F

    move-result v39

    .line 968
    .local v39, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/MotionEvent;->getY()F

    move-result v40

    .line 969
    .local v40, "y":F
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->getIndex(FF)I

    move-result v41

    add-int/lit8 v15, v41, -0x1

    .line 970
    .local v15, "index":I
    if-ltz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-lt v15, v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsmartisanos/widget/QuickBar;->mHasPerformedLongPress:Z

    .line 976
    const-wide/high16 v42, 0x4044000000000000L    # 40.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    .line 977
    const-wide v42, 0x4040800000000000L    # 33.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mItemHeight:I

    .line 978
    const-wide/high16 v42, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mPopupYOffset:I

    .line 979
    const-wide v42, 0x4071b00000000000L    # 283.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mPopupViewMaxHeight:I

    .line 980
    const-wide/high16 v42, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mPopupViewPendingVertical:I

    .line 981
    const-wide/high16 v42, 0x4018000000000000L    # 6.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mPopupViewPendingHorizontal:I

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mSurnameListener:Lsmartisanos/widget/QuickBar$SurnameListener;

    move-object/from16 v41, v0

    if-nez v41, :cond_2

    .line 984
    new-instance v41, Ljava/lang/IllegalArgumentException;

    const-string v42, "You must implements SurnameListener"

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 987
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mSurnameListener:Lsmartisanos/widget/QuickBar$SurnameListener;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    move-object/from16 v42, v0

    aget-object v42, v42, v15

    invoke-interface/range {v41 .. v42}, Lsmartisanos/widget/QuickBar$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 988
    .local v33, "surnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    if-eqz v41, :cond_0

    .line 991
    new-instance v31, Lsmartisanos/widget/QuickBar$SurnameAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lsmartisanos/widget/QuickBar$SurnameAdapter;-><init>(Lsmartisanos/widget/QuickBar;Landroid/content/Context;Ljava/util/List;)V

    .line 993
    .local v31, "surnameAdapter":Lsmartisanos/widget/QuickBar$SurnameAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v41

    sget v42, Lsmartisanos/widget/R$layout;->surname_popup:I

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 994
    .local v13, "contentView":Landroid/view/View;
    sget v41, Lsmartisanos/widget/R$id;->surname_content:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    .line 996
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_9

    const/16 v22, 0x8

    .line 997
    .local v22, "numColumns":I
    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v42, v0

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    mul-double v42, v42, v44

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v42

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v30, v0

    .line 998
    .local v30, "rows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SurnameGridView;->setNumColumns(I)V

    .line 1000
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    move/from16 v41, v0

    mul-int v41, v41, v22

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mPopupViewPendingHorizontal:I

    move/from16 v42, v0

    mul-int/lit8 v42, v42, 0x2

    add-int v38, v41, v42

    .line 1001
    .local v38, "width":I
    const/16 v41, 0x8

    move/from16 v0, v30

    move/from16 v1, v41

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lsmartisanos/widget/QuickBar;->mPopupViewMaxHeight:I

    .line 1003
    .local v14, "height":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mPopupViewPendingVertical:I

    move/from16 v41, v0

    mul-int/lit8 v41, v41, 0x2

    add-int v27, v14, v41

    .line 1004
    .local v27, "realHeight":I
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "surname GridView, width = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", height = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v42

    move/from16 v1, v38

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v41 .. v42}, Lsmartisanos/widget/SurnameGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    const/16 v42, 0x11

    invoke-virtual/range {v41 .. v42}, Lsmartisanos/widget/SurnameGridView;->setGravity(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SurnameGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    new-instance v42, Lsmartisanos/widget/QuickBar$4;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar$4;-><init>(Lsmartisanos/widget/QuickBar;)V

    invoke-virtual/range {v41 .. v42}, Lsmartisanos/widget/SurnameGridView;->setOnPressChangeListener(Lsmartisanos/widget/SurnameGridView$OnPressChangeListener;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    move-object/from16 v41, v0

    new-instance v42, Lsmartisanos/widget/QuickBar$5;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar$5;-><init>(Lsmartisanos/widget/QuickBar;)V

    invoke-virtual/range {v41 .. v42}, Lsmartisanos/widget/SurnameGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    if-nez v41, :cond_3

    .line 1043
    new-instance v41, Landroid/widget/PopupWindow;

    invoke-direct/range {v41 .. v41}, Landroid/widget/PopupWindow;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    const/16 v42, -0x2

    const/16 v43, -0x2

    invoke-virtual/range {v41 .. v43}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/QuickBar;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x106000d

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1048
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1050
    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1051
    .local v18, "locationOnScreen":[I
    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1052
    .local v19, "locationOnWindow":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsmartisanos/widget/QuickBar;->getLocationOnScreen([I)V

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lsmartisanos/widget/QuickBar;->getLocationInWindow([I)V

    .line 1054
    const/16 v41, 0x1

    aget v41, v19, v41

    const/16 v42, 0x1

    aget v42, v18, v42

    sub-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    .line 1055
    const/16 v41, 0x0

    aget v41, v18, v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v25, v0

    .line 1056
    .local v25, "quickBarX":F
    const/16 v41, 0x1

    aget v41, v18, v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1057
    .local v26, "quickBarY":F
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", quickBarX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", quickBarY = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    add-float v41, v41, v25

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v42, v0

    rem-int/lit8 v41, v15, 0x3

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    add-double v44, v44, v46

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mSingleWidth:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-int v6, v0

    .line 1060
    .local v6, "anchorX":I
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v42, v0

    div-int/lit8 v41, v15, 0x3

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    add-double v44, v44, v46

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mSingleHeight:F

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-int v7, v0

    .line 1061
    .local v7, "anchorY":I
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "anchorX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", anchorY = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 1063
    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1064
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1065
    .local v24, "popMeasureWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1066
    .local v23, "popMeasureHeight":I
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "popMeasureWidth = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", popMeasureHeight = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lsmartisanos/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    move/from16 v41, v0

    sub-int v41, v41, v6

    div-int/lit8 v42, v24, 0x2

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1070
    .local v29, "rightSpace":I
    div-int/lit8 v41, v24, 0x2

    sub-int v20, v6, v41

    .line 1072
    .local v20, "locationX":I
    sub-int v41, v24, v29

    const-wide v42, 0x4031547ae0000000L    # 17.329999923706055

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    sub-int v8, v41, v42

    .line 1075
    .local v8, "arrowTranslationX":I
    sget v41, Lsmartisanos/widget/R$id;->surname_top_mask:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageView;

    .line 1076
    .local v36, "topMask":Landroid/widget/ImageView;
    invoke-virtual/range {v36 .. v36}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/widget/FrameLayout$LayoutParams;

    .line 1077
    .local v37, "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    move/from16 v41, v0

    mul-int v41, v41, v22

    move/from16 v0, v41

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1079
    sget v41, Lsmartisanos/widget/R$id;->surname_bottom_mask:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1080
    .local v11, "bottomMask":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1081
    .local v12, "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    move/from16 v41, v0

    mul-int v41, v41, v22

    move/from16 v0, v41

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1083
    sget v41, Lsmartisanos/widget/R$id;->surname_container:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 1084
    .local v32, "surnameContainer":Landroid/widget/LinearLayout;
    const/16 v41, 0x8

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_b

    .line 1085
    const-wide/high16 v42, 0x402c000000000000L    # 14.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v17

    .line 1086
    .local v17, "left":I
    const-wide/high16 v42, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v34

    .line 1087
    .local v34, "top":I
    const-wide/high16 v42, 0x4031000000000000L    # 17.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v28

    .line 1088
    .local v28, "right":I
    const-wide/high16 v42, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v9

    .line 1089
    .local v9, "bottom":I
    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1090
    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    add-int v8, v8, v41

    .line 1092
    const-wide/high16 v42, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1093
    const-wide/high16 v42, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v41

    move/from16 v0, v41

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1098
    .end local v9    # "bottom":I
    .end local v17    # "left":I
    .end local v28    # "right":I
    .end local v34    # "top":I
    :goto_3
    invoke-virtual/range {v36 .. v37}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    const/16 v16, 0x0

    .line 1104
    .local v16, "isShowBelow":Z
    const/16 v41, 0x3

    move/from16 v0, v41

    if-ge v15, v0, :cond_4

    const/16 v41, 0x1

    move/from16 v0, v30

    move/from16 v1, v41

    if-gt v0, v1, :cond_7

    :cond_4
    const/16 v41, 0x3

    move/from16 v0, v41

    if-lt v15, v0, :cond_5

    const/16 v41, 0x6

    move/from16 v0, v41

    if-ge v15, v0, :cond_5

    const/16 v41, 0x3

    move/from16 v0, v30

    move/from16 v1, v41

    if-gt v0, v1, :cond_7

    :cond_5
    const/16 v41, 0x6

    move/from16 v0, v41

    if-lt v15, v0, :cond_6

    const/16 v41, 0x9

    move/from16 v0, v41

    if-ge v15, v0, :cond_6

    const/16 v41, 0x5

    move/from16 v0, v30

    move/from16 v1, v41

    if-gt v0, v1, :cond_7

    :cond_6
    const/16 v41, 0x9

    move/from16 v0, v41

    if-lt v15, v0, :cond_8

    const/16 v41, 0xc

    move/from16 v0, v41

    if-ge v15, v0, :cond_8

    const/16 v41, 0x7

    move/from16 v0, v30

    move/from16 v1, v41

    if-le v0, v1, :cond_8

    .line 1108
    :cond_7
    const/16 v16, 0x1

    .line 1111
    :cond_8
    if-eqz v16, :cond_c

    .line 1112
    sget v41, Lsmartisanos/widget/R$id;->surname_popup_top_arrow:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    .line 1113
    .local v35, "topArrow":Landroid/widget/ImageView;
    int-to-float v0, v8

    move/from16 v41, v0

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1114
    const/16 v41, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mPopupYOffset:I

    move/from16 v41, v0

    add-int v21, v7, v41

    .line 1125
    .end local v35    # "topArrow":Landroid/widget/ImageView;
    .local v21, "locationY":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    move/from16 v43, v0

    add-int v43, v43, v21

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move/from16 v2, v42

    move/from16 v3, v20

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 996
    .end local v6    # "anchorX":I
    .end local v7    # "anchorY":I
    .end local v8    # "arrowTranslationX":I
    .end local v11    # "bottomMask":Landroid/widget/ImageView;
    .end local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "height":I
    .end local v16    # "isShowBelow":Z
    .end local v18    # "locationOnScreen":[I
    .end local v19    # "locationOnWindow":[I
    .end local v20    # "locationX":I
    .end local v21    # "locationY":I
    .end local v22    # "numColumns":I
    .end local v23    # "popMeasureHeight":I
    .end local v24    # "popMeasureWidth":I
    .end local v25    # "quickBarX":F
    .end local v26    # "quickBarY":F
    .end local v27    # "realHeight":I
    .end local v29    # "rightSpace":I
    .end local v30    # "rows":I
    .end local v32    # "surnameContainer":Landroid/widget/LinearLayout;
    .end local v36    # "topMask":Landroid/widget/ImageView;
    .end local v37    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v38    # "width":I
    :cond_9
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v22

    goto/16 :goto_1

    .line 1001
    .restart local v22    # "numColumns":I
    .restart local v30    # "rows":I
    .restart local v38    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mItemHeight:I

    move/from16 v41, v0

    mul-int v14, v30, v41

    goto/16 :goto_2

    .line 1095
    .restart local v6    # "anchorX":I
    .restart local v7    # "anchorY":I
    .restart local v8    # "arrowTranslationX":I
    .restart local v11    # "bottomMask":Landroid/widget/ImageView;
    .restart local v12    # "bottomMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14    # "height":I
    .restart local v18    # "locationOnScreen":[I
    .restart local v19    # "locationOnWindow":[I
    .restart local v20    # "locationX":I
    .restart local v23    # "popMeasureHeight":I
    .restart local v24    # "popMeasureWidth":I
    .restart local v25    # "quickBarX":F
    .restart local v26    # "quickBarY":F
    .restart local v27    # "realHeight":I
    .restart local v29    # "rightSpace":I
    .restart local v32    # "surnameContainer":Landroid/widget/LinearLayout;
    .restart local v36    # "topMask":Landroid/widget/ImageView;
    .restart local v37    # "topMaskParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_3

    .line 1118
    .restart local v16    # "isShowBelow":Z
    :cond_c
    sget v41, Lsmartisanos/widget/R$id;->surname_popup_bottom_arrow:I

    move/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1119
    .local v10, "bottomArrow":Landroid/widget/ImageView;
    int-to-float v0, v8

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1120
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    sub-int v41, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mPopupYOffset:I

    move/from16 v42, v0

    sub-int v21, v41, v42

    .restart local v21    # "locationY":I
    goto :goto_4
.end method

.method private showSecondPopupWindow(Landroid/view/View;)V
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x2

    const/4 v10, 0x0

    .line 1230
    if-nez p1, :cond_1

    .line 1231
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    .line 1232
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-nez v6, :cond_2

    .line 1237
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    .line 1238
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v7, v7}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1239
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1241
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lsmartisanos/widget/R$layout;->surname_second_popup:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    .line 1243
    :cond_2
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1245
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 1246
    .local v0, "anchorViewLocation":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "tag":Ljava/lang/String;
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v6, v10, v10}, Landroid/widget/TextView;->measure(II)V

    .line 1252
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 1253
    .local v3, "width":I
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopupView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 1255
    .local v1, "height":I
    aget v6, v0, v10

    iget v7, p0, Lsmartisanos/widget/QuickBar;->mItemWidth:I

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    .line 1256
    .local v4, "x":I
    aget v6, v0, v9

    sub-int/2addr v6, v1

    iget v7, p0, Lsmartisanos/widget/QuickBar;->mItemHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    const-wide v8, 0x401b1eb860000000L    # 6.78000020980835

    invoke-direct {p0, v8, v9}, Lsmartisanos/widget/QuickBar;->dipToPx(D)I

    move-result v7

    sub-int v5, v6, v7

    .line 1258
    .local v5, "y":I
    iget-object v6, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lsmartisanos/widget/QuickBar;->mThumbModeYDiff:I

    add-int/2addr v7, v5

    invoke-virtual {v6, p0, v10, v4, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method


.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 456
    .local v6, "action":I
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-eqz v0, :cond_2

    .line 457
    :cond_1
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    .line 459
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsInterception:Z

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 461
    .local v11, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    .line 462
    .local v10, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchX:F

    .line 463
    iput v11, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchY:F

    .line 464
    iget v9, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 465
    .local v9, "oldChoose":I
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v11, v0

    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 466
    .local v7, "c":I
    packed-switch v6, :pswitch_data_0

    .line 602
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 468
    :pswitch_0
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    invoke-interface {v0}, Lsmartisanos/widget/QuickBar$QBTouchListener;->onQBTouchDown()V

    .line 471
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasPerformedLongPress:Z

    .line 472
    iput v10, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    .line 473
    iput v10, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    .line 474
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchX:F

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchY:F

    invoke-direct {p0, v0, v1}, Lsmartisanos/widget/QuickBar;->getIndex(FF)I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 477
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mStateActionDown:I

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 479
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 480
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v0, v0

    sub-float v0, v10, v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 481
    :cond_5
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 483
    if-eq v9, v7, :cond_6

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    if-eqz v0, :cond_6

    .line 484
    if-ltz v7, :cond_6

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 485
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 488
    :cond_6
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 489
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 490
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 494
    :cond_7
    invoke-direct {p0, p1}, Lsmartisanos/widget/QuickBar;->postLongPress(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 498
    :pswitch_1
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_8

    .line 499
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    invoke-interface {v0}, Lsmartisanos/widget/QuickBar$QBTouchListener;->onQBTouchMove()V

    .line 501
    :cond_8
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_9

    .line 502
    invoke-direct {p0, p1}, Lsmartisanos/widget/QuickBar;->onMoveInLongPressState(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 506
    :cond_9
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v0

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 507
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->removeLongPressCallback()V

    .line 509
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 510
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    .line 511
    iput v10, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    .line 512
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchX:F

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mDrawTouchY:F

    invoke-direct {p0, v0, v1}, Lsmartisanos/widget/QuickBar;->getIndex(FF)I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mMoveIndex:I

    .line 513
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    if-nez v0, :cond_b

    .line 514
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mMoveIndex:I

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    if-eq v0, v1, :cond_b

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 518
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->removeLongPressCallback()V

    .line 521
    :cond_b
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 522
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v0, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_c

    .line 524
    const/4 v0, 0x1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 525
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v10, v0}, Lsmartisanos/widget/QuickBar;->moveQuickBar(FF)V

    .line 526
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    if-eqz v0, :cond_c

    .line 527
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    invoke-interface {v0}, Lsmartisanos/widget/QuickBar$QBListener;->onLetterGridShow()V

    .line 540
    :cond_c
    :goto_2
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v0

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    add-int/lit8 v1, v1, -0x64

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 541
    :cond_e
    if-eq v9, v7, :cond_f

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    if-eqz v0, :cond_f

    .line 542
    if-ltz v7, :cond_f

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_f

    .line 543
    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lsmartisanos/widget/QuickBar;->LETTER_CHANGED_SLIDE:I

    invoke-interface {v1, v0, v2}, Lsmartisanos/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 544
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 548
    :cond_f
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    goto/16 :goto_1

    .line 530
    :cond_10
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 531
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mEndX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 533
    const/4 v0, 0x1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 534
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v10, v0}, Lsmartisanos/widget/QuickBar;->moveQuickBar(FF)V

    goto :goto_2

    .line 536
    :cond_11
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 537
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    invoke-direct {p0, v10, v0}, Lsmartisanos/widget/QuickBar;->moveQuickBar(FF)V

    goto :goto_2

    .line 552
    :pswitch_2
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    if-eqz v0, :cond_12

    .line 553
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    invoke-interface {v0}, Lsmartisanos/widget/QuickBar$QBTouchListener;->onQBTouchUp()V

    .line 555
    :cond_12
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->removeLongPressCallback()V

    .line 556
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_14

    .line 557
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    if-eqz v0, :cond_13

    .line 558
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SurnameGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 559
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_13

    .line 560
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setPressed(Z)V

    .line 561
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupGridView:Lsmartisanos/widget/SurnameGridView;

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lsmartisanos/widget/SurnameGridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 564
    .end local v8    # "child":Landroid/view/View;
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mPrePosition:I

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 566
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    goto/16 :goto_1

    .line 570
    :cond_14
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    if-eqz v0, :cond_15

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mHasDismissedSurnamePopupWindow:Z

    .line 572
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 574
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    goto/16 :goto_1

    .line 579
    :cond_15
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 580
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    if-eqz v0, :cond_16

    .line 581
    if-ltz v7, :cond_16

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_16

    .line 582
    iget-object v1, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v2, Lsmartisanos/widget/QuickBar;->LETTER_CHANGED_SLIDE:I

    invoke-interface {v1, v0, v2}, Lsmartisanos/widget/QuickBar$QBListener;->onLetterChanged(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 583
    iput v7, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 587
    :cond_16
    iget v1, p0, Lsmartisanos/widget/QuickBar;->mStateActionDown:I

    iget v2, p0, Lsmartisanos/widget/QuickBar;->mState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lsmartisanos/widget/QuickBar;->mStartIndex:I

    iget-boolean v5, p0, Lsmartisanos/widget/QuickBar;->mIsStateChanged:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lsmartisanos/widget/QuickBar;->letterChanged(IIFIZ)V

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mMissX:F

    .line 589
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v0

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 590
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->resetBackground()V

    goto/16 :goto_1

    .line 591
    :cond_17
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    .line 593
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 594
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mNowX:F

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mLastX:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v0

    iget v1, p0, Lsmartisanos/widget/QuickBar;->mScreenWidth:I

    iget v2, p0, Lsmartisanos/widget/QuickBar;->mQuickBarX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 595
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->showLetterGridWithAnim()V

    goto/16 :goto_1

    .line 597
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsmartisanos/widget/QuickBar;->hideLetterGridWithAnim(I)V

    goto/16 :goto_1

    .line 466
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
    .line 718
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->hideLetterGrid(Z)V

    .line 719
    return-void
.end method

.method public hideLetterGrid(Z)V
    .locals 2
    .param p1, "withAnim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->isLetterGridHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    if-eqz p1, :cond_1

    .line 739
    invoke-direct {p0, v1}, Lsmartisanos/widget/QuickBar;->hideLetterGridWithAnim(I)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-direct {p0, v1}, Lsmartisanos/widget/QuickBar;->onHideLetterGridAnimationEnd(I)V

    goto :goto_0
.end method

.method public initLetters()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 251
    .local v1, "specialIconsCount":I
    :goto_0
    if-ltz v1, :cond_0

    iget v2, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    if-ne v2, v1, :cond_2

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 250
    .end local v1    # "specialIconsCount":I
    :cond_1
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    array-length v1, v2

    goto :goto_0

    .line 255
    .restart local v1    # "specialIconsCount":I
    :cond_2
    iput v1, p0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    .line 256
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 260
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mTableLetters:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 264
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 265
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 268
    :cond_4
    iget-boolean v2, p0, Lsmartisanos/widget/QuickBar;->mPoundVisibility:Z

    if-eqz v2, :cond_5

    .line 269
    iget v2, p0, Lsmartisanos/widget/QuickBar;->mPoundPosition:I

    sget v3, Lsmartisanos/widget/QuickBar;->POUND_POSITION_TOP:I

    if-ne v2, v3, :cond_6

    .line 270
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    const-string v3, "#"

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    :cond_5
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLetters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsmartisanos/widget/QuickBar;->printLog(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    goto :goto_1

    .line 272
    :cond_6
    iget-object v2, p0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public initSpecialIcons([I[[Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "symbols"    # [I
    .param p2, "iconsBitmaps"    # [[Landroid/graphics/Bitmap;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 235
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The symbols.length must equals iconsBitmap.length !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Paramer iconsBitmaps[x][y], y must is 3 !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_3
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mSpecialSymbol:[I

    .line 245
    iput-object p2, p0, Lsmartisanos/widget/QuickBar;->mSpecialIcons:[[Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->initLetters()V

    goto :goto_0
.end method

.method public isLetterGridHidden()Z
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLetterGridHide()Z
    .locals 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-nez v0, :cond_0

    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

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

.method public isLetterGridShow()Z
    .locals 2

    .prologue
    .line 670
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_0

    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

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
    .line 681
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    const/4 v1, 0x4

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
    .line 710
    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingShowAnim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mIsPerformingHideAnim:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/QuickBar;->getHeight()I

    move-result v6

    .line 311
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/QuickBar;->getX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mStartX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/NinePatchDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 313
    new-instance v11, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    .local v11, "npdBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    .end local v11    # "npdBounds":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mBg:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsmartisanos/widget/QuickBar;->getSingleLetterHeight(I)I

    move-result v13

    .line 321
    .local v13, "singleHeight":I
    invoke-direct/range {p0 .. p0}, Lsmartisanos/widget/QuickBar;->calculateVisibleLettersIndex()Ljava/util/ArrayList;

    move-result-object v15

    .line 322
    .local v15, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lsmartisanos/widget/QuickBar;->calculateDotAlignmentHeight(Ljava/util/ArrayList;)I

    move-result v5

    .line 323
    .local v5, "dotAlignmentHeight":I
    if-lez v5, :cond_4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    const/4 v12, 0x1

    .line 324
    .local v12, "showDots":Z
    :goto_0
    const/4 v7, 0x0

    .line 325
    .local v7, "i":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 326
    .local v9, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mQuickBarFontX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    const/high16 v20, 0x40000000    # 2.0f

    div-float v18, v18, v20

    sub-float v16, v19, v18

    .line 327
    .local v16, "xPos":F
    add-int v18, v13, v5

    mul-int v18, v18, v7

    div-int/lit8 v19, v13, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 329
    .local v17, "yPos":F
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mChoose:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mHighlight:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mHighlightX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mHighlightY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mSpecialPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_7

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v7, v1, v2, v3}, Lsmartisanos/widget/QuickBar;->drawSpecialLetters(ILandroid/graphics/Canvas;FF)V

    .line 343
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 345
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    .line 346
    add-int v18, v13, v5

    mul-int v18, v18, v7

    div-int/lit8 v19, v13, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mQuickBarWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mBgLeftInvisiblePadding:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v10, v0

    .line 348
    .local v10, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mIconDotYOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v14, v17, v18

    .line 349
    .local v14, "top":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mIconDot:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v10, v14, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 323
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    .end local v10    # "left":F
    .end local v12    # "showDots":Z
    .end local v14    # "top":F
    .end local v16    # "xPos":F
    .end local v17    # "yPos":F
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 334
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "index":I
    .restart local v12    # "showDots":Z
    .restart local v16    # "xPos":F
    .restart local v17    # "yPos":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mChoose:I

    move/from16 v18, v0

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mNoChooseColor:I

    move/from16 v18, v0

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_2

    .line 334
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mHasChooseColor:I

    move/from16 v18, v0

    goto :goto_4

    .line 341
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mLetters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lsmartisanos/widget/QuickBar;->mFontY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/QuickBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 354
    .end local v9    # "index":I
    .end local v16    # "xPos":F
    .end local v17    # "yPos":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsmartisanos/widget/QuickBar;->mIsDrawDownBg:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 355
    invoke-direct/range {p0 .. p1}, Lsmartisanos/widget/QuickBar;->drawTouchBg(Landroid/graphics/Canvas;)V

    .line 357
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 358
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 291
    invoke-direct {p0, p2}, Lsmartisanos/widget/QuickBar;->measureHeight(I)I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mMeasuredHeight:I

    .line 292
    invoke-direct {p0}, Lsmartisanos/widget/QuickBar;->measureSingleHeight()V

    .line 293
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1267
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1268
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    if-ne p1, p0, :cond_1

    .line 1269
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1272
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lsmartisanos/widget/QuickBar;->mSecondPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1276
    :cond_1
    return-void
.end method

.method public resetBackground()V
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lsmartisanos/widget/QuickBar;->mStartX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/QuickBar;->setX(F)V

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mChoose:I

    .line 750
    const/4 v0, 0x3

    iput v0, p0, Lsmartisanos/widget/QuickBar;->mState:I

    .line 751
    invoke-virtual {p0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 752
    return-void
.end method

.method public setHeightFixed(Z)V
    .locals 0
    .param p1, "fixed"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lsmartisanos/widget/QuickBar;->mIsFixedHeight:Z

    .line 729
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 940
    iput-boolean p1, p0, Lsmartisanos/widget/QuickBar;->mLongPressEnabled:Z

    .line 941
    return-void
.end method

.method public setPoundPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 285
    iput p1, p0, Lsmartisanos/widget/QuickBar;->mPoundPosition:I

    .line 286
    return-void
.end method

.method public setPoundVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lsmartisanos/widget/QuickBar;->mPoundVisibility:Z

    .line 282
    return-void
.end method

.method public setQBListener(Lsmartisanos/widget/QuickBar$QBListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/QuickBar$QBListener;

    .prologue
    .line 642
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mQBListener:Lsmartisanos/widget/QuickBar$QBListener;

    .line 643
    return-void
.end method

.method public setQBTouchListener(Lsmartisanos/widget/QuickBar$QBTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/QuickBar$QBTouchListener;

    .prologue
    .line 660
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mQBTouchListener:Lsmartisanos/widget/QuickBar$QBTouchListener;

    .line 661
    return-void
.end method

.method public setSurnameListener(Lsmartisanos/widget/QuickBar$SurnameListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/QuickBar$SurnameListener;

    .prologue
    .line 931
    iput-object p1, p0, Lsmartisanos/widget/QuickBar;->mSurnameListener:Lsmartisanos/widget/QuickBar$SurnameListener;

    .line 932
    return-void
.end method
