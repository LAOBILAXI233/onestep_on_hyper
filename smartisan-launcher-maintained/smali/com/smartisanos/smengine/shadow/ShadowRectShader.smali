.class public Lcom/smartisanos/smengine/shadow/ShadowRectShader;
.super Lcom/smartisanos/smengine/shadow/Shader;
.source "ShadowRectShader.java"


.field private final mFragmentShader:Ljava/lang/String;

.field private final mVertexShader:Ljava/lang/String;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/smartisanos/smengine/shadow/Shader;-><init>()V

    .line 9
    const-string v0, "uniform mat4 uMVPMat;\nuniform mat4 uWorldMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    v_position = uWorldMatrix * vec4(aPosition, 1.0);\n    v_textureCoord = aTextureCoord;\n}\n"

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mVertexShader:Ljava/lang/String;

    .line 21
    const-string v0, "precision mediump float;\nuniform mat4 uSMMVPMatrix;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nuniform sampler2D sTexture0;\nuniform sampler2D sTexture1;\nfloat SAMPLE(sampler2D depths, vec2 uv, float compare, float para){\n    float depth = texture2D(depths, uv).z;\n    if (depth == 1.0) {\n        return 0.0;\n    }\n    return para;\n}\nfloat PCF(sampler2D depths, vec2 uv, float compare, vec2 noise){\n    float result = 0.0;\n    vec2 inx = vec2(-0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.0, 0.0);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.25);\n    inx = vec2(-0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    return result;\n}\nvoid main() {\n    float illuminated = 0.0;\n    vec4 gytyPosition = uSMMVPMatrix * vec4(v_position.xyz, 1.0);\n    gytyPosition = gytyPosition / gytyPosition.w;\n    float s = (gytyPosition.s + 1.0) / 2.0;\n    float t = (gytyPosition.t + 1.0) / 2.0;\n    if (s > -0.006 && s < 1.006 && t > -0.006 && t < 1.006) {\n        float noiseAngle = texture2D(sTexture1, v_textureCoord).x * 2.0 * 3.1415926;\n        vec2 noise = vec2(sin(noiseAngle), cos(noiseAngle));\n        illuminated = PCF(sTexture0, vec2(s, t), 0.0, noise);\n    }\n    gl_FragColor = vec4(0.0, 0.0, 0.0, illuminated * 0.16);\n}\n"

    iput-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mFragmentShader:Ljava/lang/String;

    return-void
.end method


.method public apply(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "ru"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->initShader()V

    .line 99
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 100
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 101
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 102
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 103
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 104
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 105
    return-void
.end method

.method public initShader()V
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mCurrentSurfaceIndex:J

    sget-wide v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    if-nez v0, :cond_1

    .line 73
    :cond_0
    sget-wide v0, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    iput-wide v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mCurrentSurfaceIndex:J

    .line 74
    const-string v0, "uniform mat4 uMVPMat;\nuniform mat4 uWorldMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    v_position = uWorldMatrix * vec4(aPosition, 1.0);\n    v_textureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform mat4 uSMMVPMatrix;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nuniform sampler2D sTexture0;\nuniform sampler2D sTexture1;\nfloat SAMPLE(sampler2D depths, vec2 uv, float compare, float para){\n    float depth = texture2D(depths, uv).z;\n    if (depth == 1.0) {\n        return 0.0;\n    }\n    return para;\n}\nfloat PCF(sampler2D depths, vec2 uv, float compare, vec2 noise){\n    float result = 0.0;\n    vec2 inx = vec2(-0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.0, 0.0);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.25);\n    inx = vec2(-0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    return result;\n}\nvoid main() {\n    float illuminated = 0.0;\n    vec4 gytyPosition = uSMMVPMatrix * vec4(v_position.xyz, 1.0);\n    gytyPosition = gytyPosition / gytyPosition.w;\n    float s = (gytyPosition.s + 1.0) / 2.0;\n    float t = (gytyPosition.t + 1.0) / 2.0;\n    if (s > -0.006 && s < 1.006 && t > -0.006 && t < 1.006) {\n        float noiseAngle = texture2D(sTexture1, v_textureCoord).x * 2.0 * 3.1415926;\n        vec2 noise = vec2(sin(noiseAngle), cos(noiseAngle));\n        illuminated = PCF(sTexture0, vec2(s, t), 0.0, noise);\n    }\n    gl_FragColor = vec4(0.0, 0.0, 0.0, illuminated * 0.16);\n}\n"

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    .line 75
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    if-nez v0, :cond_2

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "uMVPMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mMVPMatrixHandle:I

    .line 80
    const-string v0, "glGetUniformLocation uWorldMatrix"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "uSMMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mSMMVPMatrixHandle:I

    .line 82
    const-string v0, "glGetUniformLocation uSMMVPMatrix"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "uWorldMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mWorldMatrixHandle:I

    .line 84
    const-string v0, "glGetUniformLocation uWorldMatrix"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mPositionHandle:I

    .line 86
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mTexCoordHandle:I

    .line 88
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "sTexture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mTexture0Handle:I

    .line 90
    const-string v0, "glGetUniformLocation sTexture0"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mProgramID:I

    const-string v1, "sTexture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->mTexture1Handle:I

    .line 92
    const-string v0, "glGetUniformLocation sTexture1"

    invoke-static {v0}, Lcom/smartisanos/smengine/shadow/ShadowRectShader;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method
