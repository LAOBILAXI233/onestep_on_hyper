.class public final Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellConvertAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellConvertValue"
.end annotation


.field private mCell:Lcom/smartisanos/launcher/view/Cell;

.field private mConvertProgress:F


.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 41
    return-void
.end method


.method public getConvertProgress()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mConvertProgress:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mConvertProgress:F

    .line 37
    return-void
.end method

.method public setConvertProgress(FZ)V
    .locals 1
    .param p1, "convertProgress"    # F
    .param p2, "update"    # Z

    .prologue
    .line 44
    iput p1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mConvertProgress:F

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->setLastConvertProgress(F)V

    .line 48
    :cond_0
    return-void
.end method
