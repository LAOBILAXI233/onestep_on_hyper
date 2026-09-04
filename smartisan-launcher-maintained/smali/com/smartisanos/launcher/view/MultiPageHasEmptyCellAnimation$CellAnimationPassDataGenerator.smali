.class Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiPageHasEmptyCellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
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

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 308
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateChangeParentCellPassData()V
    .locals 12

    .prologue
    const/high16 v9, 0x42200000    # 40.0f

    .line 318
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 319
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v8, 0x3ecccccd    # 0.4f

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 320
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 323
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 324
    .local v2, "currRowIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 325
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 326
    .local v4, "index":I
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v6

    .line 327
    .local v6, "targetPosIndex":I
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    .line 329
    .local v7, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v8, 0x0

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 330
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 333
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 334
    .local v5, "targetPage":Lcom/smartisanos/launcher/view/Page;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v10

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10, v8}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v8

    invoke-static {v9, v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;I)I

    .line 335
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8, v5}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 337
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 339
    .local v3, "currentPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 340
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 342
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 343
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 348
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget v11, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 349
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    iget v11, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 352
    const/16 v8, 0xf

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 353
    new-instance v8, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v8, v9}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 355
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 356
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v9, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v9, v9

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 362
    return-void
.end method

.method public generateEndToEndCellPassData()V
    .locals 14

    .prologue
    .line 370
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 371
    .local v0, "cpd1":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 372
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 375
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    .line 376
    .local v5, "currRowIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    .line 377
    .local v4, "currColIndex":I
    invoke-static {v5, v4}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v6

    .line 378
    .local v6, "index":I
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v7

    .line 379
    .local v7, "targetPosIndex":I
    invoke-static {v7}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    .line 381
    .local v8, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v9, 0x0

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 382
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 384
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 385
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const v10, 0x3f6147ae    # 0.88f

    const v11, 0x3f6147ae    # 0.88f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 387
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 388
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3f333333    # 0.7f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 390
    const/16 v9, 0xd

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 395
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 396
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v1, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 401
    .local v1, "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 402
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 404
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 405
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 408
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 409
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 411
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(Lcom/smartisanos/smengine/math/Vector4f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 412
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 414
    const/16 v9, 0xe

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 415
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 416
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 421
    .local v2, "cpd3":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 422
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 427
    const/4 v9, 0x0

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 428
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 430
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 431
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 433
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 434
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 436
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 437
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 439
    const/16 v9, 0xf

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 440
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 442
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 443
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v3, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v3}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 448
    .local v3, "cpd4":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 449
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 451
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 452
    const/high16 v9, 0x41f00000    # 30.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 455
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    .line 456
    const/16 v9, 0xe

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 457
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 458
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 459
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v10, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v10, v10

    iget v11, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 466
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v11, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    invoke-static {v10, v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;I)I

    .line 468
    return-void
.end method

.method public generateNormalCellPassData()V
    .locals 11

    .prologue
    const/high16 v8, 0x42200000    # 40.0f

    .line 473
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 474
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v7, 0x3ecccccd    # 0.4f

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 475
    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 478
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 479
    .local v2, "currRowIndex":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 480
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 481
    .local v4, "index":I
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v5

    .line 482
    .local v5, "targetPosIndex":I
    invoke-static {v5}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v6

    .line 484
    .local v6, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v7, 0x0

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 485
    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 490
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 491
    .local v3, "currentLocation":Lcom/smartisanos/smengine/math/Vector3f;
    iget v7, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 492
    iget v7, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 494
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v7

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 495
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v7

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 500
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    iget v10, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 501
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    iget v10, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 503
    const/16 v7, 0xf

    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 505
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 506
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v8, v8

    iget v9, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 513
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v7

    invoke-static {v8, v7}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->access$102(Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;I)I

    .line 516
    return-void
.end method
