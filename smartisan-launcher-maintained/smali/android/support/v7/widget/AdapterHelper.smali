.class Landroid/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

.implements Landroid/support/v7/widget/OpReorderer$Callback;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AdapterHelper$Callback;,
        Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


.field final mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/AdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v7/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 78
    return-void
.end method

.method private applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 426
    return-void
.end method

.method private applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 128
    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x1

    .line 131
    iget v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 132
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 133
    .local v2, "tmpCount":I
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .line 134
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 135
    .local v5, "type":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, "typeChanged":Z
    iget-object v8, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 138
    .local v7, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    :cond_0
    if-nez v5, :cond_1

    .line 148
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 149
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 150
    const/4 v6, 0x1

    .line 152
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 165
    :goto_1
    if-eqz v6, :cond_4

    .line 166
    sub-int/2addr v1, v2

    .line 167
    sub-int/2addr v3, v2

    .line 168
    const/4 v2, 0x1

    .line 135
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    if-ne v5, v10, :cond_3

    .line 159
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 160
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 161
    const/4 v6, 0x1

    .line 163
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 170
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 175
    invoke-virtual {p0, v10, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 177
    :cond_6
    if-nez v5, :cond_7

    .line 178
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 182
    :goto_3
    return-void

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 10
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v9, 0x2

    .line 185
    iget v4, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 186
    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .line 187
    .local v2, "tmpCount":I
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v7, v8

    .line 188
    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .line 189
    .local v5, "type":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 190
    iget-object v7, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v7, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 191
    .local v6, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    :cond_0
    if-nez v5, :cond_1

    .line 193
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 194
    .local v0, "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 195
    const/4 v2, 0x0

    .line 196
    move v4, v1

    .line 198
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    .line 208
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 201
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 202
    .restart local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 203
    const/4 v2, 0x0

    .line 204
    move v4, v1

    .line 206
    .end local v0    # "newOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 210
    .end local v6    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v7, :cond_5

    .line 211
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 212
    invoke-virtual {p0, v9, v4, v2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 214
    :cond_5
    if-nez v5, :cond_6

    .line 215
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 219
    :goto_2
    return-void

    .line 217
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 404
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 405
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 406
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 407
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 408
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 421
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_0
    :goto_1
    return v5

    .line 411
    .restart local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_2

    .line 413
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .line 414
    .local v1, "end":I
    iget v4, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 415
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 414
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 405
    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 13
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 225
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v11, :cond_0

    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 226
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "should not dispatch add or move for pre layout"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 239
    :cond_1
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v12, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v11, v12}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 243
    .local v7, "tmpStart":I
    const/4 v6, 0x1

    .line 244
    .local v6, "tmpCnt":I
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 246
    .local v1, "offsetPositionForPartial":I
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_0

    .line 254
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "op should be remove or update."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 248
    :pswitch_0
    const/4 v4, 0x1

    .line 256
    .local v4, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_1
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v11, :cond_6

    .line 257
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v12, v4, v2

    add-int v3, v11, v12

    .line 258
    .local v3, "pos":I
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v3, v11}, Landroid/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .line 262
    .local v8, "updatedPos":I
    const/4 v0, 0x0

    .line 263
    .local v0, "continuous":Z
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v11, :pswitch_data_1

    .line 271
    :goto_2
    if-eqz v0, :cond_4

    .line 272
    add-int/lit8 v6, v6, 0x1

    .line 256
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v3    # "pos":I
    .end local v4    # "positionMultiplier":I
    .end local v8    # "updatedPos":I
    :pswitch_1
    const/4 v4, 0x0

    .line 252
    .restart local v4    # "positionMultiplier":I
    goto :goto_0

    .line 265
    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v3    # "pos":I
    .restart local v8    # "updatedPos":I
    :pswitch_2
    add-int/lit8 v11, v7, 0x1

    if-ne v8, v11, :cond_2

    move v0, v9

    .line 266
    :goto_4
    goto :goto_2

    :cond_2
    move v0, v10

    .line 265
    goto :goto_4

    .line 268
    :pswitch_3
    if-ne v8, v7, :cond_3

    move v0, v9

    :goto_5
    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_5

    .line 275
    :cond_4
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v11, v7, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 279
    .local v5, "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 280
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 281
    iget v11, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 282
    add-int/2addr v1, v6

    .line 284
    :cond_5
    move v7, v8

    .line 285
    const/4 v6, 0x1

    goto :goto_3

    .line 288
    .end local v0    # "continuous":Z
    .end local v3    # "pos":I
    .end local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local v8    # "updatedPos":I
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 289
    if-lez v6, :cond_7

    .line 290
    iget v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v9, v7, v6}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 294
    .restart local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v1}, Landroid/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 295
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 305
    .end local v5    # "tmp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_7
    return-void

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 3
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 450
    :goto_0
    return-void

    .line 438
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 10
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 323
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    .line 325
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 326
    .local v4, "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_9

    .line 328
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_2

    .line 329
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 330
    .local v5, "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 335
    .local v1, "end":I
    :goto_1
    if-lt p1, v5, :cond_7

    if-gt p1, v1, :cond_7

    .line 337
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_4

    .line 338
    if-nez p2, :cond_3

    .line 339
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 344
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 324
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 332
    :cond_2
    iget v5, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 333
    .restart local v5    # "start":I
    iget v1, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_1

    .line 340
    :cond_3
    if-ne p2, v8, :cond_0

    .line 341
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 346
    :cond_4
    if-nez p2, :cond_6

    .line 347
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 352
    :cond_5
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 348
    :cond_6
    if-ne p2, v8, :cond_5

    .line 349
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 354
    :cond_7
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    .line 356
    if-nez p2, :cond_8

    .line 357
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 358
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 359
    :cond_8
    if-ne p2, v8, :cond_1

    .line 360
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 361
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 365
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_b

    .line 366
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v6, :cond_a

    .line 367
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_3

    .line 368
    :cond_a
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_1

    .line 369
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_3

    .line 372
    :cond_b
    if-nez p2, :cond_c

    .line 373
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 374
    :cond_c
    if-ne p2, v8, :cond_1

    .line 375
    iget v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .line 388
    .end local v4    # "postponed":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_d
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5
    if-ltz v2, :cond_11

    .line 389
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 390
    .local v3, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_10

    .line 391
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_e

    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_f

    .line 392
    :cond_e
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 388
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 395
    :cond_10
    iget v6, v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_f

    .line 396
    iget-object v6, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 400
    .end local v3    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_11
    return p1
.end method


.method varargs addUpdateOp([Landroid/support/v7/widget/AdapterHelper$UpdateOp;)Landroid/support/v7/widget/AdapterHelper;
    .locals 1
    .param p1, "ops"    # [Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 119
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 6

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 534
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 536
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 537
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 555
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 535
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 540
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 543
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 544
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 548
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_1

    .line 551
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 552
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 559
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 560
    return-void

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .locals 2
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 309
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 320
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mCallback:Landroid/support/v7/widget/AdapterHelper$Callback;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(II)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    .line 461
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 462
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 463
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 464
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 465
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    .line 466
    iget p1, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_1
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    .line 469
    add-int/lit8 p1, p1, -0x1

    .line 471
    :cond_2
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_0

    .line 472
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 475
    :cond_3
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_0

    .line 476
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 477
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_5

    .line 478
    const/4 p1, -0x1

    .line 486
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_4
    return p1

    .line 480
    .restart local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_5
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    .line 481
    :cond_6
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-nez v3, :cond_0

    .line 482
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 650
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 651
    .local v0, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    .line 652
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .end local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(III)V

    .line 658
    .restart local v0    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    .line 654
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 655
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 656
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_0
.end method

.method onItemRangeChanged(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 493
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method onItemRangeMoved(III)Z
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 517
    if-ne p1, p2, :cond_0

    .line 524
    :goto_0
    return v1

    .line 520
    :cond_0
    if-eq p3, v0, :cond_1

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->obtainUpdateOp(III)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method preProcess()V
    .locals 5

    .prologue
    .line 91
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    iget-object v4, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 92
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 94
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 95
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyAdd(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->applyMove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 113
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 670
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 671
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 674
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    return-void
.end method
