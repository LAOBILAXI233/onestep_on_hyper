.class Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "T9PanelView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->hideT9Panel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;


.method constructor <init>(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$2;->this$0:Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 113
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView$2;->this$0:Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;->access$000(Lcom/smartisanos/quicksearchbox/container/t9keyboard/T9PanelView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    return-void
.end method
