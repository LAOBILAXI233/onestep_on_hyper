.class Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiPageAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiPageAnimation;
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

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiPageAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 326
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateChangeParentCellPassData()V
    .locals 13

    .prologue
    const/high16 v9, 0x42200000    # 40.0f

    const/4 v12, 0x0

    .line 336
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 337
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v8, 0x3ecccccd    # 0.4f

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 338
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 341
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 342
    .local v2, "currRowIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 343
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 345
    .local v4, "index":I
    const/4 v6, -0x1

    .line 346
    .local v6, "targetPosIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I

    move-result v8

    if-nez v8, :cond_0

    .line 347
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v6

    .line 351
    :goto_0
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    .line 353
    .local v7, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    iput v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 354
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 357
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$300(Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 358
    .local v5, "preCellPage":Lcom/smartisanos/launcher/view/Page;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$300(Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v10

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10, v8}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v8

    invoke-static {v9, v8}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$202(Lcom/smartisanos/launcher/view/MultiPageAnimation;I)I

    .line 359
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8, v5}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 361
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 363
    .local v3, "currentPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 364
    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 366
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 367
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 369
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 370
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    invoke-direct {v8, v9, v10, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 372
    const/16 v8, 0xf

    iput v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 373
    new-instance v8, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v8, v9}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 375
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 376
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v9, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v9, v9

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 379
    return-void

    .line 349
    .end local v3    # "currentPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v5    # "preCellPage":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v6

    goto/16 :goto_0
.end method

.method public generateEndToEndCellPassData()V
    .locals 14

    .prologue
    .line 387
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 388
    .local v0, "cpd1":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 389
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 392
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    .line 393
    .local v5, "currRowIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    .line 394
    .local v4, "currColIndex":I
    invoke-static {v5, v4}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v6

    .line 396
    .local v6, "index":I
    const/4 v7, -0x1

    .line 397
    .local v7, "targetPosIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I

    move-result v9

    if-nez v9, :cond_0

    .line 398
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v7

    .line 402
    :goto_0
    invoke-static {v7}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    .line 404
    .local v8, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v9, 0x0

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 405
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 407
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 408
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const v10, 0x3f6147ae    # 0.88f

    const v11, 0x3f6147ae    # 0.88f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 410
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 411
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3f333333    # 0.7f

    const v12, 0x3f333333    # 0.7f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 413
    const/16 v9, 0xd

    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 418
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 419
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 424
    .local v1, "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 425
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 427
    const/high16 v9, 0x41a00000    # 20.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 428
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 431
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 432
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 434
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    iget-object v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(Lcom/smartisanos/smengine/math/Vector4f;)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 435
    new-instance v9, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 437
    const/16 v9, 0xe

    iput v9, v1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 438
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 439
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v2, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 444
    .local v2, "cpd3":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 445
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 450
    const/4 v9, 0x0

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 451
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 453
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 454
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 456
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 457
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v9

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 459
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 460
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v11, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 462
    const/16 v9, 0xf

    iput v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 463
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v2, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 465
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 466
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v3, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v3}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 472
    .local v3, "cpd4":Lcom/smartisanos/launcher/view/CellPassData;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 473
    const/high16 v9, 0x42200000    # 40.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 475
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 476
    const/high16 v9, 0x41f00000    # 30.0f

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 479
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mJustForTimer:Z

    .line 480
    const/16 v9, 0xe

    iput v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 481
    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v9, v10}, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v9, v3, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 482
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 483
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v10, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v10, v10

    iget v11, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 490
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$300(Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v11, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    invoke-static {v10, v9}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$202(Lcom/smartisanos/launcher/view/MultiPageAnimation;I)I

    .line 492
    return-void

    .line 400
    .end local v1    # "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v2    # "cpd3":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v3    # "cpd4":Lcom/smartisanos/launcher/view/CellPassData;
    .end local v8    # "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    invoke-static {v6}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v7

    goto/16 :goto_0
.end method

.method public generateNormalCellPassData()V
    .locals 10

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const/4 v9, 0x0

    .line 497
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 498
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 499
    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 502
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    .line 503
    .local v2, "currRowIndex":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v1

    .line 504
    .local v1, "currColIndex":I
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v3

    .line 506
    .local v3, "index":I
    const/4 v4, -0x1

    .line 507
    .local v4, "targetPosIndex":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiPageAnimation;)I

    move-result v6

    if-nez v6, :cond_0

    .line 508
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v4

    .line 512
    :goto_0
    invoke-static {v4}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v5

    .line 514
    .local v5, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    iput v9, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 515
    iput v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 517
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 518
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 520
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 521
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 523
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v7, v3

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 524
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    iget v8, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    invoke-direct {v6, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 526
    const/16 v6, 0xf

    iput v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 528
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 529
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    iget v7, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v7, v7

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 535
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$300(Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiPageAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->access$202(Lcom/smartisanos/launcher/view/MultiPageAnimation;I)I

    .line 536
    return-void

    .line 510
    .end local v5    # "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    invoke-static {v3}, Lcom/smartisanos/launcher/view/Page;->getAfterOfIndex(I)I

    move-result v4

    goto :goto_0
.end method
