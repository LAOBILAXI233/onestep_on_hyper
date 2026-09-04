.class Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiSelectAllCellBackToPageAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellAnimationPassDataGenerator"
.end annotation


.field public CellPassDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;",
            ">;"
        }
    .end annotation
.end field

.field private mPC:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 99
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateNormalCellPassData()V
    .locals 9

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 104
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    invoke-direct {v0, v4}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;-><init>(Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;)V

    .line 106
    .local v0, "cpd":Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalDuration:F

    .line 107
    iput v5, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->totalFrame:F

    .line 111
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartFrame:F

    .line 112
    iput v5, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndFrame:F

    .line 114
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartX:F

    .line 115
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartY:F

    .line 118
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 119
    .local v3, "priviewParent":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v2

    .line 120
    .local v2, "index":I
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v1, v4, v2

    .line 121
    .local v1, "endPos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndX:F

    .line 122
    iget v4, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndY:F

    .line 124
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartX:F

    iget v6, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartY:F

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 126
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passStartScale:F

    .line 127
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->passEndScale:F

    .line 129
    const/16 v4, 0xe

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->mEaseType:I

    .line 131
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellPassData;->generatePass()V

    .line 132
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method
