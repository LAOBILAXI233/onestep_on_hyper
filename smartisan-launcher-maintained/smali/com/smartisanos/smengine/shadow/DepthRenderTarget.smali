.class public Lcom/smartisanos/smengine/shadow/DepthRenderTarget;
.super Ljava/lang/Object;
.source "DepthRenderTarget.java"


.field private mCurrentSurfaceIndex:J

.field private mFrameBufferID:I

.field private mHeight:I

.field private mRenderBufferID:I

.field public mTextureID:I

.field private mWidth:I


.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    .line 17
    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    .line 18
    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mRenderBufferID:I

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mCurrentSurfaceIndex:J

    .line 22
    iput p1, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mWidth:I

    .line 23
    iput p2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mHeight:I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/shadow/DepthRenderTarget;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    .prologue
    .line 13
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mRenderBufferID:I

    return v0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdcard/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 127
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    throw v3

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 123
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


.method public bind()V
    .locals 2

    .prologue
    .line 84
    const v0, 0x8d40

    iget v1, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 85
    return-void
.end method

.method public bindTexture(I)V
    .locals 2
    .param p1, "texture"    # I

    .prologue
    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    const/16 v0, 0xde1

    iget v1, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 90
    return-void
.end method

.method public create()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x8d40

    const/4 v6, -0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 27
    iget-wide v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mCurrentSurfaceIndex:J

    sget-wide v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 28
    iput v6, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    .line 29
    iput v6, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    .line 30
    iput v6, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mRenderBufferID:I

    .line 31
    sget-wide v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mCurrentSurfaceIndex:J

    .line 33
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    if-ne v2, v6, :cond_2

    .line 59
    :cond_1
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 60
    .local v10, "textures":[I
    const/4 v2, 0x1

    invoke-static {v2, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 61
    aget v2, v10, v1

    iput v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    .line 62
    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 63
    const/16 v2, 0x1902

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mWidth:I

    iget v4, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mHeight:I

    const/16 v6, 0x1902

    const/16 v7, 0x1403

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 65
    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 66
    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 67
    const/16 v2, 0x2802

    const/16 v3, 0x2901

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 68
    const/16 v2, 0x2803

    const/16 v3, 0x2901

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 69
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 70
    .local v9, "framebuffer":[I
    const/4 v2, 0x1

    invoke-static {v2, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 71
    aget v2, v9, v1

    iput v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    .line 72
    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 73
    const v2, 0x8d00

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    invoke-static {v11, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 74
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 76
    .end local v9    # "framebuffer":[I
    .end local v10    # "textures":[I
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 77
    invoke-static {v12, v12, v12, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 78
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 79
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 80
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 81
    return-void
.end method

.method protected finalize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    iget v6, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mTextureID:I

    .line 132
    .local v6, "textureID":I
    iget v7, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    .line 133
    .local v7, "frameBufferID":I
    iget v8, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mRenderBufferID:I

    .line 134
    .local v8, "renderBufferID":I
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mCurrentSurfaceIndex:J

    .line 135
    .local v4, "surfaceIndex":J
    new-instance v1, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;

    const/16 v3, 0x64

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;-><init>(Lcom/smartisanos/smengine/shadow/DepthRenderTarget;IJIII)V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->send(F)V

    .line 155
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 157
    return-void
.end method

.method public readPixel()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 98
    iget v1, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mWidth:I

    .line 102
    .local v2, "w":I
    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mHeight:I

    .line 103
    .local v3, "h":I
    mul-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    .line 104
    .local v8, "data":[B
    array-length v1, v8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 105
    .local v6, "fb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    const v1, 0x8d40

    iget v4, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->mFrameBufferID:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 107
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 108
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 109
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 110
    const-string v0, "readPixel.png"

    invoke-static {v0, v7}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public unBind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const v0, 0x8d40

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 94
    const/16 v0, 0xde1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 95
    return-void
.end method
