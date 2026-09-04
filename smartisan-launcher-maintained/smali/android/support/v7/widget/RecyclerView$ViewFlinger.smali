.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2767
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2758
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2762
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2765
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 2768
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 2769
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 2936
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2937
    .local v1, "absDx":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2938
    .local v2, "absDy":I
    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    .line 2939
    .local v9, "horizontal":Z
    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 2940
    .local v10, "velocity":I
    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 2941
    .local v4, "delta":I
    if-eqz v9, :cond_1

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 2942
    .local v3, "containerSize":I
    :goto_1
    div-int/lit8 v8, v3, 0x2

    .line 2943
    .local v8, "halfContainerSize":I
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2944
    .local v6, "distanceRatio":F
    int-to-float v11, v8

    int-to-float v12, v8

    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 2948
    .local v5, "distance":F
    if-lez v10, :cond_2

    .line 2949
    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    .line 2954
    .end local v1    # "absDx":I
    .local v7, "duration":I
    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    .line 2938
    .end local v3    # "containerSize":I
    .end local v4    # "delta":I
    .end local v5    # "distance":F
    .end local v6    # "distanceRatio":F
    .end local v7    # "duration":I
    .end local v8    # "halfContainerSize":I
    .end local v9    # "horizontal":Z
    .end local v10    # "velocity":I
    .restart local v1    # "absDx":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 2941
    .restart local v4    # "delta":I
    .restart local v9    # "horizontal":Z
    .restart local v10    # "velocity":I
    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    .line 2951
    .restart local v3    # "containerSize":I
    .restart local v5    # "distance":F
    .restart local v6    # "distanceRatio":F
    .restart local v8    # "halfContainerSize":I
    :cond_2
    if-eqz v9, :cond_3

    .end local v1    # "absDx":I
    :goto_3
    int-to-float v0, v1

    .line 2952
    .local v0, "absDelta":F
    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .restart local v7    # "duration":I
    goto :goto_2

    .end local v0    # "absDelta":F
    .end local v7    # "duration":I
    .restart local v1    # "absDx":I
    :cond_3
    move v1, v2

    .line 2951
    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 2894
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 2895
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2896
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2930
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2931
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2932
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    .prologue
    .line 2899
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 2900
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    .line 2901
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 2903
    :cond_0
    return-void
.end method


.method public fling(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 2914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2915
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 2916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 2918
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 2919
    return-void
.end method

.method postOnAnimation()V
    .locals 1

    .prologue
    .line 2906
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    .line 2907
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 2911
    :goto_0
    return-void

    .line 2909
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 30

    .prologue
    .line 2773
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2100(Landroid/support/v7/widget/RecyclerView;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 2778
    .local v14, "scroller":Landroid/support/v4/widget/ScrollerCompat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object/from16 v16, v0

    .line 2779
    .local v16, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 2780
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v23

    .line 2781
    .local v23, "x":I
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v24

    .line 2782
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v25, v0

    sub-int v5, v23, v25

    .line 2783
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v25, v0

    sub-int v6, v24, v25

    .line 2784
    .local v6, "dy":I
    const/4 v9, 0x0

    .line 2785
    .local v9, "hresult":I
    const/16 v22, 0x0

    .line 2786
    .local v22, "vresult":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 2787
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 2788
    const/4 v12, 0x0

    .local v12, "overscrollX":I
    const/4 v13, 0x0

    .line 2789
    .local v13, "overscrollY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Landroid/support/v7/widget/RecyclerView;->access$2302(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2792
    if-eqz v5, :cond_0

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v9

    .line 2794
    sub-int v12, v5, v9

    .line 2796
    :cond_0
    if-eqz v6, :cond_1

    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v6, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v22

    .line 2798
    sub-int v13, v6, v22

    .line 2800
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    .line 2803
    .local v4, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_5

    .line 2804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2805
    .local v21, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 2806
    .local v8, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v8, :cond_3

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 2807
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2809
    .local v15, "shadowingView":Landroid/view/View;
    :goto_1
    if-eqz v15, :cond_3

    .line 2810
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 2811
    .local v11, "left":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v17

    .line 2812
    .local v17, "top":I
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    if-ne v11, v0, :cond_2

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 2814
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v25, v25, v11

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v17

    move/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v15, v11, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2803
    .end local v11    # "left":I
    .end local v15    # "shadowingView":Landroid/view/View;
    .end local v17    # "top":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2807
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 2823
    .end local v4    # "count":I
    .end local v8    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "i":I
    .end local v21    # "view":Landroid/view/View;
    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 2826
    .local v3, "adapterSize":I
    if-nez v3, :cond_17

    .line 2827
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 2835
    .end local v3    # "adapterSize":I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/support/v7/widget/RecyclerView;->access$2302(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2838
    :cond_7
    if-ne v5, v9, :cond_19

    move/from16 v0, v22

    if-ne v6, v0, :cond_19

    const/4 v7, 0x1

    .line 2839
    .local v7, "fullyConsumedScroll":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_8

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2842
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v5, v6}, Landroid/support/v7/widget/RecyclerView;->access$2700(Landroid/support/v7/widget/RecyclerView;II)V

    .line 2846
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_10

    .line 2847
    :cond_a
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2849
    .local v18, "vel":I
    const/16 v19, 0x0

    .line 2850
    .local v19, "velX":I
    move/from16 v0, v23

    if-eq v12, v0, :cond_b

    .line 2851
    if-gez v12, :cond_1a

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v19, v0

    .line 2854
    :cond_b
    :goto_4
    const/16 v20, 0x0

    .line 2855
    .local v20, "velY":I
    move/from16 v0, v24

    if-eq v13, v0, :cond_c

    .line 2856
    if-gez v13, :cond_1c

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    .line 2859
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 2863
    :cond_d
    if-nez v19, :cond_e

    move/from16 v0, v23

    if-eq v12, v0, :cond_e

    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v25

    if-nez v25, :cond_10

    :cond_e
    if-nez v20, :cond_f

    move/from16 v0, v24

    if-eq v13, v0, :cond_f

    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v25

    if-nez v25, :cond_10

    .line 2865
    :cond_f
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 2868
    .end local v18    # "vel":I
    .end local v19    # "velX":I
    .end local v20    # "velY":I
    :cond_10
    if-nez v9, :cond_11

    if-eqz v22, :cond_12

    .line 2870
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v29}, Landroid/support/v7/widget/RecyclerView;->access$2800(Landroid/support/v7/widget/RecyclerView;IIII)V

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v25

    if-eqz v25, :cond_12

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v1, v9, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 2876
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2880
    :cond_13
    invoke-virtual {v14}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v25

    if-nez v25, :cond_14

    if-nez v7, :cond_1e

    .line 2881
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2887
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "fullyConsumedScroll":Z
    .end local v9    # "hresult":I
    .end local v12    # "overscrollX":I
    .end local v13    # "overscrollY":I
    .end local v22    # "vresult":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_15
    :goto_6
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 2888
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 2890
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 2891
    return-void

    .line 2828
    .restart local v3    # "adapterSize":I
    .restart local v5    # "dx":I
    .restart local v6    # "dy":I
    .restart local v9    # "hresult":I
    .restart local v12    # "overscrollX":I
    .restart local v13    # "overscrollY":I
    .restart local v22    # "vresult":I
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v25

    move/from16 v0, v25

    if-lt v0, v3, :cond_18

    .line 2829
    add-int/lit8 v25, v3, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 2830
    sub-int v25, v5, v12

    sub-int v26, v6, v13

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_2

    .line 2832
    :cond_18
    sub-int v25, v5, v12

    sub-int v26, v6, v13

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_2

    .line 2838
    .end local v3    # "adapterSize":I
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2851
    .restart local v7    # "fullyConsumedScroll":Z
    .restart local v18    # "vel":I
    .restart local v19    # "velX":I
    :cond_1a
    if-lez v12, :cond_1b

    move/from16 v19, v18

    goto/16 :goto_4

    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 2856
    .restart local v20    # "velY":I
    :cond_1c
    if-lez v13, :cond_1d

    move/from16 v20, v18

    goto/16 :goto_5

    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 2883
    .end local v18    # "vel":I
    .end local v19    # "velX":I
    .end local v20    # "velY":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_6
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 2922
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 2923
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2958
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 2959
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .prologue
    .line 2926
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 2927
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 2962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 2963
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2964
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 2966
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2967
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 2968
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 2969
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 2970
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2974
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 2975
    return-void
.end method
