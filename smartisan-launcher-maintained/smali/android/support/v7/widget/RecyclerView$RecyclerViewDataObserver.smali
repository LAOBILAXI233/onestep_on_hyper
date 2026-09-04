.class Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 2979
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x1"    # Landroid/support/v7/widget/RecyclerView$1;

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2982
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$2200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$202(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2993
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2996
    :cond_0
    return-void

    .line 2990
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2991
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$202(Landroid/support/v7/widget/RecyclerView;Z)Z

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3000
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3001
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 3004
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3008
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3010
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 3012
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 3024
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3026
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 3028
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3016
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3018
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 3020
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3300(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3037
    :goto_0
    return-void

    .line 3034
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$3602(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 3035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
