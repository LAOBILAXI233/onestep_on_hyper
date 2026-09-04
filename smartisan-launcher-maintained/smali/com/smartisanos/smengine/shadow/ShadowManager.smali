.class public Lcom/smartisanos/smengine/shadow/ShadowManager;
.super Ljava/lang/Object;
.source "ShadowManager.java"


.field public static TAG:Ljava/lang/String;

.field public static _surfaceIndex:J

.field private static mShadowManager:Lcom/smartisanos/smengine/shadow/ShadowManager;


.field count:I

.field private mCurrentSurfaceIndex_i:J

.field private mCurrentSurfaceIndex_v:J

.field private mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

.field private mDepthShadowMapDonorShader:Lcom/smartisanos/smengine/shadow/Shader;

.field private mDepthShadowMapDonorShader9Or16:Lcom/smartisanos/smengine/shadow/Shader;

.field private mEnable:Z

.field private mHasBeenInitedRect:Z

.field private mIndexBufferID:I

.field public mLastBlendable:Z

.field public mLastCullFaceMode:I

.field public mLastCullFaceable:Z

.field public mLastDepthTestable:Z

.field public mLastShaderProgramID:I

.field private mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMainCamera:Lcom/smartisanos/smengine/Camera;

.field private mMatrixData:[F

.field private mNoiseTextureImage:Lcom/smartisanos/smengine/shadow/TextureImage;

.field private mRectIndexBuffer:Ljava/nio/ShortBuffer;

.field private mRectIndexCount:I

.field private mRectVBuffer:Ljava/nio/FloatBuffer;

.field private mRectVertexCount:I

.field private mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

.field private mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

.field private mVertexBufferID:I

.field private mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private sWorker:Landroid/os/Handler;

.field private sWorkerThread:Landroid/os/HandlerThread;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "SceneManager"

    sput-object v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->TAG:Ljava/lang/String;

    .line 27
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 42
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexCount:I

    .line 46
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexCount:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVertexCount:I

    .line 48
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVertexCount:I

    mul-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mHasBeenInitedRect:Z

    .line 54
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mEnable:Z

    .line 146
    iput v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->count:I

    .line 247
    iput v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    .line 248
    iput-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_v:J

    .line 271
    iput v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    .line 272
    iput-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_i:J

    .line 64
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Matrix4f;->loadIdentity()V

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "scene-manager-post-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorkerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorker:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private bindRectIBO()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const v9, 0x8893

    const/4 v8, 0x0

    .line 275
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_i:J

    sget-wide v6, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 276
    iput v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    .line 277
    sget-wide v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_i:J

    .line 279
    :cond_0
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    if-ne v3, v10, :cond_1

    .line 280
    new-array v0, v11, [I

    .line 281
    .local v0, "bufferID":[I
    invoke-static {v11, v0, v8}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 282
    aget v3, v0, v8

    iput v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    .line 283
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 284
    iget-object v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    .line 285
    .local v2, "sb":Ljava/nio/ShortBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 287
    .local v1, "datasize":I
    const v3, 0x88e4

    invoke-static {v9, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 291
    .end local v0    # "bufferID":[I
    .end local v1    # "datasize":I
    .end local v2    # "sb":Ljava/nio/ShortBuffer;
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mIndexBufferID:I

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method

.method private bindRectVBO()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const v9, 0x8892

    const/4 v8, 0x0

    .line 251
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_v:J

    sget-wide v6, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 252
    iput v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    .line 253
    sget-wide v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v4, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mCurrentSurfaceIndex_v:J

    .line 256
    :cond_0
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    if-ne v3, v10, :cond_1

    .line 257
    new-array v0, v11, [I

    .line 258
    .local v0, "bufferID":[I
    invoke-static {v11, v0, v8}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 259
    aget v3, v0, v8

    iput v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    .line 260
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 261
    iget-object v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    .line 262
    .local v2, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v1, v3, 0x4

    .line 264
    .local v1, "datasize":I
    const v3, 0x88e8

    invoke-static {v9, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 269
    .end local v0    # "bufferID":[I
    .end local v1    # "datasize":I
    .end local v2    # "fb":Ljava/nio/FloatBuffer;
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v3, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mVertexBufferID:I

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method

.method private drawShadowMap(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "parent"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/mymaterial/Material;->getShowShadow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/shadow/ShadowManager;->renderToDepthBuffer(Lcom/smartisanos/smengine/SceneNode;)V

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v2

    .line 381
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 382
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 383
    .local v0, "child":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->drawShadowMap(Lcom/smartisanos/smengine/SceneNode;)V

    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "child":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowManager:Lcom/smartisanos/smengine/shadow/ShadowManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/smartisanos/smengine/shadow/ShadowManager;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/ShadowManager;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowManager:Lcom/smartisanos/smengine/shadow/ShadowManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowManager:Lcom/smartisanos/smengine/shadow/ShadowManager;

    return-object v0
.end method

.method private initRect()V
    .locals 13

    .prologue
    .line 159
    iget-boolean v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mHasBeenInitedRect:Z

    if-eqz v10, :cond_0

    .line 245
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mHasBeenInitedRect:Z

    .line 164
    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 165
    .local v5, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v3, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 167
    .local v3, "pageViewHeight":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v10

    .line 168
    .local v0, "distance":F
    add-float v10, v0, v3

    div-float v6, v10, v0

    .line 169
    .local v6, "u":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v10, v10

    mul-float v8, v10, v6

    .line 170
    .local v8, "w":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v10, v10

    mul-float v2, v10, v6

    .line 171
    .local v2, "h":F
    neg-float v9, v3

    .line 172
    .local v9, "z":F
    const v10, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v10

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, "vertexIndex":I
    mul-int/lit8 v4, v7, 0xc

    .line 176
    .local v4, "posOffset":I
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    neg-float v11, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    neg-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 179
    add-int/lit8 v4, v4, 0x1

    .line 180
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v4, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    const/4 v7, 0x1

    .line 183
    mul-int/lit8 v4, v7, 0xc

    .line 184
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v8, v11

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 186
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    neg-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 188
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v4, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 190
    const/4 v7, 0x2

    .line 191
    mul-int/lit8 v4, v7, 0xc

    .line 192
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v8, v11

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v4, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 198
    const/4 v7, 0x3

    .line 199
    mul-int/lit8 v4, v7, 0xc

    .line 200
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    neg-float v11, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v4, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 206
    const/4 v7, 0x0

    .line 207
    const/4 v10, 0x0

    add-int/lit8 v4, v10, 0x6

    .line 208
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 209
    add-int/lit8 v4, v4, 0x1

    .line 210
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 212
    const/4 v7, 0x1

    .line 213
    const/16 v10, 0xc

    add-int/lit8 v4, v10, 0x6

    .line 214
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 216
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 218
    const/4 v7, 0x2

    .line 219
    const/16 v10, 0x18

    add-int/lit8 v4, v10, 0x6

    .line 220
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 224
    const/4 v7, 0x3

    .line 225
    const/16 v10, 0x24

    add-int/lit8 v4, v10, 0x6

    .line 226
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectVBuffer:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v4, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "faceIndex":I
    mul-int/lit8 v4, v1, 0x3

    .line 232
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 234
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x1

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x2

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 238
    const/4 v1, 0x1

    .line 239
    mul-int/lit8 v4, v1, 0x3

    .line 240
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x2

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 242
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x3

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 244
    iget-object v10, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/16 :goto_0
.end method


.method public beginDrawShadowMap()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x200

    .line 91
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    if-nez v6, :cond_0

    .line 92
    new-instance v6, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    invoke-direct {v6, v10, v10}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;-><init>(II)V

    iput-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    .line 94
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 95
    .local v4, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v2, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 96
    .local v2, "pageViewHeight":F
    iget v6, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float v7, v2, v8

    add-float v5, v6, v7

    .line 97
    .local v5, "y":F
    neg-float v6, v5

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float v3, v6, v7

    .line 98
    .local v3, "pageY":F
    new-instance v6, Lcom/smartisanos/smengine/Camera;

    invoke-direct {v6, v10, v10}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    .line 99
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    const v7, 0x454e4000    # 3300.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v1, v6

    .line 100
    .local v1, "fovY":F
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    const/high16 v7, 0x44fa0000    # 2000.0f

    const v8, 0x459c4000    # 5000.0f

    invoke-virtual {v6, v1, v13, v7, v8}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 101
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v8, 0x43160000    # 150.0f

    const v9, 0x454e4000    # 3300.0f

    invoke-direct {v7, v8, v3, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 102
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7, v11, v3, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v11, v13, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 105
    .end local v1    # "fovY":F
    .end local v2    # "pageViewHeight":F
    .end local v3    # "pageY":F
    .end local v4    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v5    # "y":F
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    .line 106
    .local v0, "cm":Lcom/smartisanos/smengine/CameraManager;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    .line 107
    const-string v6, "mainCamera"

    iget-object v7, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v6, v7}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 108
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/CameraManager;->setCurrentCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 110
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->create()V

    .line 111
    iget-object v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->bind()V

    .line 112
    invoke-static {v12, v12, v10, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 113
    const/4 v6, -0x1

    iput v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastShaderProgramID:I

    .line 114
    iput-boolean v12, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastBlendable:Z

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastDepthTestable:Z

    .line 116
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceable:Z

    .line 117
    const/16 v6, 0x405

    iput v6, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceMode:I

    .line 118
    const/16 v6, 0xbe2

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 119
    const/16 v6, 0xb71

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 120
    const/16 v6, 0xb44

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 121
    const/16 v6, 0x405

    invoke-static {v6}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 123
    return-void
.end method

.method public bindNoiseTexture(I)V
    .locals 2
    .param p1, "texture"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mNoiseTextureImage:Lcom/smartisanos/smengine/shadow/TextureImage;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/TextureImage;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mNoiseTextureImage:Lcom/smartisanos/smengine/shadow/TextureImage;

    .line 81
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mNoiseTextureImage:Lcom/smartisanos/smengine/shadow/TextureImage;

    const-string v1, "noise.png"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/shadow/TextureImage;->setAssetPath(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mNoiseTextureImage:Lcom/smartisanos/smengine/shadow/TextureImage;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/shadow/TextureImage;->bind(I)Z

    .line 84
    return-void
.end method

.method public drawShadowMap()V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mEnable:Z

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->beginDrawShadowMap()V

    .line 371
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->drawShadowMap(Lcom/smartisanos/smengine/SceneNode;)V

    .line 372
    invoke-virtual {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->endDrawShadowMap()V

    .line 373
    invoke-virtual {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->drawShadowRect()V

    goto :goto_0
.end method

.method public drawShadowRect()V
    .locals 14

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x30

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 294
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->initRect()V

    .line 295
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    .line 298
    :cond_0
    const/4 v6, 0x0

    .line 299
    .local v6, "empty":Lcom/smartisanos/smengine/SceneNode;
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    .line 300
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 302
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    const v1, 0x84c0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->bindTexture(I)V

    .line 303
    const v0, 0x84c1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->bindNoiseTexture(I)V

    .line 304
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->getTexture0Handle()I

    move-result v0

    invoke-static {v0, v3}, Lcom/smartisanos/smengine/shadow/Shader;->setUniform(II)V

    .line 305
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->getTexture1Handle()I

    move-result v0

    invoke-static {v0, v13}, Lcom/smartisanos/smengine/shadow/Shader;->setUniform(II)V

    .line 307
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    invoke-virtual {v0, v1, v12}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v9

    .line 308
    .local v9, "mainCamera":Lcom/smartisanos/smengine/Camera;
    invoke-virtual {v9}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v11

    .line 309
    .local v11, "w":I
    invoke-virtual {v9}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v7

    .line 310
    .local v7, "h":I
    invoke-static {v3, v3, v11, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 312
    invoke-virtual {v9}, Lcom/smartisanos/smengine/Camera;->getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v10

    .line 313
    .local v10, "vp":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v10, v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 315
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    if-nez v0, :cond_1

    .line 316
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 319
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->getMVPMatrixHandle()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-static {v0, v13, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 321
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 322
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->getWorldMatrixHandle()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-static {v0, v13, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 324
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 325
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowRectShader:Lcom/smartisanos/smengine/shadow/ShadowRectShader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->getShadowMapMatrixHandle()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMatrixData:[F

    invoke-static {v0, v13, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 327
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->bindRectVBO()V

    .line 328
    const/4 v5, 0x0

    .line 329
    .local v5, "offsetByte":I
    sget v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_POSITION:I

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 330
    sget v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_POSITION:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 332
    const/16 v5, 0x18

    .line 333
    sget v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_TEX_COORD:I

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 334
    sget v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_TEX_COORD:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 336
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/ShadowManager;->bindRectIBO()V

    .line 337
    iget v8, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mRectIndexCount:I

    .line 338
    .local v8, "indexSize":I
    const/4 v0, 0x4

    const/16 v1, 0x1403

    invoke-static {v0, v8, v1, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 340
    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 341
    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 342
    return-void
.end method

.method public enableShadow(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mEnable:Z

    .line 76
    return-void
.end method

.method public enableShadow()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mEnable:Z

    return v0
.end method

.method public endDrawShadowMap()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthRenderTarget:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->unBind()V

    .line 153
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    .line 154
    .local v0, "cm":Lcom/smartisanos/smengine/CameraManager;
    const-string v1, "mainCamera"

    iget-object v2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 155
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/CameraManager;->setCurrentCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 156
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 87
    sget-wide v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    .line 88
    return-void
.end method

.method public postTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/smengine/shadow/ShadowManager$2;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/smengine/shadow/ShadowManager$2;-><init>(Lcom/smartisanos/smengine/shadow/ShadowManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public postTask(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 345
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/smengine/shadow/ShadowManager$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/smengine/shadow/ShadowManager$1;-><init>(Lcom/smartisanos/smengine/shadow/ShadowManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method

.method public renderToDepthBuffer(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2
    .param p1, "ru"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setNativeData(Lcom/smartisanos/smengine/Camera;)V

    .line 127
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 129
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/Material;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleTextureDirLightMaterial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader:Lcom/smartisanos/smengine/shadow/Shader;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader:Lcom/smartisanos/smengine/shadow/Shader;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader:Lcom/smartisanos/smengine/shadow/Shader;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/shadow/Shader;->apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader9Or16:Lcom/smartisanos/smengine/shadow/Shader;

    if-nez v0, :cond_2

    .line 136
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 137
    new-instance v0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader9;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader9;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader9Or16:Lcom/smartisanos/smengine/shadow/Shader;

    .line 142
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader9Or16:Lcom/smartisanos/smengine/shadow/Shader;

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mShadowMapCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/shadow/Shader;->apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader16;

    invoke-direct {v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader16;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager;->mDepthShadowMapDonorShader9Or16:Lcom/smartisanos/smengine/shadow/Shader;

    goto :goto_1
.end method
