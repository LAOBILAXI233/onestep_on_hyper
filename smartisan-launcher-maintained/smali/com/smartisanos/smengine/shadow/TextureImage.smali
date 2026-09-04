.class public Lcom/smartisanos/smengine/shadow/TextureImage;
.super Ljava/lang/Object;
.source "TextureImage.java"


.field private mAssetPath:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCubeAssetPaths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCubeBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCubeFilePaths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSurfaceIndex:J

.field private mFilePath:Ljava/lang/String;

.field private mIsCubeMap:Z

.field private mTextureID:I

.field private onTaskRunning:Z


.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 25
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mIsCubeMap:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCurrentSurfaceIndex:J

    .line 94
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 25
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mIsCubeMap:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCurrentSurfaceIndex:J

    .line 94
    iput-boolean v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    .line 35
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/smartisanos/smengine/shadow/TextureImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mAssetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/smengine/shadow/TextureImage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/smengine/shadow/TextureImage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/smengine/shadow/TextureImage;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$500(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeAssetPaths:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/smengine/shadow/TextureImage;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/TextureImage;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeFilePaths:Landroid/util/SparseArray;

    return-object v0
.end method

.method private loadCubeImageBitmaps()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeAssetPaths:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeFilePaths:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    .line 146
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/smengine/shadow/TextureImage$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/shadow/TextureImage$2;-><init>(Lcom/smartisanos/smengine/shadow/TextureImage;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/shadow/ShadowManager;->postTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadImageBitmap()V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mAssetPath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->onTaskRunning:Z

    .line 101
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/smengine/shadow/TextureImage$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/shadow/TextureImage$1;-><init>(Lcom/smartisanos/smengine/shadow/TextureImage;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/shadow/ShadowManager;->postTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


.method public bind(I)Z
    .locals 11
    .param p1, "texture"    # I

    .prologue
    const/4 v3, 0x1

    const v10, 0x8513

    const/16 v9, 0xde1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 39
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCurrentSurfaceIndex:J

    sget-wide v6, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 40
    iput v8, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 41
    sget-wide v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v4, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCurrentSurfaceIndex:J

    .line 43
    :cond_0
    iget-boolean v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mIsCubeMap:Z

    if-nez v1, :cond_4

    .line 45
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-ne v1, v8, :cond_1

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 46
    new-array v0, v3, [I

    .line 47
    .local v0, "textures":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 48
    aget v1, v0, v2

    iput v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 49
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v9, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 51
    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v9, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 52
    const/16 v1, 0x2802

    const/16 v4, 0x2901

    invoke-static {v9, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 53
    const/16 v1, 0x2803

    const/16 v4, 0x2901

    invoke-static {v9, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 54
    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 56
    .end local v0    # "textures":[I
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-eq v1, v8, :cond_3

    .line 57
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_2
    :goto_0
    move v1, v3

    .line 91
    :goto_1
    return v1

    .line 59
    :cond_3
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/TextureImage;->loadImageBitmap()V

    move v1, v2

    .line 61
    goto :goto_1

    .line 64
    :cond_4
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-ne v1, v8, :cond_5

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_5

    .line 65
    new-array v0, v3, [I

    .line 66
    .restart local v0    # "textures":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 67
    aget v1, v0, v2

    iput v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 68
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 70
    const v4, 0x8515

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x8515

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 71
    const v4, 0x8516

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x8516

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 72
    const v4, 0x8517

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x8517

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 73
    const v4, 0x8518

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x8518

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 74
    const v4, 0x8519

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x8519

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 75
    const v4, 0x851a

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    const v5, 0x851a

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 77
    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v10, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 78
    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v10, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 79
    const/16 v1, 0x2802

    const/16 v4, 0x2901

    invoke-static {v10, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    const/16 v1, 0x2803

    const/16 v4, 0x2901

    invoke-static {v10, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 83
    .end local v0    # "textures":[I
    :cond_5
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-eq v1, v8, :cond_6

    .line 84
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 85
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_0

    .line 86
    :cond_6
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    if-ne v1, v8, :cond_2

    iget-object v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeBitmaps:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/TextureImage;->loadCubeImageBitmaps()V

    move v1, v2

    .line 88
    goto/16 :goto_1
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 224
    iget v3, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mTextureID:I

    .line 225
    .local v3, "textureID":I
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCurrentSurfaceIndex:J

    .line 226
    .local v4, "surfaceIndex":J
    new-instance v0, Lcom/smartisanos/smengine/shadow/TextureImage$3;

    const/16 v2, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/shadow/TextureImage$3;-><init>(Lcom/smartisanos/smengine/shadow/TextureImage;IIJ)V

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/shadow/TextureImage$3;->send(F)V

    .line 236
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 238
    return-void
.end method

.method public setAssetPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mAssetPath:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setCubeAssetPath(ILjava/lang/String;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mIsCubeMap:Z

    .line 208
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeAssetPaths:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeAssetPaths:Landroid/util/SparseArray;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeAssetPaths:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method public setCubeFilePath(ILjava/lang/String;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mIsCubeMap:Z

    .line 216
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeFilePaths:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeFilePaths:Landroid/util/SparseArray;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mCubeFilePaths:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage;->mFilePath:Ljava/lang/String;

    .line 204
    return-void
.end method
