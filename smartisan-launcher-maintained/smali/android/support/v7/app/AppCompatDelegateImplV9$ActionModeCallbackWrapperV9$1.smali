.class Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;


.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    .prologue
    .line 1799
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1802
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1808
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1809
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1810
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1811
    return-void

    .line 1805
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method
