.class public Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;
.super Lcom/smartisan/pullToRefresh/HeaderListView;
.source "SwipeListView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;
    }
.end annotation


.field private static DEL_ANIMATION_DURATION:I = 0x0

.field private static final GESTURE_DOWN:I = 0x0

.field private static final GESTURE_FLING_HORIZONTAL:I = 0x5

.field private static final GESTURE_FLING_VERTICAL:I = 0x6

.field private static final GESTURE_LONGPRESS:I = 0x4

.field private static final GESTURE_NONE:I = -0x1

.field private static final GESTURE_SCROLL_ITEM:I = 0x2

.field private static final GESTURE_SCROLL_LIST:I = 0x3

.field private static final GESTURE_TAP:I = 0x1


.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mGesture:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureOnOpenedChild:Z

.field private mGestureScrollingChild:Z

.field private mInterruptionGesture:Z

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuCreator:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

.field private mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

.field private mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

.field private mRect:Landroid/graphics/Rect;

.field private mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

.field private mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

.field swipeFlag:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xc8

    sput v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->DEL_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisan/pullToRefresh/HeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    .line 81
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    .line 82
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->swipeFlag:Z

    .line 91
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .prologue
    .line 31
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    return v0
.end method

.method static synthetic access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    return p1
.end method

.method static synthetic access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuCreator:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;
    .param p1, "x1"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->DEL_ANIMATION_DURATION:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setChoiceMode(I)V

    .line 96
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;

    invoke-direct {v2, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 141
    return-void
.end method

.method static isItemScroll(FF)Z
    .locals 8
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 263
    neg-float v1, p1

    .line 264
    .local v1, "cartesY":F
    move v0, p0

    .line 265
    .local v0, "cartesX":F
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v3

    .line 268
    :cond_1
    div-float v2, v1, v0

    .line 269
    .local v2, "ratio":F
    float-to-double v4, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    float-to-double v4, v2

    const-wide v6, -0x4016666666666666L    # -0.8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


.method public getSwipeListAdapter()Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    return-object v0
.end method

.method public ifSwipingOrOpen()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->isAdapterAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    .line 153
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->getOpenedChild()Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 154
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    .line 158
    :cond_2
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    if-nez v2, :cond_5

    .line 159
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    .line 160
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    .line 161
    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getHitRect(Landroid/graphics/Rect;)V

    .line 164
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->closeAutonomously()V

    .line 169
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_4

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    :cond_4
    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :cond_5
    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    if-nez v2, :cond_0

    .line 177
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 178
    :cond_6
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    goto :goto_0

    .line 182
    :cond_7
    invoke-super {p0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 189
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 205
    :goto_0
    iget v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->swipeFlag:Z

    if-eqz v5, :cond_3

    .line 206
    :cond_0
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v5, :cond_3

    .line 207
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v5, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 209
    .local v1, "originalEvent":I
    iget-boolean v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->swipeFlag:Z

    if-nez v5, :cond_1

    .line 210
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 211
    invoke-super {p0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 212
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->swipeFlag:Z

    .line 215
    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 225
    .end local v1    # "originalEvent":I
    :goto_1
    :pswitch_0
    return v4

    .line 194
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->pointToPosition(II)I

    move-result v0

    .line 196
    .local v0, "mTouchPosition":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "view":Landroid/view/View;
    instance-of v5, v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-eqz v5, :cond_2

    .line 198
    check-cast v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .end local v2    # "view":Landroid/view/View;
    iput-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    goto :goto_0

    .line 200
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    goto :goto_0

    .line 218
    .end local v0    # "mTouchPosition":I
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "originalEvent":I
    :pswitch_2
    iput-boolean v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->swipeFlag:Z

    goto :goto_1

    .line 225
    .end local v1    # "originalEvent":I
    :cond_3
    iget-boolean v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    if-nez v5, :cond_4

    invoke-super {p0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    move v4, v3

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 307
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    if-nez v3, :cond_0

    .line 386
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getLeft()I

    move-result v1

    .line 312
    .local v1, "scrollFrom":I
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getRight()I

    move-result v3

    neg-int v2, v3

    .line 313
    .local v2, "scrollTo":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 314
    .local v0, "deleteAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    sget v3, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->DEL_ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 316
    new-instance v3, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$3;

    invoke-direct {v3, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$3;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    new-instance v3, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    invoke-direct {v3, p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 385
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 230
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    .line 243
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setBgDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setContentShadow(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    if-ltz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setMenuContainerHeight(I)V

    .line 250
    :cond_0
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    if-ltz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setMenuContainerWidth(I)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-super {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    return-void
.end method

.method public setMenuBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    .line 298
    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    .line 301
    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    .line 282
    return-void
.end method

.method public setSwipeMenuCreator(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;)V
    .locals 0
    .param p1, "creator"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->mMenuCreator:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    .line 286
    return-void
.end method
