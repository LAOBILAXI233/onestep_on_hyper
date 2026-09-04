.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;
.super Ljava/lang/Object;
.source "SwipeListItemView.java"

.implements Landroid/view/GestureDetector$OnGestureListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field mOverScrollX:F

.field mTotalVectorX:F

.field mTotalVectorXInt:I

.field mTouchOnOver:Z

.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFlingToRight(F)Z
    .locals 1
    .param p1, "velocityX"    # F

    .prologue
    .line 253
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 197
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z

    .line 199
    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    .line 200
    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    .line 201
    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTouchOnOver:Z

    .line 203
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$202(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;I)I

    .line 205
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v1, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z

    .line 259
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isLeftOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-direct {p0, p3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->isFlingToRight(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x8

    .line 270
    .local v0, "overX":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    invoke-static {v1, v2, p3, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$800(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;IFI)V

    .line 286
    .end local v0    # "overX":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v2

    invoke-static {v1, v2, p3, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$800(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;IFI)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z

    .line 250
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    iget-boolean v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTouchOnOver:Z

    if-nez v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v3

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v5

    iget-object v6, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 227
    neg-float v0, p3

    .line 228
    .local v0, "vectorX":F
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    .line 229
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    iget v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v1, v3

    .line 230
    .local v1, "vectorXInt":I
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    .line 232
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v3, v4}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z

    .line 234
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    float-to-int v6, v0

    invoke-static {v3, v5, v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;II)I

    move-result v2

    .line 237
    .local v2, "x":I
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$500(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 238
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    .line 242
    :goto_1
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v3, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$600(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;I)Z

    move v3, v4

    .line 244
    goto :goto_0

    .line 240
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z

    .line 215
    return v1
.end method
