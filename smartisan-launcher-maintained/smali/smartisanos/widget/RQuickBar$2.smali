.class Lsmartisanos/widget/RQuickBar$2;
.super Ljava/lang/Object;
.source "RQuickBar.java"

.implements Landroid/animation/Animator$AnimatorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisanos/widget/RQuickBar;->hideLetterGridWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lsmartisanos/widget/RQuickBar;

.field final synthetic val$visibleFlag:I


.method constructor <init>(Lsmartisanos/widget/RQuickBar;I)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lsmartisanos/widget/RQuickBar$2;->this$0:Lsmartisanos/widget/RQuickBar;

    iput p2, p0, Lsmartisanos/widget/RQuickBar$2;->val$visibleFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 821
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 815
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$2;->this$0:Lsmartisanos/widget/RQuickBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisanos/widget/RQuickBar;->access$202(Lsmartisanos/widget/RQuickBar;Z)Z

    .line 816
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$2;->this$0:Lsmartisanos/widget/RQuickBar;

    iget v1, p0, Lsmartisanos/widget/RQuickBar$2;->val$visibleFlag:I

    invoke-static {v0, v1}, Lsmartisanos/widget/RQuickBar;->access$300(Lsmartisanos/widget/RQuickBar;I)V

    .line 817
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 811
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 806
    iget-object v0, p0, Lsmartisanos/widget/RQuickBar$2;->this$0:Lsmartisanos/widget/RQuickBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsmartisanos/widget/RQuickBar;->access$202(Lsmartisanos/widget/RQuickBar;Z)Z

    .line 807
    return-void
.end method
