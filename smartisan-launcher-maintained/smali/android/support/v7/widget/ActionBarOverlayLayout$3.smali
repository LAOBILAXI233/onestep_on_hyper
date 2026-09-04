.class Landroid/support/v7/widget/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;


.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/ActionBarOverlayLayout;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    .line 117
    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 118
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 119
    return-void
.end method
