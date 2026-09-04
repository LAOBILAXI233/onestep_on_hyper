.class Landroid/support/v4/widget/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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
    .line 419
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$2;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 423
    return-void
.end method
