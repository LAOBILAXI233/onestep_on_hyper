.class Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;
.super Ljava/lang/Object;
.source "MultiSelectSpreadOutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
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

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    .line 344
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    .line 345
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method


.method public generateNormalCellPassData()V
    .locals 14

    .prologue
    const v13, 0x3f333333    # 0.7f

    const/high16 v12, 0x41000000    # 8.0f

    const v11, 0x3f570a3d    # 0.84f

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 349
    new-instance v0, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 350
    .local v0, "cpd":Lcom/smartisanos/launcher/view/CellPassData;
    iput v13, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 351
    iput v12, v0, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 355
    iput v10, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 356
    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 358
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    .line 359
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    .line 362
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 363
    .local v4, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v3, v5, v4

    .line 364
    .local v3, "endPos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndX:F

    .line 365
    iget v5, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passEndY:F

    .line 367
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartX:F

    iget v7, v0, Lcom/smartisanos/launcher/view/CellPassData;->passStartY:F

    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 369
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v7, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->passTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 371
    const/16 v5, 0x1b

    iput v5, v0, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 373
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 374
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v1, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v1}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 378
    .local v1, "cpd2":Lcom/smartisanos/launcher/view/CellPassData;
    iput v13, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 379
    iput v12, v1, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 381
    iput v10, v1, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 382
    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 384
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 385
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v11, v11, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 387
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 388
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 390
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 391
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v10, v10, v10, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 393
    const/16 v5, 0x1b

    iput v5, v1, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 395
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 396
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v2, Lcom/smartisanos/launcher/view/CellPassData;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/CellPassData;-><init>()V

    .line 400
    .local v2, "cpd3":Lcom/smartisanos/launcher/view/CellPassData;
    iput v13, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalDuration:F

    .line 401
    iput v12, v2, Lcom/smartisanos/launcher/view/CellPassData;->totalFrame:F

    .line 403
    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passStartFrame:F

    .line 404
    iput v12, v2, Lcom/smartisanos/launcher/view/CellPassData;->passEndFrame:F

    .line 406
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/math/Vector3f;->mult(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passScaleFrom:Lcom/smartisanos/smengine/math/Vector3f;

    .line 407
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passScaleTo:Lcom/smartisanos/smengine/math/Vector3f;

    .line 409
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 410
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 412
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v10, v10, v10, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorFrom:Lcom/smartisanos/smengine/math/Vector4f;

    .line 413
    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passPremultAlphaColorTo:Lcom/smartisanos/smengine/math/Vector4f;

    .line 415
    const/16 v5, 0x1b

    iput v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->mEaseType:I

    .line 417
    new-instance v5, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->mPC:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v5, v6, v7}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v5, v2, Lcom/smartisanos/launcher/view/CellPassData;->passListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 419
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/CellPassData;->generatePass()V

    .line 420
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$CellAnimationPassDataGenerator;->CellPassDatas:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method
