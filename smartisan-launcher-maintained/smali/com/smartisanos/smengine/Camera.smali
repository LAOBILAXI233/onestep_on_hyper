.class public Lcom/smartisanos/smengine/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Camera$FrustumIntersect;
    }
.end annotation


.field private static final BOTTOM_PLANE:I = 0x2

.field private static final FAR_PLANE:I = 0x4

.field private static final FRUSTUM_PLANES:I = 0x6

.field private static final LEFT_PLANE:I = 0x0

.field private static final MAX_WORLD_PLANES:I = 0x6

.field private static final NEAR_PLANE:I = 0x5

.field private static final RIGHT_PLANE:I = 0x1

.field private static final TOP_PLANE:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


.field protected coeffBottom:[F

.field protected coeffLeft:[F

.field protected coeffRight:[F

.field protected coeffTop:[F

.field protected frustumBottom:F

.field protected frustumFar:F

.field protected frustumLeft:F

.field protected frustumNear:F

.field protected frustumRight:F

.field protected frustumTop:F

.field protected height:I

.field protected location:Lcom/smartisanos/smengine/math/Vector3f;

.field protected name:Ljava/lang/String;

.field protected nativeInt:J

.field protected orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private parallelProjection:Z

.field private planeState:I

.field protected projectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected projectionMatrixOverride:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected rotation:Lcom/smartisanos/smengine/math/Quaternion;

.field protected viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected viewPortBottom:F

.field protected viewPortLeft:F

.field protected viewPortRight:F

.field protected viewPortTop:F

.field protected viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field protected viewportChanged:Z

.field protected width:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Camera;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x41000000    # -0.5f

    const/4 v6, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-boolean v6, p0, Lcom/smartisanos/smengine/Camera;->viewportChanged:Z

    .line 199
    iput-boolean v6, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    .line 201
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 202
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 203
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 251
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    .line 252
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    .line 254
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    .line 256
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 257
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 258
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    .line 259
    iput v2, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    .line 261
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffLeft:[F

    .line 262
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffRight:[F

    .line 263
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffBottom:[F

    .line 264
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffTop:[F

    .line 266
    iput v4, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    .line 267
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    .line 268
    iput v1, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    .line 269
    iput v4, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    .line 271
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->width:I

    .line 272
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->height:I

    .line 274
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 275
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 276
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 278
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/Camera;->nCreate(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    .line 279
    sget-object v0, Lcom/smartisanos/smengine/Camera;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Camera created (W: {0}, H: {1})"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    return-void
.end method

.method private static native nCreate(II)J
.end method

.method private static native nLookAt(JFFFFFF)V
.end method

.method private static native nLookAtDirection(JFFFFFF)V
.end method

.method private static native nNormalize(J)V
.end method

.method private static native nRelease(J)V
.end method

.method private static native nResize(JIIZ)V
.end method

.method private static native nSetAxes(JFFFFFFFFF)V
.end method

.method private static native nSetAxesWithQuaternion(JFFFF)V
.end method

.method private static native nSetFrame(JFFFFFFFFFFFF)V
.end method

.method private static native nSetFrameWithQuaternion(JFFFFFFF)V
.end method

.method private static native nSetFrustum(JFFFFFF)V
.end method

.method private static native nSetFrustumBottom(JF)V
.end method

.method private static native nSetFrustumFar(JF)V
.end method

.method private static native nSetFrustumLeft(JF)V
.end method

.method private static native nSetFrustumNear(JF)V
.end method

.method private static native nSetFrustumOrtho(JFFFFFF)V
.end method

.method private static native nSetFrustumPerspective(JFFFF)V
.end method

.method private static native nSetFrustumRight(JF)V
.end method

.method private static native nSetFrustumTop(JF)V
.end method

.method private static native nSetLocation(JFFF)V
.end method

.method private static native nSetPlaneState(JI)V
.end method

.method private static native nSetRotation(JFFFF)V
.end method

.method private static native nSetViewPort(JFFFF)V
.end method

.method private static native nSetViewPortBottom(JF)V
.end method

.method private static native nSetViewPortLeft(JF)V
.end method

.method private static native nSetViewPortRight(JF)V
.end method

.method private static native nSetViewPortTop(JF)V
.end method

.method private static native nUpdate(J)V
.end method

.method private static native nUpdateViewProjection(J)V
.end method

.method private onFrameChange()V
    .locals 7

    .prologue
    .line 1292
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v4

    .line 1294
    .local v4, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Camera;->getLeft(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    .line 1295
    .local v2, "left":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Camera;->getDirection(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 1296
    .local v1, "direction":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, v4, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Camera;->getUp(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 1298
    .local v3, "up":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/math/Vector3f;->dot(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    .line 1352
    .local v0, "dirDotLocation":F
    iget-object v5, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v6, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v6, v1, v3, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->fromFrame(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1354
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1357
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->updateViewProjection()V

    .line 1358
    return-void
.end method

.method private onFrustumChange()V
    .locals 14

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->isParallelProjection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    mul-float v11, v0, v1

    .line 1246
    .local v11, "nearSquared":F
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    mul-float v10, v0, v1

    .line 1247
    .local v10, "leftSquared":F
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    mul-float v12, v0, v1

    .line 1248
    .local v12, "rightSquared":F
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    mul-float v8, v0, v1

    .line 1249
    .local v8, "bottomSquared":F
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    mul-float v13, v0, v1

    .line 1251
    .local v13, "topSquared":F
    add-float v0, v11, v10

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1252
    .local v9, "inverseLength":F
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffLeft:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1253
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffLeft:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1255
    add-float v0, v11, v12

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1256
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffRight:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1257
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffRight:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1259
    add-float v0, v11, v8

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1260
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffBottom:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1261
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffBottom:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1263
    add-float v0, v11, v13

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1264
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffTop:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1265
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffTop:[F

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1280
    .end local v8    # "bottomSquared":F
    .end local v9    # "inverseLength":F
    .end local v10    # "leftSquared":F
    .end local v11    # "nearSquared":F
    .end local v12    # "rightSquared":F
    .end local v13    # "topSquared":F
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    iget v2, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    iget v3, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    iget v4, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    iget v5, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    iget v6, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    iget-boolean v7, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/math/Matrix4f;->fromFrustum(FFFFFFZ)V

    .line 1285
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 1286
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffLeft:[F

    aput v5, v0, v2

    .line 1268
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffLeft:[F

    aput v1, v0, v3

    .line 1270
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffRight:[F

    aput v4, v0, v2

    .line 1271
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffRight:[F

    aput v1, v0, v3

    .line 1273
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffBottom:[F

    aput v5, v0, v2

    .line 1274
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffBottom:[F

    aput v1, v0, v3

    .line 1276
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffTop:[F

    aput v4, v0, v2

    .line 1277
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->coeffTop:[F

    aput v1, v0, v3

    goto :goto_0
.end method

.method private static native setParallelProjection(JZ)V
.end method


.method public clearViewportChanged()V
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->viewportChanged:Z

    .line 1226
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/Camera;->nRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDirection()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getFrustumBottom()F
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    return v0
.end method

.method public getFrustumFar()F
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    return v0
.end method

.method public getFrustumLeft()F
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    return v0
.end method

.method public getFrustumNear()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    return v0
.end method

.method public getFrustumRight()F
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    return v0
.end method

.method public getFrustumTop()F
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1485
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->height:I

    return v0
.end method

.method public getLeft()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLeft(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrthoProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 26

    .prologue
    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/Camera;->orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    if-eqz v2, :cond_0

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/Camera;->orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1186
    :goto_0
    return-object v2

    .line 1173
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v25, v0

    .line 1174
    .local v25, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v20, v0

    .line 1175
    .local v20, "height":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v23, v25, v2

    .line 1176
    .local v23, "r":F
    move/from16 v0, v25

    neg-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v21, v2, v3

    .line 1177
    .local v21, "l":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v24, v20, v2

    .line 1178
    .local v24, "t":F
    move/from16 v0, v20

    neg-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    .line 1179
    .local v18, "b":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    move/from16 v19, v0

    .line 1180
    .local v19, "f":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    move/from16 v22, v0

    .line 1181
    .local v22, "n":F
    new-instance v1, Lcom/smartisanos/smengine/math/Matrix4f;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v2, v25

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-float v5, v23, v21

    neg-float v5, v5

    sub-float v6, v23, v21

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v7, v20

    const/4 v8, 0x0

    add-float v9, v24, v18

    neg-float v9, v9

    sub-float v10, v24, v18

    div-float/2addr v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x40000000    # -2.0f

    sub-float v13, v19, v22

    div-float/2addr v12, v13

    add-float v13, v19, v22

    neg-float v13, v13

    sub-float v14, v19, v22

    div-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v17}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    .line 1185
    .local v1, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/smengine/Camera;->orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/Camera;->orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0
.end method

.method public getOrthoViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1167
    :goto_0
    return-object v0

    .line 1164
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getOrthoProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1165
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1166
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->orthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1167
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewOrthoProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0
.end method

.method public getPlaneState()I
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->planeState:I

    return v0
.end method

.method public getProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrixOverride:Lcom/smartisanos/smengine/math/Matrix4f;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrixOverride:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0
.end method

.method public getRotation()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    return-object v0
.end method

.method public getScreenCoordinates(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "worldPos"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/Camera;->getScreenCoordinates(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCoordinates(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p1, "worldPosition"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1450
    if-nez p2, :cond_0

    .line 1451
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1464
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/smengine/math/Matrix4f;->multProj(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    .line 1465
    .local v0, "w":F
    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/math/Vector3f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1467
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v1, v4

    iget v2, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    iget v3, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1468
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v1, v4

    iget v2, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    iget v3, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1469
    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v1, v4

    div-float/2addr v1, v5

    iput v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1471
    return-object p2
.end method

.method public getUp()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getUp(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getViewMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    return-object v0
.end method

.method public getViewPortBottom()F
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    return v0
.end method

.method public getViewPortLeft()F
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    return v0
.end method

.method public getViewPortRight()F
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    return v0
.end method

.method public getViewPortTop()F
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    return v0
.end method

.method public getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    return-object v0
.end method

.method public getViewToProjectionZ(F)F
    .locals 6
    .param p1, "viewZPos"    # F

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getFrustumFar()F

    move-result v2

    .line 1389
    .local v2, "far":F
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getFrustumNear()F

    move-result v3

    .line 1390
    .local v3, "near":F
    sub-float v4, v2, v3

    div-float v0, v2, v4

    .line 1391
    .local v0, "a":F
    mul-float v4, v2, v3

    sub-float v5, v3, v2

    div-float v1, v4, v5

    .line 1392
    .local v1, "b":F
    div-float v4, v1, p1

    add-float/2addr v4, v0

    return v4
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->width:I

    return v0
.end method

.method public getWorldCoordinates(Lcom/smartisanos/smengine/math/Vector2f;F)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "screenPos"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "projectionZPos"    # F

    .prologue
    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/smengine/Camera;->getWorldCoordinates(Lcom/smartisanos/smengine/math/Vector2f;FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getWorldCoordinates(Lcom/smartisanos/smengine/math/Vector2f;FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 8
    .param p1, "screenPosition"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "projectionZPos"    # F
    .param p3, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1417
    if-nez p3, :cond_0

    .line 1418
    new-instance p3, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1421
    .restart local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v2, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 1422
    .local v0, "inverseMat":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Matrix4f;->invertLocal()Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1424
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1425
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    iget v4, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v7

    sub-float/2addr v2, v6

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1426
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    iget v5, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    mul-float/2addr v3, v7

    sub-float/2addr v3, v6

    mul-float v4, p2, v7

    sub-float/2addr v4, v6

    .line 1424
    invoke-virtual {p3, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1429
    invoke-virtual {v0, p3, p3}, Lcom/smartisanos/smengine/math/Matrix4f;->multProj(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v1

    .line 1430
    .local v1, "w":F
    div-float v2, v6, v1

    invoke-virtual {p3, v2}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1432
    return-object p3
.end method

.method public isParallelProjection()Z
    .locals 1

    .prologue
    .line 1365
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    return v0
.end method

.method public isViewportChanged()Z
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->viewportChanged:Z

    return v0
.end method

.method public lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 12
    .param p1, "pos"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "worldUpVector"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v2, 0x0

    .line 878
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v11

    .line 879
    .local v11, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v8, v11, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 880
    .local v8, "newDirection":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v10, v11, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 881
    .local v10, "newUp":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v9, v11, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    .line 883
    .local v9, "newLeft":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v8, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 885
    invoke-virtual {v10, p2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 886
    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 890
    :cond_0
    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 891
    sget-object v0, Lcom/smartisanos/smengine/math/Vector3f;->ZERO:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 893
    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 899
    :cond_1
    :goto_0
    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 901
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, v9, v10, v8}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 902
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Quaternion;->normalizeLocal()Lcom/smartisanos/smengine/math/Quaternion;

    .line 903
    invoke-virtual {v11}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 905
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 907
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/Camera;->nLookAt(JFFFFFF)V

    .line 908
    return-void

    .line 895
    :cond_2
    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v1, v1

    invoke-virtual {v9, v2, v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0
.end method

.method public lookAtDirection(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 8
    .param p1, "direction"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "up"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/math/Quaternion;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 736
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 737
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/Camera;->nLookAtDirection(JFFFFFF)V

    .line 738
    return-void
.end method

.method public normalize()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Quaternion;->normalizeLocal()Lcom/smartisanos/smengine/math/Quaternion;

    .line 773
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 774
    return-void
.end method

.method public onViewPortChange()V
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->viewportChanged:Z

    .line 1233
    return-void
.end method

.method public resize(IIZ)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fixAspect"    # Z

    .prologue
    .line 477
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->width:I

    .line 478
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->height:I

    .line 479
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 481
    if-eqz p3, :cond_0

    .line 482
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 483
    iget v0, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 484
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 486
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/Camera;->nResize(JIIZ)V

    .line 487
    return-void
.end method

.method public setAxes(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 6
    .param p1, "axes"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 764
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 765
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/Camera;->nSetAxesWithQuaternion(JFFFF)V

    .line 766
    return-void
.end method

.method public setAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 11
    .param p1, "left"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "up"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "direction"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 752
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 753
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v8, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static/range {v0 .. v10}, Lcom/smartisanos/smengine/Camera;->nSetAxes(JFFFFFFFFF)V

    .line 754
    return-void
.end method

.method public setFrame(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 9
    .param p1, "location"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "axes"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    .line 920
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 921
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 922
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v8, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static/range {v0 .. v8}, Lcom/smartisanos/smengine/Camera;->nSetFrameWithQuaternion(JFFFFFFF)V

    .line 923
    return-void
.end method

.method public setFrame(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 18
    .param p1, "location"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "left"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "up"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "direction"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 860
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 863
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p1

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p2

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p2

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p3

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, p3

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p4

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, p4

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v17, v0

    invoke-static/range {v4 .. v17}, Lcom/smartisanos/smengine/Camera;->nSetFrame(JFFFFFFFFFFFF)V

    .line 864
    return-void
.end method

.method public setFrustum(FFFFFF)V
    .locals 8
    .param p1, "near"    # F
    .param p2, "far"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "bottom"    # F

    .prologue
    .line 791
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    .line 792
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    .line 793
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 794
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 795
    iput p5, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    .line 796
    iput p6, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    .line 798
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 799
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/Camera;->nSetFrustum(JFFFFFF)V

    .line 800
    return-void
.end method

.method public setFrustumBottom(F)V
    .locals 2
    .param p1, "frustumBottom"    # F

    .prologue
    .line 507
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    .line 508
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 509
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumBottom(JF)V

    .line 510
    return-void
.end method

.method public setFrustumFar(F)V
    .locals 2
    .param p1, "frustumFar"    # F

    .prologue
    .line 528
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    .line 529
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 530
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumFar(JF)V

    .line 531
    return-void
.end method

.method public setFrustumLeft(F)V
    .locals 2
    .param p1, "frustumLeft"    # F

    .prologue
    .line 549
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 550
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 551
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumLeft(JF)V

    .line 552
    return-void
.end method

.method public setFrustumNear(F)V
    .locals 2
    .param p1, "frustumNear"    # F

    .prologue
    .line 570
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    .line 571
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 572
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumNear(JF)V

    .line 573
    return-void
.end method

.method public setFrustumOrtho(FFFFFF)V
    .locals 8
    .param p1, "near"    # F
    .param p2, "far"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F
    .param p5, "top"    # F
    .param p6, "bottom"    # F

    .prologue
    .line 803
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    .line 804
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    .line 805
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 806
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 807
    iput p5, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    .line 808
    iput p6, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    .line 810
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 811
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/Camera;->nSetFrustumOrtho(JFFFFFF)V

    .line 812
    return-void
.end method

.method public setFrustumPerspective(FFFF)V
    .locals 8
    .param p1, "fovY"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    .prologue
    .line 825
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    sget-object v0, Lcom/smartisanos/smengine/Camera;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Invalid aspect given to setFrustumPerspective: {0}"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    :goto_0
    return-void

    .line 831
    :cond_1
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v0

    mul-float v6, v0, p3

    .line 832
    .local v6, "h":F
    mul-float v7, v6, p2

    .line 833
    .local v7, "w":F
    neg-float v0, v7

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumLeft:F

    .line 834
    iput v7, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 835
    neg-float v0, v6

    iput v0, p0, Lcom/smartisanos/smengine/Camera;->frustumBottom:F

    .line 836
    iput v6, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    .line 837
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    .line 838
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    .line 843
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 844
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/Camera;->nSetFrustumPerspective(JFFFF)V

    goto :goto_0
.end method

.method public setFrustumRight(F)V
    .locals 2
    .param p1, "frustumRight"    # F

    .prologue
    .line 591
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumRight:F

    .line 592
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 593
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumRight(JF)V

    .line 594
    return-void
.end method

.method public setFrustumTop(F)V
    .locals 2
    .param p1, "frustumTop"    # F

    .prologue
    .line 612
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->frustumTop:F

    .line 613
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 614
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetFrustumTop(JF)V

    .line 615
    return-void
.end method

.method public setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "location"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 706
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 707
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/Camera;->nSetLocation(JFFF)V

    .line 708
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/smartisanos/smengine/Camera;->name:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setParallelProjection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1375
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    .line 1376
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 1377
    return-void
.end method

.method public setPlaneState(I)V
    .locals 2
    .param p1, "planeState"    # I

    .prologue
    .line 957
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->planeState:I

    .line 958
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/Camera;->nSetPlaneState(JI)V

    .line 959
    return-void
.end method

.method public setRotation(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 6
    .param p1, "rot"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->rotation:Lcom/smartisanos/smengine/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 723
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 724
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/Camera;->nSetRotation(JFFFF)V

    .line 725
    return-void
.end method

.method public setViewPort(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F

    .prologue
    .line 1047
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    .line 1048
    iput p2, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    .line 1049
    iput p3, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    .line 1050
    iput p4, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    .line 1051
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 1052
    return-void
.end method

.method public setViewPortBottom(F)V
    .locals 0
    .param p1, "bottom"    # F

    .prologue
    .line 1034
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->viewPortBottom:F

    .line 1035
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 1036
    return-void
.end method

.method public setViewPortLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .prologue
    .line 977
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->viewPortLeft:F

    .line 978
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 979
    return-void
.end method

.method public setViewPortRight(F)V
    .locals 0
    .param p1, "right"    # F

    .prologue
    .line 996
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->viewPortRight:F

    .line 997
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 998
    return-void
.end method

.method public setViewPortTop(F)V
    .locals 0
    .param p1, "top"    # F

    .prologue
    .line 1015
    iput p1, p0, Lcom/smartisanos/smengine/Camera;->viewPortTop:F

    .line 1016
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 1017
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera(location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->location:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getDirection()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parallel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/smengine/Camera;->parallelProjection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", far="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/Camera;->frustumFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrustumChange()V

    .line 934
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->onViewPortChange()V

    .line 935
    invoke-direct {p0}, Lcom/smartisanos/smengine/Camera;->onFrameChange()V

    .line 936
    iget-wide v0, p0, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/Camera;->nUpdate(J)V

    .line 937
    return-void
.end method

.method public updateViewProjection()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrixOverride:Lcom/smartisanos/smengine/math/Matrix4f;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrixOverride:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1198
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Camera;->viewProjectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->projectionMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->set(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/Camera;->viewMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->multLocal(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0
.end method
