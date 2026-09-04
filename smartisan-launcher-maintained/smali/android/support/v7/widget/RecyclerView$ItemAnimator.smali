.class public abstract Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J

.field private mSupportsChangeAnimations:Z


.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 7894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7896
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 7897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 7900
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 7901
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 7902
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 7903
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 7905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 8320
    return-void
.end method


.method public abstract animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public abstract animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public final dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8163
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8167
    :cond_0
    return-void
.end method

.method public final dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8210
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8211
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 8306
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8307
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8308
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 8307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8310
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8311
    return-void
.end method

.method public final dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 8180
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 8181
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8184
    :cond_0
    return-void
.end method

.method public final dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 8223
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 8224
    return-void
.end method

.method public final dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8151
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8152
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8153
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8155
    :cond_0
    return-void
.end method

.method public final dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8201
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8202
    return-void
.end method

.method public final dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8139
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8140
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 8141
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8143
    :cond_0
    return-void
.end method

.method public final dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8192
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8193
    return-void
.end method

.method public abstract endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 7931
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 7967
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 7913
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 7949
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 7985
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .prologue
    .line 8278
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 8279
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 8280
    if-nez v0, :cond_1

    .line 8281
    invoke-interface {p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 8286
    :cond_0
    :goto_0
    return v0

    .line 8283
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8362
    return-void
.end method

.method public onAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8352
    return-void
.end method

.method public onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 8406
    return-void
.end method

.method public onChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 8394
    return-void
.end method

.method public onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8382
    return-void
.end method

.method public onMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8372
    return-void
.end method

.method public onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8342
    return-void
.end method

.method public onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8332
    return-void
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 7940
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 7941
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 7976
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 7977
    return-void
.end method

.method setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 8018
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 8019
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 7922
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 7923
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 7958
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 7959
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 8006
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 8007
    return-void
.end method
