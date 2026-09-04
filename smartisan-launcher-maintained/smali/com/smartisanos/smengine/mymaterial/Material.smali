.class public Lcom/smartisanos/smengine/mymaterial/Material;
.super Ljava/lang/Object;
.source "Material.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;,
        Lcom/smartisanos/smengine/mymaterial/Material$VarName;
    }
.end annotation


.field protected static final ATTRIB_MVP_MAT_INDEX:I = 0x6

.field private static final ATTRIB_SIZE:I = 0x14

.field protected static final ATTRIB_VERTEX_COLOR:I = 0x2

.field protected static final ATTRIB_VERTEX_NORMAL:I = 0x3

.field protected static final ATTRIB_VERTEX_NORMAL_TEXCOORD:I = 0x5

.field protected static final ATTRIB_VERTEX_POS:I = 0x0

.field protected static final ATTRIB_VERTEX_SHADOW_TEXCOORD:I = 0x4

.field protected static final ATTRIB_VERTEX_TEXCOORD:I = 0x1

.field public static final DIFFUSE_TEX:I = 0x0

.field public static final NORMAL_TEX:I = 0x2

.field public static final PARAM_ALPHA_TEST_VALUE:I = 0xf

.field public static final PARAM_BLUR_SIZE:I = 0x16

.field public static final PARAM_CLIP_PLANE:I = 0x11

.field public static final PARAM_CLIP_PLANE_HEIGHT:I = 0x13

.field public static final PARAM_INNERSHADOW_ALPHA_RANGE_H:I = 0xc

.field public static final PARAM_INNERSHADOW_ALPHA_RANGE_V:I = 0xe

.field public static final PARAM_INNERSHADOW_SIZE_H:I = 0xb

.field public static final PARAM_INNERSHADOW_SIZE_V:I = 0xd

.field public static final PARAM_INVALID:I = 0x0

.field public static final PARAM_LOCAL_TRANSLATE:I = 0x12

.field public static final PARAM_MODULAR_COLOR:I = 0x1

.field public static final PARAM_MODULAR_COLOR_ARRAY16:I = 0x7

.field public static final PARAM_MODULAR_COLOR_ARRAY6:I = 0x17

.field public static final PARAM_MODULAR_COLOR_ARRAY9:I = 0x8

.field public static final PARAM_MVP_MAT:I = 0x5

.field public static final PARAM_MVP_MAT_ARRAY16:I = 0xa

.field public static final PARAM_MVP_MAT_ARRAY9:I = 0x9

.field public static final PARAM_NUM:I = 0x18

.field public static final PARAM_TEXEL_HEIGHT_OFFSET:I = 0x15

.field public static final PARAM_TEXEL_WIDTH_OFFSET:I = 0x14

.field public static final PARAM_TEXT_HEIGHT:I = 0x3

.field public static final PARAM_TEXT_PAINT:I = 0x4

.field public static final PARAM_TEXT_WIDTH:I = 0x2

.field public static final PARAM_TEX_COORD_LIMIT_XY:I = 0x6

.field public static final PARAM_WORLD_MATRIX:I = 0x10

.field public static final SHADOW_TEX:I = 0x1

.field public static final TEX3:I = 0x3

.field public static final TEX_NUM:I = 0x4

.field protected static final UNIFORM_ALPHA_TEST:I = 0x10

.field protected static final UNIFORM_BLEND_COLOR:I = 0x18

.field protected static final UNIFORM_BLUR_SIZE:I = 0x15

.field protected static final UNIFORM_CAMERA_VIEW_MAT:I = 0x3

.field protected static final UNIFORM_CLIP_PLANE:I = 0x4

.field protected static final UNIFORM_CLIP_PLANE_HEIGHT:I = 0x12

.field protected static final UNIFORM_DIFFUSE_MAP:I = 0x1

.field protected static final UNIFORM_INNER_SHADOW_ALPHA_RANGE_H:I = 0xd

.field protected static final UNIFORM_INNER_SHADOW_ALPHA_RANGE_V:I = 0xf

.field protected static final UNIFORM_INNER_SHADOW_SIZE_H:I = 0xc

.field protected static final UNIFORM_INNER_SHADOW_SIZE_V:I = 0xe

.field protected static final UNIFORM_LOCAL_TRANSLATE:I = 0x11

.field protected static final UNIFORM_MODEL_SPACE_LIGHT_DIR:I = 0x17

.field protected static final UNIFORM_MODULAR_COLOR:I = 0x7

.field protected static final UNIFORM_MODULAR_COLOR_ARRAY16:I = 0xa

.field protected static final UNIFORM_MODULAR_COLOR_ARRAY6:I = 0x19

.field protected static final UNIFORM_MODULAR_COLOR_ARRAY9:I = 0x9

.field protected static final UNIFORM_MVP_MAT:I = 0x0

.field protected static final UNIFORM_MVP_MAT_ARRAY16:I = 0x8

.field protected static final UNIFORM_MVP_MAT_ARRAY9:I = 0x5

.field protected static final UNIFORM_NORMAL_MAP:I = 0x16

.field protected static final UNIFORM_SHADOW_MAP:I = 0x6

.field private static final UNIFORM_SIZE:I = 0x1e

.field protected static final UNIFORM_TEXEL_HEIGHT_OFFSET:I = 0x14

.field protected static final UNIFORM_TEXEL_WIDTH_OFFSET:I = 0x13

.field protected static final UNIFORM_TEX_COORD_LIMIT_XY:I = 0xb

.field protected static final UNIFORM_WORLD_MAT:I = 0x2


.field private final TAG:Ljava/lang/String;

.field private mAttribLocation:[I

.field private mMVPMatrixData:[F

.field private mName:Ljava/lang/String;

.field private mParamArray:[Ljava/lang/Object;

.field private mParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mShader:Lcom/smartisanos/smengine/Shader;

.field private mShowShadow:Z

.field private mTextureBindOK:[Z

.field private mTextureList:[Ljava/lang/String;

.field private mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

.field private mTextureUseMipmap:[Z

.field private mUniformLocation:[I

.field public mUseCameraMatrix:Z

.field public mUseLocalTranslate:Z

.field public mUseMVPMatrix:Z

.field public mUseMVPMatrixArray:Z

.field public mUseModelSpaceLightDir:Z

.field public mUseProjectionMatrix:Z

.field public mUseViewMatrix:Z

.field public mUseWorldMatrix:Z

.field private mWorldMatrixData:[F


.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v1, "Material"

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->TAG:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamMap:Ljava/util/HashMap;

    .line 46
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureList:[Ljava/lang/String;

    .line 47
    new-array v1, v3, [Lcom/smartisanos/smengine/Texture$State;

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    .line 48
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureUseMipmap:[Z

    .line 53
    const/16 v1, 0x14

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    .line 54
    const/16 v1, 0x1e

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrix:Z

    .line 56
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrixArray:Z

    .line 57
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseLocalTranslate:Z

    .line 58
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseViewMatrix:Z

    .line 59
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseProjectionMatrix:Z

    .line 60
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseCameraMatrix:Z

    .line 61
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseWorldMatrix:Z

    .line 62
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseModelSpaceLightDir:Z

    .line 66
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    .line 67
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamArray:[Ljava/lang/Object;

    .line 653
    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShowShadow:Z

    .line 199
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mName:Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 201
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    new-instance v2, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v2}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    aput-object v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vertexStr"    # Ljava/lang/String;
    .param p3, "fragmentStr"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x14

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v2, "Material"

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->TAG:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamMap:Ljava/util/HashMap;

    .line 46
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureList:[Ljava/lang/String;

    .line 47
    new-array v2, v4, [Lcom/smartisanos/smengine/Texture$State;

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    .line 48
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureUseMipmap:[Z

    .line 53
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    .line 54
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrix:Z

    .line 56
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrixArray:Z

    .line 57
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseLocalTranslate:Z

    .line 58
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseViewMatrix:Z

    .line 59
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseProjectionMatrix:Z

    .line 60
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseCameraMatrix:Z

    .line 61
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseWorldMatrix:Z

    .line 62
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUseModelSpaceLightDir:Z

    .line 66
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    .line 67
    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamArray:[Ljava/lang/Object;

    .line 653
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShowShadow:Z

    .line 205
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mName:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 209
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    aput v5, v2, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    .line 212
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    aput v5, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 215
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getShaderManager()Lcom/smartisanos/smengine/ShaderManager;

    move-result-object v1

    .line 216
    .local v1, "sm":Lcom/smartisanos/smengine/ShaderManager;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/ShaderManager;->getShader(Ljava/lang/String;)Lcom/smartisanos/smengine/Shader;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    .line 217
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    if-nez v2, :cond_2

    .line 218
    new-instance v2, Lcom/smartisanos/smengine/Shader;

    invoke-direct {v2, p1, p2, p3}, Lcom/smartisanos/smengine/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    .line 219
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v1, p1, v2}, Lcom/smartisanos/smengine/ShaderManager;->setShader(Ljava/lang/String;Lcom/smartisanos/smengine/Shader;)V

    .line 222
    .end local v1    # "sm":Lcom/smartisanos/smengine/ShaderManager;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    .line 223
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    new-instance v3, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v3}, Lcom/smartisanos/smengine/Texture$State;-><init>()V

    aput-object v3, v2, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 225
    :cond_3
    return-void
.end method

.method private setColorFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 334
    const/4 v3, 0x4

    .line 335
    .local v3, "colorFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getColorFloatOffset(I)I

    move-result v5

    .line 336
    .local v5, "colorOffset":I
    const/4 v0, 0x2

    const-string v2, "aColors"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 337
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 338
    return-void
.end method

.method private setMatIndexFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 328
    const/4 v3, 0x1

    .line 329
    .local v3, "matIndexFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getMatIndexFloatOffset(I)I

    move-result v5

    .line 330
    .local v5, "matIndexOffset":I
    const/4 v0, 0x6

    const-string v2, "aMvpArrayIndex"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 332
    return-void
.end method

.method private setNormalFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 322
    const/4 v3, 0x3

    .line 323
    .local v3, "normalFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getNormalFloatOffset(I)I

    move-result v5

    .line 324
    .local v5, "normalOffset":I
    const/4 v0, 0x3

    const-string v2, "aNormals"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 325
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 326
    return-void
.end method

.method private setPointFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 297
    const/4 v3, 0x3

    .line 298
    .local v3, "posFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getPointFloatOffset(I)I

    move-result v5

    .line 299
    .local v5, "posOffset":I
    const/4 v0, 0x0

    const-string v2, "aPosition"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 301
    return-void
.end method

.method private setTexCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 315
    const/4 v3, 0x2

    .line 316
    .local v3, "texFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getTexFloatOffset(I)I

    move-result v5

    .line 317
    .local v5, "texOffset":I
    const/4 v0, 0x1

    const-string v2, "aTexCoord"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 318
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 319
    return-void
.end method

.method private setTexNormalCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 309
    const/4 v3, 0x2

    .line 310
    .local v3, "texFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getTex2FloatOffset(I)I

    move-result v5

    .line 311
    .local v5, "texOffset":I
    const/4 v0, 0x5

    const-string v2, "aNormalTexCoord"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 312
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 313
    return-void
.end method

.method private setTexShadowCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7
    .param p1, "fb"    # Ljava/nio/FloatBuffer;
    .param p2, "vertexType"    # I
    .param p3, "stride"    # I
    .param p4, "isUseVBO"    # Z

    .prologue
    .line 303
    const/4 v3, 0x2

    .line 304
    .local v3, "texFloatSize":I
    invoke-static {p2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getTex2FloatOffset(I)I

    move-result v5

    .line 305
    .local v5, "texOffset":I
    const/4 v0, 0x4

    const-string v2, "aShadowTexCoord"

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getAttribLocation(ILjava/lang/String;)I

    move-result v1

    .line 306
    .local v1, "location":I
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Shader;->setFloatBuffer(ILjava/nio/FloatBuffer;IIIZ)V

    .line 307
    return-void
.end method


.method public addTexture(ILjava/lang/String;)V
    .locals 1
    .param p1, "texID"    # I
    .param p2, "texName"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureList:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 244
    return-void
.end method

.method protected bindTexture()V
    .locals 7

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "hasTexture":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    .line 499
    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureList:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 500
    .local v3, "texName":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    aget-object v4, v5, v1

    .line 501
    .local v4, "textureState":Lcom/smartisanos/smengine/Texture$State;
    if-eqz v3, :cond_0

    .line 502
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->getGLTextureIndex(I)I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 503
    invoke-virtual {p0, v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->bindTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture$State;I)Z

    move-result v2

    .line 504
    .local v2, "ok":Z
    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    aput-boolean v2, v5, v1

    .line 505
    if-eqz v2, :cond_0

    .line 506
    const/4 v0, 0x1

    .line 498
    .end local v2    # "ok":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v3    # "texName":Ljava/lang/String;
    .end local v4    # "textureState":Lcom/smartisanos/smengine/Texture$State;
    :cond_1
    if-nez v0, :cond_2

    .line 511
    const/16 v5, 0xde1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 513
    :cond_2
    return-void
.end method

.method protected bindTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture$State;I)Z
    .locals 7
    .param p1, "texName"    # Ljava/lang/String;
    .param p2, "textureState"    # Lcom/smartisanos/smengine/Texture$State;
    .param p3, "texID"    # I

    .prologue
    .line 483
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v6

    .line 484
    .local v6, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-virtual {v6, p1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v0

    .line 485
    .local v0, "tex":Lcom/smartisanos/smengine/Texture;
    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 487
    .local v5, "bmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/smartisanos/smengine/Texture;

    .end local v0    # "tex":Lcom/smartisanos/smengine/Texture;
    iget v1, p2, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    iget v2, p2, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    iget v3, p2, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    iget v4, p2, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/Texture;-><init>(IIIILandroid/graphics/Bitmap;)V

    .line 488
    .restart local v0    # "tex":Lcom/smartisanos/smengine/Texture;
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureUseMipmap:[Z

    aget-boolean v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setIsUseMipmap(Z)V

    .line 489
    invoke-virtual {v6, p1, v0}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 490
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 494
    .end local v5    # "bmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Texture;->bind()Z

    move-result v1

    return v1

    .line 492
    :cond_0
    iget v1, p2, Lcom/smartisanos/smengine/Texture$State;->mMinFilter:I

    iget v2, p2, Lcom/smartisanos/smengine/Texture$State;->mMagFilter:I

    iget v3, p2, Lcom/smartisanos/smengine/Texture$State;->mWrapS:I

    iget v4, p2, Lcom/smartisanos/smengine/Texture$State;->mWrapT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    aput v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    aput v2, v1, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_1
    return-void
.end method

.method public clearResource()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public create()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    if-nez v0, :cond_0

    .line 232
    const-string v0, "Material"

    const-string v1, "shader is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Shader;->create()V

    goto :goto_0
.end method

.method protected createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 446
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 447
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 448
    .local v14, "width":Ljava/lang/Integer;
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 449
    .local v6, "height":Ljava/lang/Integer;
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Paint;

    .line 450
    .local v11, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 451
    .local v12, "textWidth":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 452
    .local v10, "textHeight":I
    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v5

    .line 453
    .local v5, "descent":F
    invoke-static {v12, v10, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 454
    .local v2, "bmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 455
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 456
    new-instance v13, Landroid/text/TextPaint;

    invoke-direct {v13, v11}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 457
    .local v13, "tp":Landroid/text/TextPaint;
    int-to-float v15, v12

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v13, v15, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, "newText":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 459
    .local v8, "measuredTextWidth":F
    int-to-float v15, v12

    sub-float/2addr v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    .line 460
    .local v7, "left":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v7, v15

    if-lez v15, :cond_0

    .line 461
    const/high16 v7, 0x3f800000    # 1.0f

    .line 463
    :cond_0
    int-to-float v15, v10

    sub-float/2addr v15, v5

    const/high16 v16, 0x40000000    # 2.0f

    sub-float v15, v15, v16

    invoke-virtual {v3, v9, v7, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 464
    return-object v2
.end method

.method public deleteTexture(I)V
    .locals 2
    .param p1, "texID"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureList:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 247
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "isUseVBO"    # Z

    .prologue
    .line 591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown material "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    .line 601
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    const-string v1, "unknown material"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPass()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method protected drawPoints(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 4
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseIBO"    # Z

    .prologue
    const/4 v3, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getPointCount()I

    move-result v0

    .line 427
    .local v0, "pointNum":I
    if-nez v0, :cond_0

    .line 428
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Material"

    const-string v2, "draw points num == 0 : error"

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-static {v3, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 431
    return-void
.end method

.method protected drawPrimitive(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 2
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseVBO"    # Z

    .prologue
    .line 547
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getPrimitiveType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    const-string v1, "unknown primitive type"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPoints(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 561
    :goto_0
    return-void

    .line 555
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/Material;->drawWithIndexBuffer(Lcom/smartisanos/smengine/Mesh;Z)V

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawWithIndexBuffer(Lcom/smartisanos/smengine/Mesh;Z)V
    .locals 5
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p2, "isUseIBO"    # Z

    .prologue
    const/16 v4, 0x1403

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 414
    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getIndexArraySize()I

    move-result v1

    .line 416
    .local v1, "shortSize":I
    invoke-static {v3, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 423
    :goto_0
    return-void

    .line 418
    .end local v1    # "shortSize":I
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 419
    .local v0, "indexBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Mesh;->getIndexArraySize()I

    move-result v1

    .line 421
    .restart local v1    # "shortSize":I
    invoke-static {v3, v1, v4, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method protected getAttribLocation(ILjava/lang/String;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    aget v0, v1, p1

    .line 269
    .local v0, "location":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v2, p2}, Lcom/smartisanos/smengine/Shader;->getAttribLocation(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, p1

    .line 271
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mAttribLocation:[I

    aget v0, v1, p1

    .line 273
    :cond_0
    return v0
.end method

.method protected getGLTextureIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 433
    packed-switch p1, :pswitch_data_0

    .line 443
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    const-string v1, "more texture can not support"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_0
    const v0, 0x84c0

    .line 441
    :goto_0
    return v0

    .line 437
    :pswitch_1
    const v0, 0x84c1

    goto :goto_0

    .line 439
    :pswitch_2
    const v0, 0x84c2

    goto :goto_0

    .line 441
    :pswitch_3
    const v0, 0x84c3

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParam(I)Ljava/lang/Object;
    .locals 1
    .param p1, "paramIndex"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getShowShadow()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShowShadow:Z

    return v0
.end method

.method protected getUniformLocation(ILjava/lang/String;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    aget v0, v1, p1

    .line 290
    .local v0, "location":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v2, p2}, Lcom/smartisanos/smengine/Shader;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, p1

    .line 292
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mUniformLocation:[I

    aget v0, v1, p1

    .line 294
    :cond_0
    return v0
.end method

.method protected loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p1}, Lcom/smartisanos/smengine/Texture;->isTextTextureName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    invoke-static {p1}, Lcom/smartisanos/smengine/Texture;->extractTextFromTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/mymaterial/Material;->createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    .end local v3    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "bmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p1}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 476
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 477
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected setCameraMatrix(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 564
    const/4 v1, 0x3

    const-string v2, "uCameraViewMat"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 565
    .local v0, "location":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setCameraMatrixToShader(I)V

    .line 566
    return-void
.end method

.method protected setDiffuseMap(I)V
    .locals 3
    .param p1, "tex"    # I

    .prologue
    .line 390
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x1

    const-string v2, "uDiffuseMap"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 394
    .local v0, "location":I
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v1, v0, p1}, Lcom/smartisanos/smengine/Shader;->setInt(II)V

    .line 398
    .end local v0    # "location":I
    :cond_0
    return-void
.end method

.method public setIsUseMipmap(IZ)V
    .locals 2
    .param p1, "texID"    # I
    .param p2, "b"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureUseMipmap:[Z

    aput-boolean p2, v0, p1

    .line 341
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsSupportMipMapTexture:Z

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureUseMipmap:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 344
    :cond_0
    return-void
.end method

.method protected setLocalTranslate()V
    .locals 6

    .prologue
    .line 381
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    .line 382
    .local v0, "localTranslate":Lcom/smartisanos/smengine/math/Vector3f;
    if-eqz v0, :cond_0

    .line 383
    const/16 v2, 0x11

    const-string v3, "uLocalTranslate"

    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "location":I
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFF)V

    .line 388
    return-void

    .line 386
    .end local v1    # "location":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "local translate is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setLocalTranslate(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 586
    const/16 v1, 0x11

    const-string v2, "uLocalTranslate"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 587
    .local v0, "location":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalTranslateDataToShader(I)V

    .line 588
    return-void
.end method

.method protected setMVPMatrix()V
    .locals 5

    .prologue
    .line 361
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/math/Matrix4f;

    .line 362
    .local v2, "mvp":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mMVPMatrixData:[F

    if-nez v3, :cond_0

    .line 363
    const/16 v3, 0x10

    new-array v0, v3, [F

    .line 364
    .local v0, "ffma":[F
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mMVPMatrixData:[F

    .line 366
    .end local v0    # "ffma":[F
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mMVPMatrixData:[F

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 367
    const/4 v3, 0x0

    const-string v4, "uMVPMat"

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 368
    .local v1, "location":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mMVPMatrixData:[F

    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/Shader;->setMatrix4f(I[F)V

    .line 370
    return-void
.end method

.method protected setMVPMatrix(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 573
    const/4 v1, 0x0

    const-string v2, "uMVPMat"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 574
    .local v0, "location":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixToShader(I)V

    .line 575
    return-void
.end method

.method protected setMVPMatrixArray(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "location":I
    iget v1, p1, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 579
    const/4 v1, 0x5

    const-string v2, "uMVPMatArray9"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 583
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayToShader(I)V

    .line 584
    return-void

    .line 580
    :cond_1
    iget v1, p1, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 581
    const/16 v1, 0x8

    const-string v2, "uMVPMatArray16"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected setModularColor()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/math/Vector4f;

    .line 373
    .local v6, "color":Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v0, 0x7

    const-string v3, "uModularColor"

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "location":I
    if-eqz v6, :cond_0

    .line 375
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    iget v2, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v3, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v4, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v5, v6, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Shader;->setFloatArray(IFFFF)V

    goto :goto_0
.end method

.method protected setNormalMap(I)V
    .locals 3
    .param p1, "tex"    # I

    .prologue
    .line 407
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 409
    const/16 v1, 0x16

    const-string v2, "uNormalMap"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "location":I
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v1, v0, p1}, Lcom/smartisanos/smengine/Shader;->setInt(II)V

    .line 412
    .end local v0    # "location":I
    :cond_0
    return-void
.end method

.method public setParam(ILjava/lang/Object;)V
    .locals 1
    .param p1, "paramIndex"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mParamArray:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 263
    return-void
.end method

.method protected setShadowMap(I)V
    .locals 3
    .param p1, "tex"    # I

    .prologue
    .line 400
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureBindOK:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 402
    const/4 v1, 0x6

    const-string v2, "uShadowMap"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "location":I
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v1, v0, p1}, Lcom/smartisanos/smengine/Shader;->setInt(II)V

    .line 405
    .end local v0    # "location":I
    :cond_0
    return-void
.end method

.method public setTextureState(ILcom/smartisanos/smengine/Texture$State;)V
    .locals 1
    .param p1, "texID"    # I
    .param p2, "s"    # Lcom/smartisanos/smengine/Texture$State;

    .prologue
    .line 346
    if-eqz p2, :cond_0

    .line 347
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mTextureStateList:[Lcom/smartisanos/smengine/Texture$State;

    aput-object p2, v0, p1

    .line 349
    :cond_0
    return-void
.end method

.method protected setVertexData(ZLcom/smartisanos/smengine/Mesh;ZZ)V
    .locals 5
    .param p1, "isUseVBO"    # Z
    .param p2, "mesh"    # Lcom/smartisanos/smengine/Mesh;
    .param p3, "hasTexture"    # Z
    .param p4, "hasColor"    # Z

    .prologue
    const/4 v4, 0x0

    .line 515
    if-eqz p1, :cond_6

    .line 516
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->bindVBO()V

    .line 517
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->bindIBO()V

    .line 523
    :goto_0
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getVertexType()I

    move-result v2

    .line 524
    .local v2, "vertexType":I
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 525
    .local v0, "fb":Ljava/nio/FloatBuffer;
    invoke-static {v2}, Lcom/smartisanos/smengine/Mesh$VertexType;->getFloatNum(I)I

    move-result v3

    mul-int/lit8 v1, v3, 0x4

    .line 526
    .local v1, "stride":I
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setPointFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 527
    if-eqz p3, :cond_0

    .line 528
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setTexCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 530
    :cond_0
    if-eqz p4, :cond_1

    .line 531
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setColorFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 533
    :cond_1
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getMatIndexArray()[F

    move-result-object v3

    if-eqz v3, :cond_2

    .line 534
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setMatIndexFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 536
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getShadowTexVertexArray()[F

    move-result-object v3

    if-eqz v3, :cond_3

    .line 537
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setTexShadowCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 539
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getNormalTexVertexArray()[F

    move-result-object v3

    if-eqz v3, :cond_4

    .line 540
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setTexNormalCoordFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 542
    :cond_4
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getNormal()[F

    move-result-object v3

    if-eqz v3, :cond_5

    .line 543
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/smartisanos/smengine/mymaterial/Material;->setNormalFloatBuffer(Ljava/nio/FloatBuffer;IIZ)V

    .line 545
    :cond_5
    return-void

    .line 519
    .end local v0    # "fb":Ljava/nio/FloatBuffer;
    .end local v1    # "stride":I
    .end local v2    # "vertexType":I
    :cond_6
    const v3, 0x8892

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 520
    const v3, 0x8893

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 521
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Mesh;->getIndexBuffer()Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method protected setWorldMatrix()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 351
    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/math/Matrix4f;

    .line 352
    .local v2, "wm":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mWorldMatrixData:[F

    if-nez v3, :cond_0

    .line 353
    new-array v0, v4, [F

    .line 354
    .local v0, "ffma":[F
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mWorldMatrixData:[F

    .line 356
    .end local v0    # "ffma":[F
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mWorldMatrixData:[F

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/math/Matrix4f;->fillFloatArray([FZ)V

    .line 357
    const/4 v3, 0x2

    const-string v4, "uWorldMat"

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "location":I
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mWorldMatrixData:[F

    invoke-virtual {v3, v1, v4}, Lcom/smartisanos/smengine/Shader;->setMatrix4f(I[F)V

    .line 359
    return-void
.end method

.method protected setWorldMatrix(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 569
    const/4 v1, 0x2

    const-string v2, "uWorldMat"

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "location":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setWorldMatrixToShader(I)V

    .line 571
    return-void
.end method

.method public showShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 656
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShowShadow:Z

    .line 657
    return-void
.end method

.method public use()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/Material;->mShader:Lcom/smartisanos/smengine/Shader;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Shader;->use()V

    goto :goto_0
.end method
