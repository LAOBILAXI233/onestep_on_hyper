.class Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;
.super Ljava/lang/Object;
.source "MultiSelectAllCellBackToPageAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;
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

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

.field public totalDuration:F

.field public totalFrame:F


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;)V
    .locals 3
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 155
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->this$0:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartFrame:F

    .line 157
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndFrame:F

    .line 159
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartFrame:F

    .line 160
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartY:F

    .line 162
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndX:F

    .line 163
    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndY:F

    .line 165
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartScale:F

    .line 166
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndScale:F

    .line 168
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passDuration:F

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->mEaseType:I

    .line 170
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalFrame:F

    .line 171
    iput v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalDuration:F

    .line 172
    return-void
.end method


.method public generatePass()V
    .locals 4

    .prologue
    .line 176
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartFrame:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passDuration:F

    .line 177
    iget v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartFrame:F

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalFrame:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStart:F

    .line 186
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndX:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndY:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 189
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartScale:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartScale:F

    iget v3, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 190
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndScale:F

    iget v2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndScale:F

    iget v3, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndScale:F

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 191
    return-void
.end method
