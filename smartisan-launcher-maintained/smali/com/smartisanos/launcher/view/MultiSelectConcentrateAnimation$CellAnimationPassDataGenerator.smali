.class Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiSelectConcentrateAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;
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
            "Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;",
            ">;"
        }
    .end annotation
.end field

.field private endPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mPC:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 2
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->endPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 115
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateNormalCellPassData()V
    .locals 9

    .prologue
    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 120
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    invoke-direct {v0, v4}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;-><init>(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;)V

    .line 122
    .local v0, "cpd":Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalDuration:F

    .line 123
    iput v5, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->totalFrame:F

    .line 126
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 127
    .local v2, "currRowIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 128
    .local v1, "currColIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    mul-int/2addr v4, v2

    add-int v3, v4, v1

    .line 130
    .local v3, "index":I
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartFrame:F

    .line 131
    iput v5, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndFrame:F

    .line 133
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartX:F

    .line 134
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartY:F

    .line 136
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->endPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndX:F

    .line 137
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->endPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndY:F

    .line 139
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartX:F

    iget v6, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartY:F

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 141
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passStartScale:F

    .line 142
    iput v8, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->passEndScale:F

    .line 144
    const/16 v4, 0xe

    iput v4, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->mEaseType:I

    .line 146
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellPassData;->generatePass()V

    .line 147
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
