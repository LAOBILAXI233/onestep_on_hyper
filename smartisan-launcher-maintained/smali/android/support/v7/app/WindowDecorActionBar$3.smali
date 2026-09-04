.class Landroid/support/v7/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    .local v0, "parent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 165
    return-void
.end method
