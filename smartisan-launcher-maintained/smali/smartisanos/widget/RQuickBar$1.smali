.class Lsmartisanos/widget/RQuickBar$1;
.super Ljava/lang/Object;
.source "RQuickBar.java"

.implements Landroid/animation/Animator$AnimatorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/RQuickBar;->showLetterGridWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/RQuickBar;


.method constructor <init>(Lsmartisanos/widget/RQuickBar;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

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
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/RQuickBar;->access$002(Lsmartisanos/widget/RQuickBar;Z)Z

    .line 776
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-static {v0}, Lsmartisanos/widget/RQuickBar;->access$100(Lsmartisanos/widget/RQuickBar;)V

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
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-static {v0, v1}, Lsmartisanos/widget/RQuickBar;->access$002(Lsmartisanos/widget/RQuickBar;Z)Z

    .line 765
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

    iput-boolean v1, v0, Lsmartisanos/widget/RQuickBar;->mShowBg:Z

    .line 766
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$1;->this$0:Lsmartisanos/widget/RQuickBar;

    invoke-virtual {v0}, Lsmartisanos/widget/RQuickBar;->invalidate()V

    .line 767
    return-void
.end method
