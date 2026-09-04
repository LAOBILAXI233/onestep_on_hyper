.class Landroid/support/v4/widget/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 1149
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1152
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 1153
    .local v0, "targetScale":F
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 1154
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$8;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 1155
    return-void
.end method
