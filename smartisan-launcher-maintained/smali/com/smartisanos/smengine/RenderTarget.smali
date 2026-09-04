.class public Lcom/smartisanos/smengine/RenderTarget;
.super Ljava/lang/Object;
.source "RenderTarget.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/RenderTarget$UV;
    }
.end annotation


.field private mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mCreateDepthBuffer:Z

.field private mCreateOK:Z

.field private mCreateStencilBuffer:Z

.field private mDepthRenderBuffer:I

.field private mDepthStencilTexID:I

.field private mFrameBufferID:I

.field private mGenMipmap:Z

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mStencilRenderBuffer:I

.field private mSurface:Landroid/view/Surface;

.field private mTexID:I

.field private mTextureState:Lcom/smartisanos/smengine/Texture$State;

.field private mUseDepthStencilTex:Z

.field private mUseMipmap:Z

.field private mWidth:I


.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 27
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 28
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 29
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 30
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 31
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 32
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    .line 33
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 55
    iput p2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    .line 56
    iput p3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    .line 57
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderTarget;->mName:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    .line 59
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    .line 60
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "bCreateDepthBuffer"    # Z
    .param p5, "bCreateStencilBuffer"    # Z
    .param p6, "useDepthStencilTex"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 27
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 28
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 29
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 30
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 31
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 32
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    .line 33
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 63
    iput p2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    .line 64
    iput p3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    .line 65
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderTarget;->mName:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    .line 67
    iput-boolean p5, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    .line 68
    iput-boolean p6, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/Surface;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 27
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 28
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 29
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 30
    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 31
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 32
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    .line 33
    new-instance v0, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    .line 36
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 71
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderTarget;->mName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/smartisanos/smengine/RenderTarget;->mSurface:Landroid/view/Surface;

    .line 73
    iput p3, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    .line 74
    iput p4, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    .line 75
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    .line 76
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    .line 77
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    .line 78
    return-void
.end method


.method public bind()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    const v0, 0x8d40

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0
.end method

.method public clearRenderTarget()V
    .locals 5

    .prologue
    const v4, 0x8d40

    .line 282
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 286
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 287
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 288
    const/4 v0, 0x0

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0
.end method

.method public create()V
    .locals 14

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    new-array v13, v0, [I

    .line 136
    .local v13, "texID":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v13, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 137
    const-string v0, "texImage"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    aget v0, v13, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 139
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 140
    const/16 v0, 0xde1

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 142
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 143
    const-string v0, "texImage"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 148
    :goto_1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    if-eqz v0, :cond_5

    .line 149
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 150
    const-string v0, "miapmap"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x3

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 152
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 153
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 154
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 161
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    invoke-static {v0}, Lcom/smartisanos/smengine/Texture;->setTextureState(Lcom/smartisanos/smengine/Texture$State;)V

    .line 163
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    if-eqz v0, :cond_8

    .line 164
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_6

    .line 165
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 166
    .local v10, "myTexID":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 167
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 168
    const/16 v0, 0xde1

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 169
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const v2, 0x88f0

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    const/4 v5, 0x0

    const v6, 0x84f9

    const v7, 0x84fa

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 170
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 171
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 172
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 173
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 211
    .end local v10    # "myTexID":[I
    :cond_1
    :goto_3
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 212
    .local v9, "framebuffer":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 213
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 214
    const v0, 0x8d40

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 215
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 216
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseDepthStencilTex:Z

    if-eqz v0, :cond_d

    .line 228
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_b

    .line 229
    const v0, 0x8d40

    const v1, 0x8d00

    const/16 v2, 0xde1

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 230
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 231
    const v0, 0x8d40

    const v1, 0x8d20

    const/16 v2, 0xde1

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 232
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 253
    :cond_2
    :goto_4
    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v12

    .line 254
    .local v12, "status":I
    const v0, 0x8cd5

    if-ne v12, v0, :cond_10

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 263
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 265
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 267
    :cond_3
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto/16 :goto_0

    .line 146
    .end local v9    # "framebuffer":[I
    .end local v12    # "status":I
    :cond_4
    const-string v0, "native bind surface as texture target"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 157
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 158
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 159
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    goto/16 :goto_2

    .line 174
    :cond_6
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-nez v0, :cond_7

    .line 175
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 176
    .restart local v10    # "myTexID":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 178
    const/16 v0, 0xde1

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1902

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1902

    const/16 v7, 0x1403

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 180
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 181
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2600

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 183
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto/16 :goto_3

    .line 185
    .end local v10    # "myTexID":[I
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support only stencil texture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_8
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_9

    .line 189
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 190
    .local v11, "renderBuffer":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 191
    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 192
    const v0, 0x8d41

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 193
    const v0, 0x8d41

    const v1, 0x88f0

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 194
    const-string v0, "glRenderbufferStorage"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    .end local v11    # "renderBuffer":[I
    :cond_9
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-nez v0, :cond_a

    .line 196
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 197
    .restart local v11    # "renderBuffer":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 198
    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 199
    const v0, 0x8d41

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 200
    const v0, 0x8d41

    const v1, 0x81a5

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    goto/16 :goto_3

    .line 201
    .end local v11    # "renderBuffer":[I
    :cond_a
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_1

    .line 202
    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 203
    .restart local v11    # "renderBuffer":[I
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v11, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 204
    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 205
    const v0, 0x8d41

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 206
    const v0, 0x8d41

    const v1, 0x8d48

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 207
    const-string v0, "glRenderbufferStorage"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 233
    .end local v11    # "renderBuffer":[I
    .restart local v9    # "framebuffer":[I
    :cond_b
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-nez v0, :cond_c

    .line 234
    const v0, 0x8d40

    const v1, 0x8d00

    const/16 v2, 0xde1

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 235
    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 236
    :cond_c
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support only stencil texture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_d
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_e

    .line 241
    const v0, 0x8d40

    const v1, 0x8d00

    const v2, 0x8d41

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 242
    const-string v0, "glFramebufferRenderbuffer"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 243
    const v0, 0x8d40

    const v1, 0x8d20

    const v2, 0x8d41

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 244
    const-string v0, "glFramebufferRenderbuffer"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 245
    :cond_e
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-nez v0, :cond_f

    .line 246
    const v0, 0x8d40

    const v1, 0x8d00

    const v2, 0x8d41

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 247
    const-string v0, "glFramebufferRenderbuffer"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 248
    :cond_f
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateDepthBuffer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateStencilBuffer:Z

    if-eqz v0, :cond_2

    .line 249
    const v0, 0x8d40

    const v1, 0x8d20

    const v2, 0x8d41

    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 250
    const-string v0, "glFramebufferRenderbuffer"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 257
    .restart local v12    # "status":I
    :cond_10
    const-string v0, "LauncherSmartisanNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const v0, 0x8cdd

    if-ne v12, v0, :cond_11

    .line 259
    const-string v0, "LauncherSmartisanNew"

    const-string v1, "### UNSUPPORT ##"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not create frame buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Z)V
    .locals 8
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 313
    if-nez p1, :cond_0

    .line 314
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 315
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 316
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 317
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 318
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 319
    iput-boolean v6, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 368
    :goto_0
    return-void

    .line 322
    :cond_0
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    if-ne v4, v5, :cond_1

    .line 324
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    .line 325
    iput-boolean v6, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 326
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 327
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 328
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    goto :goto_0

    .line 331
    :cond_1
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    if-eq v4, v5, :cond_2

    .line 332
    new-array v2, v7, [I

    .line 333
    .local v2, "renderBuffer":[I
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    aput v4, v2, v6

    .line 334
    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 335
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthRenderBuffer:I

    .line 337
    .end local v2    # "renderBuffer":[I
    :cond_2
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    if-eq v4, v5, :cond_3

    .line 338
    new-array v2, v7, [I

    .line 339
    .restart local v2    # "renderBuffer":[I
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    aput v4, v2, v6

    .line 340
    invoke-static {v7, v2, v6}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 341
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mStencilRenderBuffer:I

    .line 343
    .end local v2    # "renderBuffer":[I
    :cond_3
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    if-eq v4, v5, :cond_4

    .line 344
    new-array v1, v7, [I

    .line 345
    .local v1, "myTex":[I
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    aput v4, v1, v6

    .line 346
    invoke-static {v7, v1, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 347
    const-string v4, "glDeleteTexture attached to FrameBuffer"

    invoke-static {v4}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 349
    .end local v1    # "myTex":[I
    :cond_4
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    .line 350
    new-array v0, v7, [I

    .line 351
    .local v0, "fb":[I
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    aput v4, v0, v6

    .line 352
    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 353
    const-string v4, "glDeleteFramebuffer"

    invoke-static {v4}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 354
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    .line 355
    iput-boolean v6, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    .line 356
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_5

    .line 357
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mSurface:Landroid/view/Surface;

    .line 359
    :cond_5
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    if-eq v4, v5, :cond_6

    .line 361
    new-array v3, v7, [I

    .line 362
    .local v3, "txb":[I
    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    aput v4, v3, v6

    .line 364
    invoke-static {v7, v3, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 365
    const-string v4, "glDeleteTexture attached to FrameBuffer"

    invoke-static {v4}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 367
    .end local v3    # "txb":[I
    :cond_6
    iput v5, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    goto :goto_0
.end method

.method public genMipmap()V
    .locals 2

    .prologue
    const/16 v1, 0xde1

    .line 107
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mGenMipmap:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mGenMipmap:Z

    .line 109
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 110
    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 111
    const-string v0, "miapmap"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public getDepthTexID()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStencilTexID()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mDepthStencilTexID:I

    return v0
.end method

.method public getTexID()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    return v0
.end method

.method public getUV(II)Lcom/smartisanos/smengine/RenderTarget$UV;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewPort()Lcom/smartisanos/smengine/ViewPort;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    return-object v0
.end method

.method public getViewPort(II)Lcom/smartisanos/smengine/ViewPort;
    .locals 4
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 306
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    return v0
.end method

.method public isGenMipmap()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mGenMipmap:Z

    return v0
.end method

.method public isUseMipmap()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    return v0
.end method

.method public isValidTexID()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readPixel()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 115
    iget v1, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    .line 119
    .local v2, "w":I
    iget v3, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    .line 120
    .local v3, "h":I
    mul-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x4

    new-array v8, v1, [B

    .line 121
    .local v8, "data":[B
    array-length v1, v8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 122
    .local v6, "fb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    const v1, 0x8d40

    iget v4, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 124
    const-string v1, "bindframebuffer"

    invoke-static {v1}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 125
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 126
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 128
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 129
    const-string v0, "readPixel.png"

    invoke-static {v0, v7}, Lcom/smartisanos/smengine/Image;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setClearColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 81
    return-void
.end method

.method public setGenMipmap(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderTarget;->mGenMipmap:Z

    .line 87
    return-void
.end method

.method public setTextureBufferState(IIII)V
    .locals 1
    .param p1, "minFilter"    # I
    .param p2, "magFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iput p3, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    .line 102
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iput p4, v0, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    .line 103
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iput p1, v0, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    .line 104
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iput p2, v0, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    .line 105
    return-void
.end method

.method public setUseMipmap(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    .line 93
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    .line 96
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const-string v0, ""

    .line 48
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mTexID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mTexID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mFrameBufferID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mFrameBufferID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mCreateOK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mCreateOK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mUseMipmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mUseMipmap:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mTextureState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iget v2, v2, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iget v2, v2, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iget v2, v2, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mTextureState:Lcom/smartisanos/smengine/Texture$State;

    iget v2, v2, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mClearColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderTarget;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 51
    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector4f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 279
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 280
    return-void
.end method
