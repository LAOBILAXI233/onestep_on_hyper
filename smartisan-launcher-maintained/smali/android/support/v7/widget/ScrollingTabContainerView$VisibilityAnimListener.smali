.class public Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


.method protected constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .prologue
    .line 591
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 619
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 613
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iget v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 605
    iput-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 606
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .prologue
    .line 597
    iput p2, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iput-object p1, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 599
    return-object p0
.end method
