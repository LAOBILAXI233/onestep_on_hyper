.class Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiPageHasEmptyCellRevertAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
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
            "Lcom/smartisanos/launcher/view/CellPassData;",
            ">;"
        }
    .end annotation
.end field

.field private mPC:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 299
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateChangeParentCellPassData()V
    .locals 12

    .prologue
    const/high16 v9, 0x42200000    # 40.0f

    .line 309
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 310
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v8, 0x3ecccccd    # 0.4f

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 311
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 314
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 315
    .local v2, "currRowIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 316
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 317
    .local v4, "index":I
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v6

    .line 318
    .local v6, "targetPosIndex":I
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    .line 320
    .local v7, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v8, 0x0

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 321
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 324
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 325
    .local v5, "targetPage":Lcom/smartisanos/launcher/view/Page;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v10

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10, v8}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v8

    invoke-static {v9, v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;I)I

    .line 326
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8, v5}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 328
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 330
    .local v3, "currentPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 331
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 333
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 334
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 336
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 337
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 340
    const/16 v8, 0xf

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 341
    new-instance v8, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v8, v9}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 343
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 344
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v9, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v9, v9

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 350
    return-void
.end method

.method public generateEndToEndCellPassData()V
    .locals 14

    .prologue
    .line 358
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 359
    .local v0, "cpd1":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 360
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 363
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    .line 364
    .local v5, "currRowIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    .line 365
    .local v4, "currColIndex":I
    invoke-static {v5, v4}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v6

    .line 366
    .local v6, "index":I
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v7

    .line 367
    .local v7, "targetPosIndex":I
    invoke-static {v7}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    .line 369
    .local v8, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v9, 0x0

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 370
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 372
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 373
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const v10, 0x3f6147ae    # 0.88f

    const v11, 0x3f6147ae    # 0.88f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 375
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 376
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3f333333    # 0.7f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 378
    const/16 v9, 0xd

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 383
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 384
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v1, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 389
    .local v1, "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 390
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 392
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 393
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 396
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 397
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 399
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(Lcom/smartisanos/smengine/math/Vector4f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 400
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 402
    const/16 v9, 0xe

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 403
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 404
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 409
    .local v2, "cpd3":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 410
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 415
    const/4 v9, 0x0

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 416
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 418
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 419
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 421
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 422
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 424
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 425
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 427
    const/16 v9, 0xf

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 428
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 430
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 431
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v3, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v3}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 436
    .local v3, "cpd4":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 437
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 439
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 440
    const/high16 v9, 0x41f00000    # 30.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 443
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    .line 444
    const/16 v9, 0xe

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 445
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 446
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 447
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v10, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v10, v10

    iget v11, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 454
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v11, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    invoke-static {v10, v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;I)I

    .line 455
    return-void
.end method

.method public generateNormalCellPassData()V
    .locals 10

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    .line 460
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 461
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 462
    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 465
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 466
    .local v2, "currRowIndex":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 467
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v3

    .line 468
    .local v3, "index":I
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v4

    .line 469
    .local v4, "targetPosIndex":I
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v5

    .line 471
    .local v5, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v6, 0x0

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 472
    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 474
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 475
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 477
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 478
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 480
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v3

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 481
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 484
    const/16 v6, 0xf

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 486
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 487
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v7, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v7, v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 493
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;I)I

    .line 494
    return-void
.end method
