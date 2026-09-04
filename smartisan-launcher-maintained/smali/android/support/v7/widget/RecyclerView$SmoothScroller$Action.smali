.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


.field public static final UNDEFINED_DURATION:I = -0x80000000


.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 7363
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 7364
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 7373
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v0, 0x0

    .line 7382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7352
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7356
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 7383
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 7384
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 7385
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 7386
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7387
    return-void
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 7340
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v5, 0x0

    .line 7389
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v0, :cond_3

    .line 7390
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 7391
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 7392
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 7393
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 7400
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 7401
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 7404
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7407
    :cond_0
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7411
    :goto_1
    return-void

    .line 7395
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 7398
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 7409
    :cond_3
    iput v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_1
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7414
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 7415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7417
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 7418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7420
    :cond_1
    return-void
.end method


.method public getDuration()I
    .locals 1

    .prologue
    .line 7441
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .locals 1

    .prologue
    .line 7423
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .locals 1

    .prologue
    .line 7432
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 7450
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 7445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7446
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 7447
    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 7427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7428
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 7429
    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 7436
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7437
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 7438
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 7460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7461
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7462
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 7473
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 7474
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 7475
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 7476
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 7478
    return-void
.end method
