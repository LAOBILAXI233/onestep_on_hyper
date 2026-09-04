.class final Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"

.implements Laurelienribon/tweenengine/TweenAccessor;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellConvertAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellConvertccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;",
        ">;"
    }
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/CellConvertAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/view/CellConvertAnimation$1;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;-><init>()V

    return-void
.end method


.method public getValues(Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;I[F)I
    .locals 2
    .param p1, "target"    # Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->getConvertProgress()F

    move-result v0

    .line 60
    .local v0, "v":F
    const/4 v1, 0x0

    aput v0, p3, v1

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;->getValues(Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;I[F)V
    .locals 2
    .param p1, "target"    # Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 67
    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->setConvertProgress(FZ)V

    .line 68
    return-void
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;->setValues(Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;I[F)V

    return-void
.end method
