.class Lsmartisanos/widget/QuickBar$1;
.super Ljava/lang/Object;
.source "QuickBar.java"

.implements Landroid/animation/Animator$AnimatorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/QuickBar;->showLetterGridWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/QuickBar;


.method constructor <init>(Lsmartisanos/widget/QuickBar;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 781
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 775
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/QuickBar;->access$002(Lsmartisanos/widget/QuickBar;Z)Z

    .line 776
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    invoke-static {v0}, Lsmartisanos/widget/QuickBar;->access$100(Lsmartisanos/widget/QuickBar;)V

    .line 777
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 771
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 764
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    invoke-static {v0, v1}, Lsmartisanos/widget/QuickBar;->access$002(Lsmartisanos/widget/QuickBar;Z)Z

    .line 765
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    iput-boolean v1, v0, Lsmartisanos/widget/QuickBar;->mShowBg:Z

    .line 766
    iget-object v0, p0, Lsmartisanos/widget/QuickBar$1;->this$0:Lsmartisanos/widget/QuickBar;

    invoke-virtual {v0}, Lsmartisanos/widget/QuickBar;->invalidate()V

    .line 767
    return-void
.end method
