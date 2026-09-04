.class public Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;
.super Lcom/smartisanos/smengine/shadow/Shader;
.source "DepthShadowMapDonorShader.java"


.field private final mFragmentShader:Ljava/lang/String;

.field private final mVertexShader:Ljava/lang/String;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/Shader;-><init>()V

    .line 10
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\n//varying vec4 vPosition;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    //vPosition = gl_Position;\n}\n"

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mVertexShader:Ljava/lang/String;

    .line 18
    const-string v0, "precision mediump float;\n//varying vec4 vPosition;\nvoid main() {\n    //float depth = vPosition.z / vPosition.w;\n    //gl_FragColor = vec4(depth, 0, 0, 1.0);\n}\n"

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mFragmentShader:Ljava/lang/String;

    return-void
.end method

.method private setMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 8
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->bindVBO()V

    .line 72
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->bindIBO()V

    .line 74
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getVertexType()I

    move-result v7

    .line 75
    .local v7, "vertexType":I
    invoke-static {v7}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v0

    mul-int/lit8 v4, v0, 0x4

    .line 77
    .local v4, "stride":I
    const/4 v1, 0x3

    .line 78
    .local v1, "posFloatSize":I
    invoke-static {v7}, Lcom/smartisanos/smengine/Mesh$VertexType;->getPointFloatOffset(I)I

    move-result v6

    .line 79
    .local v6, "posOffset":I
    mul-int/lit8 v5, v6, 0x4

    .line 80
    .local v5, "offsetByte":I
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mPositionHandle:I

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 81
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 82
    return-void
.end method


.method public apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 7
    .param p1, "ru"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x405

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->initShader()V

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastShaderProgramID:I

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    if-eq v2, v3, :cond_0

    .line 43
    iget v2, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 44
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    iput v3, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastShaderProgramID:I

    .line 46
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceable:Z

    if-nez v2, :cond_1

    .line 47
    const/16 v2, 0xb44

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 48
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iput-boolean v6, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceable:Z

    .line 50
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceMode:I

    if-eq v2, v4, :cond_2

    .line 51
    invoke-static {v4}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 52
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iput v4, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastCullFaceMode:I

    .line 54
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastDepthTestable:Z

    if-nez v2, :cond_3

    .line 55
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 56
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iput-boolean v6, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastDepthTestable:Z

    .line 58
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastBlendable:Z

    if-eqz v2, :cond_4

    .line 59
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 60
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    iput-boolean v5, v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->mLastBlendable:Z

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 64
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V

    .line 66
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->getIndexArraySize()I

    move-result v1

    .line 67
    .local v1, "shortSize":I
    const/4 v2, 0x4

    const/16 v3, 0x1403

    invoke-static {v2, v1, v3, v5}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 68
    return-void
.end method

.method public initShader()V
    .locals 4

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mCurrentSurfaceIndex:J

    sget-wide v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    if-nez v0, :cond_1

    .line 27
    :cond_0
    sget-wide v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mCurrentSurfaceIndex:J

    .line 28
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\n//varying vec4 vPosition;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    //vPosition = gl_Position;\n}\n"

    const-string v1, "precision mediump float;\n//varying vec4 vPosition;\nvoid main() {\n    //float depth = vPosition.z / vPosition.w;\n    //gl_FragColor = vec4(depth, 0, 0, 1.0);\n}\n"

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    .line 29
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    if-nez v0, :cond_2

    .line 37
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    const-string v1, "uMVPMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mMVPMatrixHandle:I

    .line 33
    const-string v0, "glGetUniformLocation uWorldMatrix"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->checkGlError(Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mProgramID:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->mPositionHandle:I

    .line 35
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/DepthShadowMapDonorShader;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method
