.class Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;
.super Ljava/lang/Object;
.source "MultiSelectConcentrateAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellPassData"
.end annotation


.field public mEaseType:I

.field public passDuration:F

.field public passEndFrame:F

.field public passEndScale:F

.field public passEndX:F

.field public passEndY:F

.field public passFrom:Lcom/smartisanos/smengine/math/Vector3f;

.field public passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

.field public passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

.field public passStart:F

.field public passStartFrame:F

.field public passStartScale:F

.field public passStartX:F

.field public passStartY:F

.field public passTo:Lcom/smartisanos/smengine/math/Vector3f;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

.field public totalDuration:F

.field public totalFrame:F


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;)V
    .locals 3
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 170
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartFrame:F

    .line 172
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndFrame:F

    .line 174
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartFrame:F

    .line 175
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartY:F

    .line 177
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndX:F

    .line 178
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndY:F

    .line 180
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartScale:F

    .line 181
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndScale:F

    .line 183
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passDuration:F

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->mEaseType:I

    .line 185
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalFrame:F

    .line 186
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalDuration:F

    .line 187
    return-void
.end method


.method public generatePass()V
    .locals 4

    .prologue
    .line 191
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartFrame:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passDuration:F

    .line 192
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStart:F

    .line 201
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndX:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndY:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 204
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartScale:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartScale:F

    iget v3, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 205
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndScale:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndScale:F

    iget v3, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 206
    return-void
.end method
