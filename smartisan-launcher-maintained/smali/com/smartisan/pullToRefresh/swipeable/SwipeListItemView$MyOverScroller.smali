.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;
.super Landroid/widget/OverScroller;
.source "SwipeListItemView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOverScroller"
.end annotation


.field mIgnoreInterrupt:Z

.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;


.method public constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 87
    invoke-direct {p0, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 88
    return-void
.end method

.method private isFlingFinished()Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->getFinalX()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->getFinalY()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public fling(IIIIIIII)V
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 120
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIZ)V

    .line 121
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 132
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIIIZ)V

    .line 134
    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I
    .param p11, "ignoreInterrupt"    # Z

    .prologue
    .line 125
    invoke-super/range {p0 .. p10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 126
    iput-boolean p11, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 127
    return-void
.end method

.method public fling(IIIIIIIIZ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "ignoreInterrupt"    # Z

    .prologue
    .line 113
    invoke-super/range {p0 .. p8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 114
    iput-boolean p9, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 115
    return-void
.end method

.method public ignoreInterrupt()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    .line 138
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 141
    :cond_0
    iget-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    return v1
.end method

.method public isClearFinished()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isFlingFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIZ)V

    .line 98
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 108
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIIZ)V

    .line 109
    return-void
.end method

.method public startScroll(IIIIIZ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I
    .param p6, "ignoreInterrupt"    # Z

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 103
    iput-boolean p6, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 104
    return-void
.end method

.method public startScroll(IIIIZ)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "ignoreInterrupt"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 92
    iput-boolean p5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->mIgnoreInterrupt:Z

    .line 93
    return-void
.end method
