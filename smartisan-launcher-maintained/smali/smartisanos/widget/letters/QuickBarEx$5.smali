.class Lsmartisanos/widget/letters/QuickBarEx$5;
.super Ljava/lang/Object;
.source "QuickBarEx.java"

.implements Landroid/animation/Animator$AnimatorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/letters/QuickBarEx;->showLetterGridWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 667
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 661
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$802(Lsmartisanos/widget/letters/QuickBarEx;Z)Z

    .line 662
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1000(Lsmartisanos/widget/letters/QuickBarEx;)V

    .line 663
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 657
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 650
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0, v1}, Lsmartisanos/widget/letters/QuickBarEx;->access$802(Lsmartisanos/widget/letters/QuickBarEx;Z)Z

    .line 651
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$900(Lsmartisanos/widget/letters/QuickBarEx;)Lsmartisanos/widget/letters/LettersBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/letters/LettersBar;->setShowBg(Z)V

    .line 652
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$5;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-virtual {v0}, Lsmartisanos/widget/letters/QuickBarEx;->invalidate()V

    .line 653
    return-void
.end method
