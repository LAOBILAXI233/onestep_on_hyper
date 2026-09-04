.class public Lcom/smartisanos/launcher/view/CellPassData;
.super Ljava/lang/Object;
.source "CellPassData.java"


.field public mEaseType:I

.field public mJustForTimer:Z

.field public passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

.field public passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

.field public passDuration:F

.field public passEndFrame:F

.field public passEndScale:F

.field public passEndX:F

.field public passEndY:F

.field public passFrom:Lcom/smartisanos/smengine/math/Vector3f;

.field public passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

.field public passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

.field public passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

.field public passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

.field public passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

.field public passStart:F

.field public passStartFrame:F

.field public passStartScale:F

.field public passStartX:F

.field public passStartY:F

.field public passTo:Lcom/smartisanos/smengine/math/Vector3f;

.field public totalDuration:F

.field public totalFrame:F


.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    .line 37
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 38
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 40
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 41
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 43
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 44
    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 46
    iput v2, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartScale:F

    .line 47
    iput v2, p0, Lcom/smartisanos/launcher/view/CellPassData;->passEndScale:F

    .line 49
    iput v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    .line 50
    iput v3, p0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 51
    iput v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 52
    iput v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 53
    return-void
.end method


.method public generatePass()V
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passDuration:F

    .line 58
    iget v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/CellPassData;->passStart:F

    .line 60
    return-void
.end method
