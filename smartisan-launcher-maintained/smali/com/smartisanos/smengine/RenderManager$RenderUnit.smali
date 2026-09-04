.class public final Lcom/smartisanos/smengine/RenderManager$RenderUnit;
.super Ljava/lang/Object;
.source "RenderManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderUnit"
.end annotation


.field protected mCamera:Lcom/smartisanos/smengine/Camera;

.field protected mClear:Z

.field protected mDiffuseMapName:Ljava/lang/String;

.field protected mDiffuseTextID:I

.field protected mIsGenMipmapRU:Z

.field protected mIsRenderTargetClearRU:Z

.field protected mLayer:I

.field protected mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

.field public mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

.field public mMeshList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field protected mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

.field protected mName:Ljava/lang/String;

.field protected mNormalMapName:Ljava/lang/String;

.field protected mRenderState:Lcom/smartisanos/smengine/RenderState;

.field protected mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field protected mShadowMapName:Ljava/lang/String;

.field protected mSubLayer:I

.field protected mTranslucent:Z

.field protected mViewPort:Lcom/smartisanos/smengine/ViewPort;

.field public mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected mZ:F


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 320
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseTextID:I

    .line 339
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mClear:Z

    .line 340
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsRenderTargetClearRU:Z

    .line 341
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsGenMipmapRU:Z

    return-void
.end method


.method public addMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 1
    .param p1, "m"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 345
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 346
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 347
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mName:Ljava/lang/String;

    .line 348
    iput v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLayer:I

    .line 349
    iput v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mSubLayer:I

    .line 350
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    .line 351
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 352
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mCamera:Lcom/smartisanos/smengine/Camera;

    .line 353
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mTranslucent:Z

    .line 354
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseTextID:I

    .line 356
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 357
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 358
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsRenderTargetClearRU:Z

    .line 359
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsGenMipmapRU:Z

    .line 362
    iput v3, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mZ:F

    .line 363
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseMapName:Ljava/lang/String;

    .line 364
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mShadowMapName:Ljava/lang/String;

    .line 365
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mNormalMapName:Ljava/lang/String;

    .line 367
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mClear:Z

    .line 368
    return-void
.end method

.method public getDiffuseTexID()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseTextID:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLayer:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLayer()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mSubLayer:I

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mZ:F

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mTranslucent:Z

    return v0
.end method

.method public setCamera(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mCamera:Lcom/smartisanos/smengine/Camera;

    .line 437
    return-void
.end method

.method public setColorArray([Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "colorArray"    # [Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 397
    return-void
.end method

.method public setDiffuseMapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseMapName:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setDiffuseTexID(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseTextID:I

    .line 391
    return-void
.end method

.method public setIsClear(Z)V
    .locals 0
    .param p1, "c"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mClear:Z

    .line 463
    return-void
.end method

.method public setIsGenMipmapRU(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsGenMipmapRU:Z

    .line 388
    return-void
.end method

.method public setIsRenderTargetClearRU(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mIsRenderTargetClearRU:Z

    .line 385
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLayer:I

    .line 427
    return-void
.end method

.method public setMatArray([Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 0
    .param p1, "matArray"    # [Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 394
    return-void
.end method

.method public setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 0
    .param p1, "m"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 440
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mName:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setNormalMapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mNormalMapName:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setRenderState(Lcom/smartisanos/smengine/RenderState;)V
    .locals 1
    .param p1, "rs"    # Lcom/smartisanos/smengine/RenderState;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    .line 433
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderState;->isEnableBlend()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mTranslucent:Z

    .line 434
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 0
    .param p1, "rt"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 443
    return-void
.end method

.method public setShadowMapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mShadowMapName:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setSubLayer(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mSubLayer:I

    .line 430
    return-void
.end method

.method public setViewPort(Lcom/smartisanos/smengine/ViewPort;)V
    .locals 0
    .param p1, "vp"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 446
    return-void
.end method

.method public setWorldMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 0
    .param p1, "m"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 424
    return-void
.end method

.method public setZ(F)V
    .locals 0
    .param p1, "z"    # F

    .prologue
    .line 449
    iput p1, p0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mZ:F

    .line 450
    return-void
.end method
