.class public abstract Lcom/smartisanos/smengine/shadow/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


.field public static VERTEX_ATTRIB_COLOR:I

.field public static VERTEX_ATTRIB_NORMAL:I

.field public static VERTEX_ATTRIB_POSITION:I

.field public static VERTEX_ATTRIB_TEX_COORD:I


.field protected mAmbientLightSourceColor:I

.field protected mColorHandle:I

.field protected mCurrentSurfaceIndex:J

.field protected mDirLightSourceColor:I

.field protected mDirLightSourceDirection:I

.field protected mMVPMatrixHandle:I

.field protected mMatrixArrayHandle:I

.field protected mMatrixArrayIndexHandle:I

.field protected mNormalHandle:I

.field protected mPointLightSourceColor:I

.field protected mPointLightSourcePosition:I

.field protected mPointLightSourceRangeInverse:I

.field protected mPositionHandle:I

.field protected mProgramID:I

.field protected mSMMVPMatrixHandle:I

.field protected mSpotLightSourceColor:I

.field protected mSpotLightSourceDirection:I

.field protected mSpotLightSourceInnerAngleCos:I

.field protected mSpotLightSourceOuterAngleCos:I

.field protected mSpotLightSourcePosition:I

.field protected mSpotLightSourceRangeInverse:I

.field protected mTexCoordHandle:I

.field protected mTexture0Handle:I

.field protected mTexture1Handle:I

.field protected mTexture2Handle:I

.field protected mUseTextureHandle:I

.field protected mWorldMatrixHandle:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_POSITION:I

    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_NORMAL:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_TEX_COORD:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mCurrentSurfaceIndex:J

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    .line 19
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture0Handle:I

    .line 20
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture1Handle:I

    .line 21
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture2Handle:I

    .line 22
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mUseTextureHandle:I

    .line 26
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSMMVPMatrixHandle:I

    .line 27
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMVPMatrixHandle:I

    .line 28
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mWorldMatrixHandle:I

    .line 29
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMatrixArrayHandle:I

    .line 30
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMatrixArrayIndexHandle:I

    .line 31
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPositionHandle:I

    .line 32
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mNormalHandle:I

    .line 33
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexCoordHandle:I

    .line 34
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mColorHandle:I

    .line 39
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourcePosition:I

    .line 40
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourcePosition:I

    .line 41
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mDirLightSourceColor:I

    .line 42
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mDirLightSourceDirection:I

    .line 43
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourceColor:I

    .line 44
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourceRangeInverse:I

    .line 45
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceColor:I

    .line 46
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceDirection:I

    .line 47
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceInnerAngleCos:I

    .line 48
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceOuterAngleCos:I

    .line 49
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceRangeInverse:I

    .line 50
    iput v2, p0, Lcom/smartisanos/smengine/shadow/Shader;->mAmbientLightSourceColor:I

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 0
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 220
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 199
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 200
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 201
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 202
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 203
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 204
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 205
    sget-object v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 208
    const/4 v1, 0x0

    .line 211
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method public static setUniform(IF)V
    .locals 0
    .param p0, "location"    # I
    .param p1, "data"    # F

    .prologue
    .line 227
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 228
    return-void
.end method

.method public static setUniform(II)V
    .locals 0
    .param p0, "location"    # I
    .param p1, "data"    # I

    .prologue
    .line 223
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 224
    return-void
.end method

.method public static setUniform(II[FI)V
    .locals 1
    .param p0, "uniformType"    # I
    .param p1, "location"    # I
    .param p2, "data"    # [F
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 252
    sparse-switch p0, :sswitch_data_0

    .line 275
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 278
    :goto_0
    return-void

    .line 254
    :sswitch_0
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_0

    .line 257
    :sswitch_1
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_0

    .line 260
    :sswitch_2
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_0

    .line 263
    :sswitch_3
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    goto :goto_0

    .line 266
    :sswitch_4
    invoke-static {p1, p3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    goto :goto_0

    .line 269
    :sswitch_5
    invoke-static {p1, p3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    goto :goto_0

    .line 272
    :sswitch_6
    invoke-static {p1, p3, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x1406 -> :sswitch_0
        0x8b50 -> :sswitch_1
        0x8b51 -> :sswitch_2
        0x8b52 -> :sswitch_3
        0x8b5a -> :sswitch_4
        0x8b5b -> :sswitch_5
        0x8b5c -> :sswitch_6
    .end sparse-switch
.end method

.method public static setUniform(II[II)V
    .locals 1
    .param p0, "uniformType"    # I
    .param p1, "location"    # I
    .param p2, "data"    # [I
    .param p3, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 231
    sparse-switch p0, :sswitch_data_0

    .line 245
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 248
    :goto_0
    return-void

    .line 233
    :sswitch_0
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    goto :goto_0

    .line 239
    :sswitch_2
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    goto :goto_0

    .line 242
    :sswitch_3
    invoke-static {p1, p3, p2, v0}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_0
        0x8b53 -> :sswitch_1
        0x8b54 -> :sswitch_2
        0x8b55 -> :sswitch_3
    .end sparse-switch
.end method


.method public apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "ru"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 158
    return-void
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 161
    const v5, 0x8b31

    invoke-static {v5, p1}, Lcom/smartisanos/smengine/shadow/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 162
    .local v3, "vertexShader":I
    if-nez v3, :cond_0

    move v2, v4

    .line 193
    :goto_0
    return v2

    .line 166
    :cond_0
    const v5, 0x8b30

    invoke-static {v5, p2}, Lcom/smartisanos/smengine/shadow/Shader;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "pixelShader":I
    if-nez v1, :cond_1

    move v2, v4

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 172
    .local v2, "program":I
    if-eqz v2, :cond_2

    .line 173
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 174
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/smartisanos/smengine/shadow/Shader;->checkGlError(Ljava/lang/String;)V

    .line 175
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 176
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/smartisanos/smengine/shadow/Shader;->checkGlError(Ljava/lang/String;)V

    .line 177
    sget v5, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_POSITION:I

    const-string v6, "aPosition"

    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 178
    sget v5, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_NORMAL:I

    const-string v6, "aNormal"

    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 179
    sget v5, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_TEX_COORD:I

    const-string v6, "aTextureCoord"

    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 180
    sget v5, Lcom/smartisanos/smengine/shadow/Shader;->VERTEX_ATTRIB_COLOR:I

    const-string v6, "aColor"

    invoke-static {v2, v5, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 181
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 182
    new-array v0, v7, [I

    .line 183
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 184
    aget v4, v0, v4

    if-eq v4, v7, :cond_2

    .line 185
    sget-object v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 188
    const/4 v2, 0x0

    .line 191
    .end local v0    # "linkStatus":[I
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 192
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 301
    iget v6, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    .line 302
    .local v6, "programID":I
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/Shader;->mCurrentSurfaceIndex:J

    .line 303
    .local v4, "surfaceIndex":J
    new-instance v1, Lcom/smartisanos/smengine/shadow/Shader$1;

    const/16 v3, 0x64

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/smengine/shadow/Shader$1;-><init>(Lcom/smartisanos/smengine/shadow/Shader;IJI)V

    const/4 v0, 0x0

    .line 313
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/shadow/Shader$1;->send(F)V

    .line 315
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 316
    return-void
.end method

.method public getAmbientLightSourceColorHandle()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mAmbientLightSourceColor:I

    return v0
.end method

.method public getColorHandle()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mColorHandle:I

    return v0
.end method

.method public getDirLightSourceColorHandle()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mDirLightSourceColor:I

    return v0
.end method

.method public getDirLightSourceDirectionHandle()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mDirLightSourceDirection:I

    return v0
.end method

.method public getMVPMatrixHandle()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMVPMatrixHandle:I

    return v0
.end method

.method public getMatrixArrayHandle()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMatrixArrayHandle:I

    return v0
.end method

.method public getMatrixArrayIndexHandle()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMatrixArrayIndexHandle:I

    return v0
.end method

.method public getNormalHandle()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mNormalHandle:I

    return v0
.end method

.method public getPointLightSourceColorHandle()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourceColor:I

    return v0
.end method

.method public getPointLightSourcePositionHandle()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourcePosition:I

    return v0
.end method

.method public getPointLightSourceRangeInverseHandle()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPointLightSourceRangeInverse:I

    return v0
.end method

.method public getPositionHandle()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mPositionHandle:I

    return v0
.end method

.method public getProgramID()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    return v0
.end method

.method public getShadowMapMatrixHandle()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSMMVPMatrixHandle:I

    return v0
.end method

.method public getSpotLightSourceColorHandle()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceColor:I

    return v0
.end method

.method public getSpotLightSourceDirectionHandle()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceDirection:I

    return v0
.end method

.method public getSpotLightSourceInnerAngleCosHandle()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceInnerAngleCos:I

    return v0
.end method

.method public getSpotLightSourceOuterAngleCosHandle()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceOuterAngleCos:I

    return v0
.end method

.method public getSpotLightSourcePositionHandle()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourcePosition:I

    return v0
.end method

.method public getSpotLightSourceRangeInverseHandle()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mSpotLightSourceRangeInverse:I

    return v0
.end method

.method public getTexCoordHandle()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexCoordHandle:I

    return v0
.end method

.method public getTexture0Handle()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture0Handle:I

    return v0
.end method

.method public getTexture1Handle()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture1Handle:I

    return v0
.end method

.method public getTexture2Handle()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mTexture2Handle:I

    return v0
.end method

.method public getUseTextureHandle()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mUseTextureHandle:I

    return v0
.end method

.method public getWorldMatrixHandle()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mWorldMatrixHandle:I

    return v0
.end method

.method public abstract initShader()V
.end method

.method public release()V
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mCurrentSurfaceIndex:J

    sget-wide v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    if-eqz v0, :cond_0

    .line 282
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mProgramID:I

    .line 285
    return-void
.end method

.method public setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 292
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMVPMatrixHandle:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixToShader(I)V

    .line 293
    return-void
.end method

.method public setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 296
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mMatrixArrayHandle:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayToShader(I)V

    .line 297
    return-void
.end method

.method public setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 288
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader;->mWorldMatrixHandle:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setWorldMatrixToShader(I)V

    .line 289
    return-void
.end method
