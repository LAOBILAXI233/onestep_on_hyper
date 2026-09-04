.class public Lcom/smartisanos/smengine/mymaterial/MaterialDef;
.super Ljava/lang/Object;
.source "MaterialDef.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;
    }
.end annotation


.field public static final CLIP_PLANE_USE_LOCALTRANSLATE:I = 0x2

.field public static final CLIP_PLANE_USE_WORLDMATRIX:I = 0x1

.field public static final COLOR_TEXTURE_MATERIAL:Ljava/lang/String; = "VertexColorTextureMaterial"

.field public static final DIFFUSE_SHADOW_DIFFERENT_TEXCOORD_BATCH16_MATERIAL:Ljava/lang/String; = "DiffuseShadowDifferentTexCoordBatch9Material"

.field public static final DIFFUSE_SHADOW_DIFFERENT_TEXCOORD_BATCH9_MATERIAL:Ljava/lang/String; = "DiffuseShadowDifferentTexCoordBatch9Material"

.field public static final DRAW_MULTI_TIMES_MATERIAL:Ljava/lang/String; = "DrawMultiTimesMaterial"

.field public static final GAUSSIAN_BLUR_EFFECT_MATERIAL:Ljava/lang/String; = "GaussianBlurEffectMaterial"

.field public static final GLOBAL_COLOR_MATERIAL:Ljava/lang/String; = "GlobalColorMaterial"

.field public static final INNER_SHADOW_COLOR_MATERIAL:Ljava/lang/String; = "InnerShadowColorMaterial"

.field private static final MODE_NO_USE:I = 0x0

.field public static final SIMPLE_COLOR_MATERIAL:Ljava/lang/String; = "SimpleColorMaterial"

.field public static final SIMPLE_TEXTURE_CLIPPLANE_MATERIAL:Ljava/lang/String; = "SimpleTextureClipPlaneMaterial"

.field public static final SIMPLE_TEXTURE_DIRLIGHT_MATEIRAL:Ljava/lang/String; = "SimpleTextureDirLightMaterial"

.field public static final SIMPLE_TEXTURE_LIMIT_XY_MATERIAL:Ljava/lang/String; = "TextureTexCoordLimitMaterial"

.field public static final SIMPLE_TEXTURE_MATEIRAL:Ljava/lang/String; = "SimpleTextureMaterial"

.field public static final SOFTLIGHT_EFFECT_MATERIAL:Ljava/lang/String; = "SoftLightEffectMaterial"

.field public static final TEXTURE_BATCH16_MATERIAL:Ljava/lang/String; = "TextureBatch16Material"

.field public static final TEXTURE_BATCH16_PreColor_MATERIAL:Ljava/lang/String; = "TextureBatch16PreColorMaterial"

.field public static final TEXTURE_BATCH16_WITH_DIRLIGHT_MATERIAL:Ljava/lang/String; = "TextureBatch16WithDirLightMaterial"

.field public static final TEXTURE_BATCH6_MATERIAL:Ljava/lang/String; = "TextureBatch6Material"

.field public static final TEXTURE_BATCH9_MATERIAL:Ljava/lang/String; = "TextureBatch9Material"

.field public static final TEXTURE_BATCH9_PreColor_MATERIAL:Ljava/lang/String; = "TextureBatch9PreColorMaterial"

.field public static final TEXTURE_BATCH9_WITH_DIRLIGHT_MATERIAL:Ljava/lang/String; = "TextureBatch9WithDirLightMaterial"

.field public static final TEXTURE_BLEND_MODULAR_COLOR_MATERIAL:Ljava/lang/String; = "TextureBlendModularColorMaterial"

.field public static final TEXTURE_MASK_MODULAR_CLIPPLANE_MATERIAL:Ljava/lang/String; = "TextureMaskModularClipPlaneMaterial"

.field public static final TEXTURE_MASK_MODULAR_MATERIAL:Ljava/lang/String; = "TextureMaskModularMaterial"

.field public static final TEXTURE_MODULAR_ALPHA_MATERIAL:Ljava/lang/String; = "TextureModularAlphaMaterial"

.field public static final TEXTURE_MODULAR_COLOR_ALPHATEST_MATERIAL:Ljava/lang/String; = "TextureModularColorAlphaTestMaterial"

.field public static final TEXTURE_MODULAR_COLOR_MATERIAL:Ljava/lang/String; = "TextureModularColorMaterial"

.field public static final TEXTURE_PRE_COLOR_MATERIAL:Ljava/lang/String; = "TexturePreColorMaterial"

.field public static final TEXTURE_TEXTURE_MODULAR_MATERIAL:Ljava/lang/String; = "TextureTextureModularMaterial"

.field public static final TWO_TEXTURE_BATCH16_MATERIAL:Ljava/lang/String; = "TwoTextureBatch16Material"

.field public static final TWO_TEXTURE_BATCH9_MATERIAL:Ljava/lang/String; = "TwoTextureBatch9Material"

.field public static final TWO_TEXTURE_DIFFCOORD_MODULARCOLOR_CLIPPLANE_MATERIAL:Ljava/lang/String; = "TwoTextureDiffCoordModularColorClipPlaneMaterial"

.field public static final TWO_TEX_DIFFERENT_TEXCOORD_MATERIAL:Ljava/lang/String; = "TwoTexDifferentTexcoordMaterial"

.field public static final TWO_TEX_DIFFERENT_TEX_COLOR_MATERIAL:Ljava/lang/String; = "TwoTexDifferentTexColorMaterial"

.field private static final clipDistVaryingDefine:Ljava/lang/String; = "varying float vClipDist;\n"

.field private static final clipPlaneHeightUniformDefine:Ljava/lang/String; = "uniform vec4 uClipPlaneHeight;\n"

.field private static final clipPlaneUniformDefine:Ljava/lang/String; = "uniform vec4 uClipPlane;\n"

.field private static final colorAttributeDefine:Ljava/lang/String; = "attribute vec4 aColors;\n"

.field private static final colorVaryingAssign:Ljava/lang/String; = "vVertexColor = aColors;\n"

.field private static final colorVaryingDefine:Ljava/lang/String; = "varying vec4 vVertexColor;\n"

.field private static final diffuseMapColorAssign:Ljava/lang/String; = "    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

.field private static final diffuseMapUniformDefine:Ljava/lang/String; = "uniform sampler2D uDiffuseMap;\n"

.field private static final glPositionAssign:Ljava/lang/String; = "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

.field private static final innerShadowAlphaRangeHUniformDefine:Ljava/lang/String; = "uniform vec4 uInnerShadowAlphaRangeH;\n"

.field private static final innerShadowAlphaRangeVUniformDefine:Ljava/lang/String; = "uniform vec4 uInnerShadowAlphaRangeV;\n"

.field private static final innerShadowSizeHUniformDefine:Ljava/lang/String; = "uniform vec4 uInnerShadowSizeH;\n"

.field private static final innerShadowSizeVUniformDefine:Ljava/lang/String; = "uniform vec4 uInnerShadowSizeV;\n"

.field private static final invariantGLPositoin:Ljava/lang/String; = "//invariant gl_Position;\n"

.field private static final localTranslateDefine:Ljava/lang/String; = "uniform vec3 uLocalTranslate;\n"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mFragmentShaderMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mVertexShaderMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mainEnd:Ljava/lang/String; = "}\n"

.field private static final mainStart:Ljava/lang/String; = "void main() {\n"

.field private static final modelSpaceDiffuseColorVaryingDefine:Ljava/lang/String; = "varying vec3 vModelSpaceDiffuseColor;\n"

.field private static final modelSpaceLightDirArray16Define:Ljava/lang/String; = "uniform vec3 uModelSpaceLightDir[16];\n"

.field private static final modelSpaceLightDirArray9Define:Ljava/lang/String; = "uniform vec3 uModelSpaceLightDir[9];\n"

.field private static final modualColorUniformDefine:Ljava/lang/String; = "uniform vec4 uModularColor;\n"

.field private static final modularColorArray16Define:Ljava/lang/String; = "uniform vec4 uModularColorArray16[16];\n"

.field private static final modularColorArray6Define:Ljava/lang/String; = "uniform vec4 uModularColorArray6[6];\n"

.field private static final modularColorArray9Define:Ljava/lang/String; = "uniform vec4 uModularColorArray9[9];\n"

.field private static final modularColorVaryingDefine:Ljava/lang/String; = "varying vec4 vModularColor;\n"

.field private static final mvpArray16Define:Ljava/lang/String; = "uniform mat4 uMVPMatArray16[16];\n"

.field private static final mvpArray6Define:Ljava/lang/String; = "uniform mat4 uMVPMatArray6[6];\n"

.field private static final mvpArray9Define:Ljava/lang/String; = "uniform mat4 uMVPMatArray9[9];\n"

.field private static final mvpIndexAttributeDefine:Ljava/lang/String; = "attribute float aMvpArrayIndex;\n"

.field private static final mvpMatrixUniformDefine:Ljava/lang/String; = "uniform mat4 uMVPMat;\n"

.field private static final normalMapUniformDefine:Ljava/lang/String; = "uniform sampler2D uNormalMap;\n"

.field private static final normalTexCoordAttributeDefine:Ljava/lang/String; = "attribute vec2 aNormalTexCoord;\n"

.field private static final pointCoordAttributeDefine:Ljava/lang/String; = "attribute vec3 aPosition;\n"

.field private static final precisionMDefine:Ljava/lang/String; = "precision mediump float;\n"

.field private static final shadowCoordVaryingAssign:Ljava/lang/String; = "vShadowTexCoord = aShadowTexCoord;\n"

.field private static final shadowMapColorAssign:Ljava/lang/String; = "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n"

.field private static final shadowMapColorAssignWithDiffuseCoord:Ljava/lang/String; = "    vec4 shadowMapColor = texture2D(uShadowMap, vTexCoord);\n"

.field private static final shadowMapUniformDefine:Ljava/lang/String; = "uniform sampler2D uShadowMap;\n"

.field private static final shadowTexCoordAttributeDefine:Ljava/lang/String; = "attribute vec2 aShadowTexCoord;\n"

.field private static final shadowTexCoordVaryingDefine:Ljava/lang/String; = "varying vec2 vShadowTexCoord;\n"

.field private static final softEffectFunc:Ljava/lang/String; = "float softlight(float top, float bottom) { \n    if(bottom < 0.5) {\n        return 2.0 * top * bottom + top * top * ( 1.0 - 2.0 * bottom);\n    } else {\n        return sqrt(top) * (2.0 * bottom - 1.0) + 2.0 * top * (1.0 - bottom);\n    }\n}\n"

.field private static final texCoordAttributeDefine:Ljava/lang/String; = "attribute vec2 aTexCoord;\n"

.field private static final texCoordLimitXYUniformDefine:Ljava/lang/String; = "uniform vec2 uTexCoordLimitXY;\n"

.field private static final texCoordVaryingAssign:Ljava/lang/String; = "vTexCoord = aTexCoord;\n"

.field private static final texCoordVaryingDefine:Ljava/lang/String; = "varying vec2 vTexCoord;\n"

.field private static final worldMatrixUniformDefine:Ljava/lang/String; = "uniform mat4 uWorldMat;\n"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/smengine/mymaterial/MaterialDef;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->log:Lcom/smartisanos/launcher/LOG;

    .line 1526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mVertexShaderMap:Ljava/util/HashMap;

    .line 1527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mFragmentShaderMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createColorTextureMaterialFragmentShader()Ljava/lang/String;
    .locals 8

    .prologue
    .line 313
    const-string v5, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec4 vVertexColor;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    .line 315
    .local v5, "text1":Ljava/lang/String;
    const-string v0, "    vec4 color = vec4(vVertexColor);\n"

    .line 316
    .local v0, "colorAssign":Ljava/lang/String;
    const-string v3, "    vec4 texColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 318
    .local v3, "texColor":Ljava/lang/String;
    const-string v1, "    vec4 endColor = color * texColor;\n"

    .line 319
    .local v1, "endColor":Ljava/lang/String;
    const-string v2, "    gl_FragColor = endColor ;\n"

    .line 320
    .local v2, "fragColorAssign":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "text":Ljava/lang/String;
    return-object v4
.end method

.method private static createColorTextureMaterialVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec4 aColors;\nvarying vec2 vTexCoord;\nvarying vec4 vVertexColor;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvVertexColor = aColors;\n}\n"

    .line 310
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createDiffuseShadowDifferentTexCoordBatch16FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 609
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 617
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = shadowMapColor.rgba * diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 619
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    return-object v1
.end method

.method private static createDiffuseShadowDifferentTexCoordBatch16VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 590
    const-string v1, "uniform mat4 uMVPMatArray16[16];\nuniform vec4 uModularColorArray16[16];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 599
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray16[matrixIndex];\n    vec4 currentColor = uModularColorArray16[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 605
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    return-object v1
.end method

.method private static createDiffuseShadowDifferentTexCoordBatch9FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 574
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 582
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = shadowMapColor.rgba * diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 584
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    return-object v1
.end method

.method private static createDiffuseShadowDifferentTexCoordBatch9VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    const-string v1, "uniform mat4 uMVPMatArray9[9];\nuniform vec4 uModularColorArray9[9];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 562
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    vec4 currentColor = uModularColorArray9[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 568
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 569
    return-object v1
.end method

.method private static createDrawMultiTimesFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;uniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor * uModularColor;\n}\n"

    .line 160
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createDrawMultiTimesVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "attribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uWorldMat;\nuniform mat4 uCameraViewMat;\nuniform vec3 uOffsetXYZ;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uCameraViewMat * (uWorldMat * vec4(aPosition, 1.0) + vec4(uOffsetXYZ, 0.0));\n    vTexCoord = aTexCoord;\n}\n"

    .line 148
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createFragmentShaderFromName(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1671
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v1, "SimpleTextureMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleMaterialFragmentShader()Ljava/lang/String;

    move-result-object v1

    .line 1740
    :goto_0
    return-object v1

    .line 1673
    :cond_0
    const-string v1, "SimpleTextureDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleMaterialWithDirLightFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1675
    :cond_1
    const-string v1, "VertexColorTextureMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1676
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createColorTextureMaterialFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1677
    :cond_2
    const-string v1, "TextureModularAlphaMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1678
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularAlphaFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1679
    :cond_3
    const-string v1, "SimpleColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1680
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1681
    :cond_4
    const-string v1, "TextureTextureModularMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1682
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureTextureModularFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1683
    :cond_5
    const-string v1, "TextureModularColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1684
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1685
    :cond_6
    const-string v1, "TextureBlendModularColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1686
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBlendModularColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1687
    :cond_7
    const-string v1, "TextureModularColorAlphaTestMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1688
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularColorAlphaTestFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1689
    :cond_8
    const-string v1, "TextureBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1690
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1691
    :cond_9
    const-string v1, "TextureBatch16Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1692
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1693
    :cond_a
    const-string v1, "TwoTextureBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1694
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureBatch9FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1695
    :cond_b
    const-string v1, "TwoTextureBatch16Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1696
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureBatch16FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1697
    :cond_c
    const-string v1, "GlobalColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1698
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createGlobalColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1699
    :cond_d
    const-string v1, "SimpleTextureClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1700
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleTextureModularColorClipPlaneFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1701
    :cond_e
    const-string v1, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1702
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDiffuseShadowDifferentTexCoordBatch9FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1703
    :cond_f
    const-string v1, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1704
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDiffuseShadowDifferentTexCoordBatch16FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1705
    :cond_10
    const-string v1, "TextureTexCoordLimitMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1706
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleTexCoordLimitXYMaterialFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1707
    :cond_11
    const-string v1, "InnerShadowColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1708
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createInnerShadowColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1709
    :cond_12
    const-string v1, "GaussianBlurEffectMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1710
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 1711
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GaussianBlur param null error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1713
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1714
    .local v0, "blurSize":I
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createGaussianBlurFragmentShaderString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1715
    .end local v0    # "blurSize":I
    :cond_14
    const-string v1, "SoftLightEffectMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1716
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSoftLightFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1717
    :cond_15
    const-string v1, "TwoTexDifferentTexcoordMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1718
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTexDifferentTexCoordFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1719
    :cond_16
    const-string v1, "TwoTexDifferentTexColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1720
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTexDifferentTexColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1721
    :cond_17
    const-string v1, "TextureMaskModularMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1722
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureMaskModularFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1723
    :cond_18
    const-string v1, "TextureMaskModularClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1724
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureMaskModularColorClipPlaneFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1725
    :cond_19
    const-string v1, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1726
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureDiffCoordModularColorClipPlaneFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1727
    :cond_1a
    const-string v1, "TextureBatch9WithDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1728
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9WithDirLightFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1729
    :cond_1b
    const-string v1, "TextureBatch16WithDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1730
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16WithDirLightFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1731
    :cond_1c
    const-string v1, "DrawMultiTimesMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1732
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDrawMultiTimesFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1733
    :cond_1d
    const-string v1, "TextureBatch6Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1734
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch6FragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1735
    :cond_1e
    const-string v1, "TexturePreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1736
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTexturePreColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1737
    :cond_1f
    const-string v1, "TextureBatch9PreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1738
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9PreColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1739
    :cond_20
    const-string v1, "TextureBatch16PreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1740
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16PreColorFragmentShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1742
    :cond_21
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport shader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createGaussianBlurEffectFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "uniform sampler2D uDiffuseMap;\nconst lowp int GAUSSIAN_SAMPLES = 9;\nvarying vec2 vTexCoord;\nvarying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\nvoid main() {\n    lowp vec4 sum = vec4(0.0);\n    sum += texture2D(uDiffuseMap, blurCoordinates[0]) * 0.05;\n    sum += texture2D(uDiffuseMap, blurCoordinates[1]) * 0.09;\n    sum += texture2D(uDiffuseMap, blurCoordinates[2]) * 0.12;\n    sum += texture2D(uDiffuseMap, blurCoordinates[3]) * 0.15;\n    sum += texture2D(uDiffuseMap, blurCoordinates[4]) * 0.18;\n    sum += texture2D(uDiffuseMap, blurCoordinates[5]) * 0.15;\n    sum += texture2D(uDiffuseMap, blurCoordinates[6]) * 0.12;\n    sum += texture2D(uDiffuseMap, blurCoordinates[7]) * 0.09;\n    sum += texture2D(uDiffuseMap, blurCoordinates[8]) * 0.05;\n    gl_FragColor = sum;\n}"

    .line 276
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createGaussianBlurEffectVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "attribute vec3 aPosition;\nattribute vec2 aTexCoord;\nconst lowp int GAUSSIAN_SAMPLES = 9;\nuniform mat4 uMVPMat;\nuniform highp float texelWidthOffset;\nuniform highp float texelHeightOffset;\nuniform highp float blurSize;\nvarying vec2 vTexCoord;\nvarying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n    int multiplier = 0;\n    highp vec2 blurStep;\n    highp vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset) * blurSize;\n    for (lowp int i = 0; i < GAUSSIAN_SAMPLES; i++) {\n        multiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n        blurStep = float(multiplier) * singleStepOffset;\n        blurCoordinates[i] = aTexCoord.xy + blurStep;\n    }\n}"

    .line 251
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createGaussianBlurFragmentShaderString(I)Ljava/lang/String;
    .locals 18
    .param p0, "radius"    # I

    .prologue
    .line 1104
    const v4, 0x402df854    # (float)Math.E

    .line 1105
    .local v4, "e":F
    const v8, 0x40490fdb    # (float)Math.PI

    .line 1116
    .local v8, "pi":F
    const v13, 0x3eaaaaab

    move/from16 v0, p0

    int-to-float v14, v0

    mul-float v11, v13, v14

    .line 1120
    .local v11, "sigma":F
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v14, v14

    div-float v2, v13, v14

    .line 1121
    .local v2, "coeff1":F
    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    mul-float/2addr v14, v11

    div-float v3, v13, v14

    .line 1123
    .local v3, "coeff2":F
    const/4 v7, 0x0

    .line 1124
    .local v7, "normalizeFactor":F
    const/4 v5, 0x0

    .line 1125
    .local v5, "floatR":F
    mul-int/lit8 v13, p0, 0x2

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [F

    .line 1127
    .local v6, "mFp":[F
    move/from16 v0, p0

    neg-int v9, v0

    .local v9, "r":I
    :goto_0
    move/from16 v0, p0

    if-gt v9, v0, :cond_0

    .line 1128
    int-to-float v5, v9

    .line 1129
    add-int v13, v9, p0

    float-to-double v14, v4

    mul-float v16, v5, v5

    mul-float v16, v16, v3

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v2

    aput v14, v6, v13

    .line 1131
    add-int v13, v9, p0

    aget v13, v6, v13

    add-float/2addr v7, v13

    .line 1127
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1133
    :cond_0
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v7, v13, v7

    .line 1134
    move/from16 v0, p0

    neg-int v9, v0

    :goto_1
    move/from16 v0, p0

    if-gt v9, v0, :cond_1

    .line 1135
    add-int v13, v9, p0

    aget v14, v6, v13

    mul-float/2addr v14, v7

    aput v14, v6, v13

    .line 1134
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1137
    :cond_1
    const-string v10, "precision lowp float;\nuniform sampler2D uDiffuseMap;\nuniform highp float uTexelWidthOffset;\nuniform highp float uTexelHeightOffset;\nvarying vec2 vTexCoord;\nvoid main()\n{\n    vec4 sum = vec4(0.0);\n    vec2 singleStepOffset = vec2(uTexelWidthOffset,uTexelHeightOffset);\n"

    .line 1149
    .local v10, "shaderString":Ljava/lang/String;
    move/from16 v0, p0

    neg-int v9, v0

    :goto_2
    move/from16 v0, p0

    if-gt v9, v0, :cond_2

    .line 1150
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    sum += texture2D(uDiffuseMap , vTexCoord + singleStepOffset * float("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")) * "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int v14, v9, p0

    aget v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1152
    .local v12, "text1":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1149
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1154
    .end local v12    # "text1":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "    gl_FragColor = vec4(sum.r, sum.g, sum.b, 1.0);\n}\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1155
    return-object v10
.end method

.method private static createGaussianBlurFragmentShaderString(IF)Ljava/lang/String;
    .locals 24
    .param p0, "blurRadius"    # I
    .param p1, "sigma"    # F

    .prologue
    .line 1204
    add-int/lit8 v14, p0, 0x1

    new-array v11, v14, [F

    .line 1205
    .local v11, "standardGaussianWeights":[F
    const/4 v12, 0x0

    .line 1206
    .local v12, "sumOfWeights":F
    const/4 v3, 0x0

    .local v3, "currentGaussianWeightIndex":I
    :goto_0
    add-int/lit8 v14, p0, 0x1

    if-ge v3, v14, :cond_1

    .line 1208
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    div-double v14, v14, v16

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v11, v3

    .line 1209
    if-nez v3, :cond_0

    .line 1211
    aget v14, v11, v3

    add-float/2addr v12, v14

    .line 1206
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1215
    :cond_0
    float-to-double v14, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    aget v18, v11, v3

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v12, v14

    goto :goto_1

    .line 1218
    :cond_1
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v14, p0, 0x1

    if-ge v3, v14, :cond_2

    .line 1220
    aget v14, v11, v3

    div-float/2addr v14, v12

    aput v14, v11, v3

    .line 1218
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1224
    :cond_2
    div-int/lit8 v14, p0, 0x2

    rem-int/lit8 v15, p0, 0x2

    add-int/2addr v14, v15

    const/4 v15, 0x7

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1225
    .local v6, "numberOfOptimizedOffsets":I
    div-int/lit8 v14, p0, 0x2

    rem-int/lit8 v15, p0, 0x2

    add-int v13, v14, v15

    .line 1226
    .local v13, "trueNumberOfOptimizedOffsets":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uniform sampler2D uDiffuseMap;\nuniform highp float uTexelWidthOffset;\nuniform highp float uTexelHeightOffset;\nvarying highp vec2 blurCoordinates["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "];\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "void main()\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "{\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    lowp vec4 sum = vec4(0.0);\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    sum += texture2D("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "uDiffuseMap"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", blurCoordinates[0]) * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1234
    .local v10, "shaderString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "currentBlurCoordinateIndex":I
    :goto_3
    if-ge v2, v6, :cond_3

    .line 1236
    mul-int/lit8 v14, v2, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v5, v11, v14

    .line 1237
    .local v5, "firstWeight":F
    mul-int/lit8 v14, v2, 0x2

    add-int/lit8 v14, v14, 0x2

    aget v9, v11, v14

    .line 1238
    .local v9, "secondWeight":F
    add-float v8, v5, v9

    .line 1240
    .local v8, "optimizedWeight":F
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    sum += texture2D(uDiffuseMap, blurCoordinates["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v2, 0x2

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]) * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    sum += texture2D(uDiffuseMap, blurCoordinates["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v2, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]) * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1244
    .end local v5    # "firstWeight":F
    .end local v8    # "optimizedWeight":F
    .end local v9    # "secondWeight":F
    :cond_3
    if-le v13, v6, :cond_4

    .line 1246
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    highp vec2 singleStepOffset = vec2(uTexelWidthOffset,uTexelHeightOffset);\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1250
    move v4, v6

    .local v4, "currentOverlowTextureRead":I
    :goto_4
    if-ge v4, v13, :cond_4

    .line 1252
    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v5, v11, v14

    .line 1253
    .restart local v5    # "firstWeight":F
    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x2

    aget v9, v11, v14

    .line 1255
    .restart local v9    # "secondWeight":F
    add-float v8, v5, v9

    .line 1256
    .restart local v8    # "optimizedWeight":F
    mul-int/lit8 v14, v4, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    mul-float/2addr v14, v5

    mul-int/lit8 v15, v4, 0x2

    add-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    mul-float/2addr v15, v9

    add-float/2addr v14, v15

    div-float v7, v14, v8

    .line 1258
    .local v7, "optimizedOffset":F
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    sum += texture2D(uDiffuseMap, blurCoordinates[0] + singleStepOffset * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1259
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    sum += texture2D(uDiffuseMap, blurCoordinates[0] - singleStepOffset * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1250
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1263
    .end local v4    # "currentOverlowTextureRead":I
    .end local v5    # "firstWeight":F
    .end local v7    # "optimizedOffset":F
    .end local v8    # "optimizedWeight":F
    .end local v9    # "secondWeight":F
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    gl_FragColor = sum;\n}\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1264
    return-object v10
.end method

.method private static createGaussianBlurVertexShaderString(I)Ljava/lang/String;
    .locals 1
    .param p0, "radius"    # I

    .prologue
    .line 1091
    const-string v0, "attribute vec4 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main()\n{\n    gl_Position = aPosition;\n    vTexCoord = aTexCoord;\n}\n"

    .line 1099
    .local v0, "shaderString":Ljava/lang/String;
    return-object v0
.end method

.method private static createGaussianBlurVertexShaderString(IF)Ljava/lang/String;
    .locals 22
    .param p0, "blurRadius"    # I
    .param p1, "sigma"    # F

    .prologue
    .line 1160
    add-int/lit8 v12, p0, 0x1

    new-array v10, v12, [F

    .line 1161
    .local v10, "standardGaussianWeights":[F
    const/4 v11, 0x0

    .line 1162
    .local v11, "sumOfWeights":F
    const/4 v2, 0x0

    .local v2, "currentGaussianWeightIndex":I
    :goto_0
    add-int/lit8 v12, p0, 0x1

    if-ge v2, v12, :cond_1

    .line 1163
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v12, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    neg-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v12, v13

    aput v12, v10, v2

    .line 1164
    if-nez v2, :cond_0

    .line 1165
    aget v12, v10, v2

    add-float/2addr v11, v12

    .line 1162
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    :cond_0
    const/high16 v12, 0x40000000    # 2.0f

    aget v13, v10, v2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_1

    .line 1170
    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v12, p0, 0x1

    if-ge v2, v12, :cond_2

    .line 1171
    aget v12, v10, v2

    div-float/2addr v12, v11

    aput v12, v10, v2

    .line 1170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1173
    :cond_2
    div-int/lit8 v12, p0, 0x2

    rem-int/lit8 v13, p0, 0x2

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1174
    .local v5, "numberOfOptimizedOffsets":I
    new-array v6, v5, [F

    .line 1175
    .local v6, "optimizedGaussianOffsets":[F
    const/4 v3, 0x0

    .local v3, "currentOptimizedOffset":I
    :goto_3
    if-ge v3, v5, :cond_3

    .line 1176
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget v4, v10, v12

    .line 1177
    .local v4, "firstWeight":F
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x2

    aget v8, v10, v12

    .line 1178
    .local v8, "secondWeight":F
    add-float v7, v4, v8

    .line 1179
    .local v7, "optimizedWeight":F
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    mul-float/2addr v12, v4

    mul-int/lit8 v13, v3, 0x2

    add-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    div-float/2addr v12, v7

    aput v12, v6, v3

    .line 1175
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1181
    .end local v4    # "firstWeight":F
    .end local v7    # "optimizedWeight":F
    .end local v8    # "secondWeight":F
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attribute vec4 aPosition;\nattribute vec2 aTexCoord;\nuniform float uTexelWidthOffset;\nuniform float uTexelHeightOffset;\nvarying vec2 blurCoordinates["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v5, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "];\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "void main()\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "{\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    gl_Position = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "aPosition"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    vec2 singleStepOffset = vec2("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "uTexelWidthOffset"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "uTexelHeightOffset"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ");\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    blurCoordinates[0] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "aTexCoord"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ;\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1191
    .local v9, "shaderString":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    .line 1192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    blurCoordinates["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v3, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "aTexCoord"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " + singleStepOffset * "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v6, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    blurCoordinates["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v3, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "aTexCoord"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - singleStepOffset * "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v6, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1191
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1199
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1200
    return-object v9
.end method

.method private static createGlobalColorFragmentShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 990
    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvoid main() {\n"

    .line 993
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_FragColor = uModularColor;\n}\n"

    .line 994
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static createGlobalColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n}\n"

    .line 987
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createInnerShadowColorFragmentShader()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1011
    const-string v0, "float createColor(float x, float lstart, float lend, float rstart, float rend, float alphaLStart, float alphaLEnd, float alphaRStart, float alphaREnd) {\n    float n = 0.0;\n    if((x >= lstart && x <= lend) || (x >= rstart && x <= rend)) {\n        float x1, x2, a, b;\n        if(x >= lstart && x <= lend) {\n            x1 = lstart;\n            x2 = lend;\n            a = alphaLStart;\n            b = alphaLEnd;\n        } else {\n            x1 = rstart;\n            x2 = rend;\n            a = alphaRStart;\n            b = alphaREnd;\n        }\n        if(x1 == 0.0 && x2 == 0.0) {\n              n = 0.0;\n        } else {\n            n = a + (b - a) * (x - x1) / (x2 - x1);\n        }\n    } else {\n        if(x > lend && x < rstart) {\n            n = 0.0;\n        } else {\n            n = 1.0;\n        }\n    }\n    return n;\n}\n"

    .line 1040
    .local v0, "func":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;\nuniform vec4 uInnerShadowSizeH;\nuniform vec4 uInnerShadowAlphaRangeH;\nuniform vec4 uInnerShadowSizeV;\nuniform vec4 uInnerShadowAlphaRangeV;\nuniform sampler2D uDiffuseMap;\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "void main() {\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1052
    .local v5, "text":Ljava/lang/String;
    const-string v1, "    //int count = 0;\n    float lStart = uInnerShadowSizeH.x ;\n    float lEnd = uInnerShadowSizeH.y ;\n    float rStart = uInnerShadowSizeH.z;\n    float rEnd = uInnerShadowSizeH.w;\n    float bStart = uInnerShadowSizeV.x;\n    float bEnd = uInnerShadowSizeV.y;\n    float tStart = uInnerShadowSizeV.z;\n    float tEnd = uInnerShadowSizeV.w;\n    float alphaLStart = uInnerShadowAlphaRangeH.x;\n    float alphaLEnd = uInnerShadowAlphaRangeH.y;\n    float alphaRStart = uInnerShadowAlphaRangeH.z;\n    float alphaREnd = uInnerShadowAlphaRangeH.w;\n    float alphaBStart = uInnerShadowAlphaRangeV.x;\n    float alphaBEnd = uInnerShadowAlphaRangeV.y;\n    float alphaTStart = uInnerShadowAlphaRangeV.z;\n    float alphaTEnd = uInnerShadowAlphaRangeV.w;\n"

    .line 1069
    .local v1, "t1":Ljava/lang/String;
    const-string v2, "    float x = vTexCoord.x;\n    float y = vTexCoord.y;\n"

    .line 1071
    .local v2, "t2":Ljava/lang/String;
    const-string v3, "    vec4 color = uModularColor;\n"

    .line 1072
    .local v3, "t3":Ljava/lang/String;
    const-string v4, "    float nx = createColor(x, lStart, lEnd , rStart, rEnd, alphaLStart, alphaLEnd, alphaRStart, alphaREnd);\n    float ny = createColor(y, bStart, bEnd , tStart, tEnd, alphaBStart, alphaBEnd, alphaTStart, alphaTEnd);\n    //if(nl > 0.0)  count++ ;\n    //if(nr > 0.0)  count++ ;\n    //if(nb > 0.0)  count++ ;\n    //if(nt > 0.0)  count++ ;\n    //if(count > 0) {\n    color.a = color.a * min((nx + ny), 1.0);\n    //} else {\n    //    color.a = 0.0;\n    //}\n    gl_FragColor = color;\n"

    .line 1086
    .local v4, "t4":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static createInnerShadowColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 1008
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method public static createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1799
    const-string v3, "SimpleTextureMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1800
    const-string v3, "SimpleTextureMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1801
    .local v2, "vs":Ljava/lang/String;
    const-string v3, "SimpleTextureMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/SimpleTextureMaterial;

    const-string v3, "SimpleTextureMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    .end local v0    # "fs":Ljava/lang/String;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1804
    :cond_1
    const-string v3, "SimpleTextureDirLightMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1805
    const-string v3, "SimpleTextureDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1806
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "SimpleTextureDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/SimpleTextureWithDirLightMaterial;

    const-string v3, "SimpleTextureDirLightMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureWithDirLightMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/SimpleTextureWithDirLightMaterial;
    goto :goto_0

    .line 1809
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/SimpleTextureWithDirLightMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_2
    const-string v3, "VertexColorTextureMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1810
    const-string v3, "VertexColorTextureMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1811
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "VertexColorTextureMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;

    const-string v3, "VertexColorTextureMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;
    goto :goto_0

    .line 1814
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_3
    const-string v3, "TextureModularAlphaMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1815
    const-string v3, "TextureModularAlphaMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1816
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureModularAlphaMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureAlphaMaterial;

    const-string v3, "TextureModularAlphaMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureAlphaMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureAlphaMaterial;
    goto :goto_0

    .line 1819
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureAlphaMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_4
    const-string v3, "SimpleColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1820
    const-string v3, "SimpleColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1821
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "SimpleColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1822
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/SimpleColorMaterial;

    const-string v3, "SimpleColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/SimpleColorMaterial;
    goto :goto_0

    .line 1824
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/SimpleColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_5
    const-string v3, "TextureModularColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1825
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1826
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1827
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;

    const-string v3, "TextureModularColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;
    goto/16 :goto_0

    .line 1829
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureModularColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_6
    const-string v3, "TextureBlendModularColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1830
    const-string v3, "TextureBlendModularColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1831
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBlendModularColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;

    const-string v3, "TextureBlendModularColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;
    goto/16 :goto_0

    .line 1834
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_7
    const-string v3, "TextureTextureModularMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1835
    const-string v3, "TextureTextureModularMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1836
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureTextureModularMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1837
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureTextureModularMaterial;

    const-string v3, "TextureTextureModularMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureTextureModularMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureTextureModularMaterial;
    goto/16 :goto_0

    .line 1839
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureTextureModularMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_8
    const-string v3, "TextureBatch9Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1840
    const-string v3, "TextureBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1841
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;

    const-string v3, "TextureBatch9Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    goto/16 :goto_0

    .line 1844
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_9
    const-string v3, "TextureBatch16Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1845
    const-string v3, "TextureBatch16Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1846
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch16Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;

    const-string v3, "TextureBatch16Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    goto/16 :goto_0

    .line 1849
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_a
    const-string v3, "TwoTextureBatch9Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1850
    const-string v3, "TwoTextureBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1851
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TwoTextureBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1852
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;

    const-string v3, "TwoTextureBatch9Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;
    goto/16 :goto_0

    .line 1854
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_b
    const-string v3, "TwoTextureBatch16Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1855
    const-string v3, "TwoTextureBatch16Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1856
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TwoTextureBatch16Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1857
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;

    const-string v3, "TwoTextureBatch16Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;
    goto/16 :goto_0

    .line 1859
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureBatchMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_c
    const-string v3, "GlobalColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1860
    const-string v3, "GlobalColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1861
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "GlobalColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1862
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/GlobalColorMaterial;

    const-string v3, "GlobalColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/GlobalColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/GlobalColorMaterial;
    goto/16 :goto_0

    .line 1864
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/GlobalColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_d
    const-string v3, "SimpleTextureClipPlaneMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1869
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1870
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1871
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;

    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;
    goto/16 :goto_0

    .line 1874
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_e
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1875
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1876
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1877
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;

    const-string v3, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;
    goto/16 :goto_0

    .line 1879
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/DiffuseShadowDifferentTexCoordMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_f
    const-string v3, "TextureTexCoordLimitMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1880
    const-string v3, "TextureTexCoordLimitMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1881
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureTexCoordLimitMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1882
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;

    const-string v3, "TextureTexCoordLimitMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;
    goto/16 :goto_0

    .line 1884
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/SimpleTextureTexCoordLimitXYMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_10
    const-string v3, "InnerShadowColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1885
    const-string v3, "InnerShadowColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1886
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "InnerShadowColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1887
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;

    const-string v3, "InnerShadowColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;
    goto/16 :goto_0

    .line 1889
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/InnerShadowColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_11
    const-string v3, "TextureModularColorAlphaTestMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1890
    const-string v3, "TextureModularColorAlphaTestMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1891
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureModularColorAlphaTestMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureModularColorAlphaTestMaterial;

    const-string v3, "TextureModularColorAlphaTestMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureModularColorAlphaTestMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureModularColorAlphaTestMaterial;
    goto/16 :goto_0

    .line 1894
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureModularColorAlphaTestMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_12
    const-string v3, "GaussianBlurEffectMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1895
    const-string v3, "SoftLightEffectMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1896
    const-string v3, "SoftLightEffectMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1897
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "SoftLightEffectMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1898
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;

    const-string v3, "SoftLightEffectMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;
    goto/16 :goto_0

    .line 1900
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/SoftLightMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_13
    const-string v3, "TwoTexDifferentTexcoordMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1901
    const-string v3, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1902
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    const-string v3, "TwoTexDifferentTexcoordMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;
    goto/16 :goto_0

    .line 1905
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_14
    const-string v3, "TwoTexDifferentTexColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1906
    const-string v3, "TwoTexDifferentTexColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1907
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TwoTexDifferentTexColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;

    const-string v3, "TwoTexDifferentTexColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;
    goto/16 :goto_0

    .line 1910
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_15
    const-string v3, "TextureMaskModularMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1911
    const-string v3, "TextureMaskModularMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1912
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureMaskModularMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1913
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;

    const-string v3, "TextureMaskModularMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;
    goto/16 :goto_0

    .line 1915
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureMaskModularMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_16
    const-string v3, "TextureMaskModularClipPlaneMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1916
    const-string v3, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1917
    const-string v3, "TextureBatch9WithDirLightMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1918
    const-string v3, "TextureBatch9WithDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1919
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch9WithDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1920
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;

    const-string v3, "TextureBatch9WithDirLightMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    goto/16 :goto_0

    .line 1922
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_17
    const-string v3, "TextureBatch16WithDirLightMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1923
    const-string v3, "TextureBatch16WithDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1924
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch16WithDirLightMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;

    const-string v3, "TextureBatch16WithDirLightMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    goto/16 :goto_0

    .line 1927
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_18
    const-string v3, "DrawMultiTimesMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1928
    const-string v3, "DrawMultiTimesMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1929
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "DrawMultiTimesMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;

    const-string v3, "DrawMultiTimesMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;
    goto/16 :goto_0

    .line 1932
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/DrawMultiTimesMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_19
    const-string v3, "TextureBatch6Material"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1933
    const-string v3, "TextureBatch6Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch6Material"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1935
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;

    const-string v3, "TextureBatch6Material"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchEasyModeMaterail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    goto/16 :goto_0

    .line 1937
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_1a
    const-string v3, "TexturePreColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1938
    const-string v3, "TexturePreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1939
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TexturePreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;

    const-string v3, "TexturePreColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;
    goto/16 :goto_0

    .line 1942
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_1b
    const-string v3, "TextureBatch9PreColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1943
    const-string v3, "TextureBatch9PreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1944
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch9PreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;

    const-string v3, "TextureBatch9PreColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;
    goto/16 :goto_0

    .line 1947
    .end local v0    # "fs":Ljava/lang/String;
    .end local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;
    .end local v2    # "vs":Ljava/lang/String;
    :cond_1c
    const-string v3, "TextureBatch16PreColorMaterial"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1948
    const-string v3, "TextureBatch16PreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1949
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v3, "TextureBatch16PreColorMaterial"

    invoke-static {v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    .restart local v0    # "fs":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;

    const-string v3, "TextureBatch16PreColorMaterial"

    invoke-direct {v1, v3, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    .restart local v1    # "m":Lcom/smartisanos/smengine/mymaterial/TextureBatchPreColorMaterial;
    goto/16 :goto_0
.end method

.method public static createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/smartisanos/smengine/mymaterial/Material;"
        }
    .end annotation

    .prologue
    .line 1761
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v4, "SimpleTextureClipPlaneMaterial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1762
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, "shaderKey":Ljava/lang/String;
    const-string v4, "SimpleTextureClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1764
    .local v2, "vs":Ljava/lang/String;
    const-string v4, "SimpleTextureClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1765
    .local v3, "fs":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/smartisanos/smengine/mymaterial/SimpleTextureModularColorClipPlaneMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1795
    .end local v1    # "shaderKey":Ljava/lang/String;
    .end local v2    # "vs":Ljava/lang/String;
    .end local v3    # "fs":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1767
    :cond_0
    const-string v4, "TextureMaskModularClipPlaneMaterial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1768
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1769
    .restart local v1    # "shaderKey":Ljava/lang/String;
    const-string v4, "TextureMaskModularClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1770
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v4, "TextureMaskModularClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1771
    .restart local v3    # "fs":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularClipPlaneMaterial;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/smartisanos/smengine/mymaterial/TextureMaskModularClipPlaneMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1772
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/TextureMaskModularClipPlaneMaterial;
    goto :goto_0

    .line 1773
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/TextureMaskModularClipPlaneMaterial;
    .end local v1    # "shaderKey":Ljava/lang/String;
    .end local v2    # "vs":Ljava/lang/String;
    .end local v3    # "fs":Ljava/lang/String;
    :cond_1
    const-string v4, "GaussianBlurEffectMaterial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1774
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .restart local v1    # "shaderKey":Ljava/lang/String;
    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1776
    .local v8, "paramBlurRadius":Ljava/lang/Integer;
    if-eqz p2, :cond_2

    .line 1777
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "paramBlurRadius":Ljava/lang/Integer;
    check-cast v8, Ljava/lang/Integer;

    .line 1779
    .restart local v8    # "paramBlurRadius":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1780
    .local v6, "blurRadius":I
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSampleRadiusInPixel(I)I

    move-result v9

    .line 1781
    .local v9, "sampleRadius":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v7, "newParams":Ljava/util/ArrayList;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    const-string v4, "GaussianBlurEffectMaterial"

    invoke-static {v4, v6, v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1785
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v4, "GaussianBlurEffectMaterial"

    invoke-static {v4, v6, v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1786
    .restart local v3    # "fs":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    goto :goto_0

    .line 1788
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    .end local v1    # "shaderKey":Ljava/lang/String;
    .end local v2    # "vs":Ljava/lang/String;
    .end local v3    # "fs":Ljava/lang/String;
    .end local v6    # "blurRadius":I
    .end local v7    # "newParams":Ljava/util/ArrayList;
    .end local v8    # "paramBlurRadius":Ljava/lang/Integer;
    .end local v9    # "sampleRadius":I
    :cond_3
    const-string v4, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1789
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1790
    .restart local v1    # "shaderKey":Ljava/lang/String;
    const-string v4, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1791
    .restart local v2    # "vs":Ljava/lang/String;
    const-string v4, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-static {v4, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1792
    .restart local v3    # "fs":Ljava/lang/String;
    new-instance v0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1793
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;
    goto/16 :goto_0

    .line 1795
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/TwoTextureDiffCoordModularColorClipPlane;
    .end local v1    # "shaderKey":Ljava/lang/String;
    .end local v2    # "vs":Ljava/lang/String;
    .end local v3    # "fs":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static createSampleRadiusInPixel(I)I
    .locals 12
    .param p0, "blurRadius"    # I

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1747
    const/high16 v1, 0x3b800000    # 0.00390625f

    .line 1748
    .local v1, "minimumWeightToFindEdgeOfSamplingArea":F
    const/high16 v2, -0x40000000    # -2.0f

    int-to-double v4, p0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, p0

    .line 1750
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 1749
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 1748
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1751
    .local v0, "calculatedSampleRadius":I
    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    .line 1752
    return v0
.end method

.method private static createSimpleColorFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    const-string v1, "precision mediump float;\nvarying vec4 vVertexColor;\nvoid main() {\n"

    .line 478
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_FragColor = vec4(vVertexColor);\n"

    .line 479
    .local v0, "assignColor":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    return-object v1
.end method

.method private static createSimpleColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec4 aColors;\nvarying vec4 vVertexColor;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvVertexColor = aColors;\n}\n"

    .line 472
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleMaterialFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor;\n}\n"

    .line 102
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleMaterialVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 97
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleMaterialWithDirLightFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying float result;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor * vec4(result, result, result, 1.0);\n}\n"

    .line 135
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleMaterialWithDirLightVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "attribute vec3 aNormals;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uMVPMat;\nuniform mat4 uWorldMat;\nuniform vec3 uLightDir;\nvarying vec2 vTexCoord;\nvarying float result;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n    vTexCoord = aTexCoord;\n    vec4 normalSrc = uWorldMat * vec4(aNormals, 1.0);\n    vec4 normalDes = uWorldMat * vec4(0.0, 0.0, 0.0, 1.0);\n    vec3 normal = normalSrc.xyz - normalDes.xyz;\n    result = 0.4 + 0.6 * max(0.0, dot(normal, uLightDir));\n}\n"

    .line 123
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleTexCoordLimitXYMaterialFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec2 uTexCoordLimitXY;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    vec4 totalColor = diffuseMapColor;\n    if(vTexCoord.x < uTexCoordLimitXY.x) {\n        totalColor.a = 0.0;\n    }\n    gl_FragColor = totalColor;\n}\n"

    .line 304
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleTexCoordLimitXYMaterialVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "uniform mat4 uMVPMat;\n//invariant gl_Position;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 289
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSimpleTextureModularColorClipPlaneFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 971
    const-string v2, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    .line 976
    .local v2, "text":Ljava/lang/String;
    const-string v0, "    if(vClipDist < 0.0) {\n        discard;}\n"

    .line 978
    .local v0, "c1":Ljava/lang/String;
    const-string v1, "    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor.rgba * uModularColor.rgba ;\n}\n"

    .line 980
    .local v1, "c2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createSimpleTextureModularColorClipPlaneVertexShader(I)Ljava/lang/String;
    .locals 12
    .param p0, "mode"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 937
    const/4 v6, 0x0

    .line 938
    .local v6, "define":Ljava/lang/String;
    if-ne p0, v10, :cond_0

    .line 939
    const-string v6, "uniform mat4 uWorldMat;\n"

    .line 945
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "attribute vec3 aPosition;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "varying vec2 vTexCoord;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "varying float vClipDist;\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "void main() {\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 954
    .local v7, "text":Ljava/lang/String;
    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    .line 956
    .local v0, "c0":Ljava/lang/String;
    const-string v2, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    .line 957
    .local v2, "c1":Ljava/lang/String;
    const-string v1, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    .line 958
    .local v1, "c00":Ljava/lang/String;
    const-string v3, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    .line 960
    .local v3, "c2":Ljava/lang/String;
    const-string v4, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    .line 961
    .local v4, "c3":Ljava/lang/String;
    const-string v5, "vTexCoord = aTexCoord;\n"

    .line 962
    .local v5, "c4":Ljava/lang/String;
    if-ne p0, v10, :cond_2

    .line 963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 965
    :goto_1
    return-object v8

    .line 940
    .end local v0    # "c0":Ljava/lang/String;
    .end local v1    # "c00":Ljava/lang/String;
    .end local v2    # "c1":Ljava/lang/String;
    .end local v3    # "c2":Ljava/lang/String;
    .end local v4    # "c3":Ljava/lang/String;
    .end local v5    # "c4":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    :cond_0
    if-ne p0, v11, :cond_1

    .line 941
    const-string v6, "uniform vec3 uLocalTranslate;\n"

    goto :goto_0

    .line 943
    :cond_1
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 964
    .restart local v0    # "c0":Ljava/lang/String;
    .restart local v1    # "c00":Ljava/lang/String;
    .restart local v2    # "c1":Ljava/lang/String;
    .restart local v3    # "c2":Ljava/lang/String;
    .restart local v4    # "c3":Ljava/lang/String;
    .restart local v5    # "c4":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_2
    if-ne p0, v11, :cond_3

    .line 965
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 967
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static createSoftLightFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "uniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvarying vec2 vTexCoord;\nfloat softlight(float top, float bottom) { \n    if(bottom < 0.5) {\n        return 2.0 * top * bottom + top * top * ( 1.0 - 2.0 * bottom);\n    } else {\n        return sqrt(top) * (2.0 * bottom - 1.0) + 2.0 * top * (1.0 - bottom);\n    }\n}\nvoid main() {\n     lowp vec4 textureColor = texture2D(uDiffuseMap,vTexCoord);\n     lowp vec4 overlay = texture2D(uShadowMap,vTexCoord);\n     lowp vec4 base = textureColor;\n     lowp vec4 outputColor;\n     outputColor.r = softlight(base.r, overlay.r);\n     outputColor.g = softlight(base.g, overlay.g);\n     outputColor.b = softlight(base.b, overlay.b);\n     outputColor.a = softlight(base.a, overlay.a);\n     outputColor = outputColor * overlay.a + (1.0 - overlay.a) * base;\n      outputColor.a = 1.0;\n     gl_FragColor = outputColor;\n}\n"

    .line 220
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createSoftLightVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "attribute vec3 aPosition;\nattribute vec2 aTexCoord;\nuniform mat4 uMVPMat;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 171
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureBatch16FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 735
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 741
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 743
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    return-object v1
.end method

.method private static createTextureBatch16PreColorFragmentShader()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1497
    const-string v4, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uBlendColor;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1504
    .local v4, "text":Ljava/lang/String;
    const-string v2, "diffuseMapColor.r = uBlendColor.a * uBlendColor.r + (1.0 - uBlendColor.a) * diffuseMapColor.r;\n"

    .line 1508
    .local v2, "alphaModularR":Ljava/lang/String;
    const-string v1, "diffuseMapColor.g = uBlendColor.a * uBlendColor.g + (1.0 - uBlendColor.a) * diffuseMapColor.g;\n"

    .line 1512
    .local v1, "alphaModularG":Ljava/lang/String;
    const-string v0, "diffuseMapColor.b = uBlendColor.a * uBlendColor.b + (1.0 - uBlendColor.a) * diffuseMapColor.b;\n"

    .line 1516
    .local v0, "alphaModularB":Ljava/lang/String;
    const-string v3, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 1518
    .local v3, "fragColorAssign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1520
    return-object v4
.end method

.method private static createTextureBatch16PreColorVertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1479
    const-string v1, "uniform mat4 uMVPMatArray16[16];\nuniform vec4 uModularColorArray16[16];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 1487
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray16[matrixIndex];\n    vec4 currentColor = uModularColorArray16[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 1493
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1494
    return-object v1
.end method

.method private static createTextureBatch16VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 717
    const-string v1, "uniform mat4 uMVPMatArray16[16];\nuniform vec4 uModularColorArray16[16];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 725
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray16[matrixIndex];\n    vec4 currentColor = uModularColorArray16[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 731
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    return-object v1
.end method

.method private static createTextureBatch16WithDirLightFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1348
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvarying vec3 vModelSpaceDiffuseColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1355
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba  * vec4(vModelSpaceDiffuseColor,1.0).rgba;\n"

    .line 1357
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    return-object v1
.end method

.method private static createTextureBatch16WithDirLightVertexShader()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1315
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v6, v6, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1316
    .local v3, "src":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Camera;->getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v1

    .line 1317
    .local v1, "des":Lcom/smartisanos/smengine/math/Vector4f;
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v6, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    div-float v2, v5, v6

    .line 1318
    .local v2, "screenDepth":F
    const-string v4, "uniform mat4 uMVPMatArray16[16];\nuniform vec4 uModularColorArray16[16];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nuniform vec3 uModelSpaceLightDir[16];\nvarying vec3 vModelSpaceDiffuseColor;\nvoid main() {\n"

    .line 1328
    .local v4, "text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray16[matrixIndex];\n    vec4 currentColor = uModularColorArray16[matrixIndex];\nvModularColor = currentColor;\n    vec3 currentNormal = vec3(0.0, 0.0, 1.0);\n    vec3 currentLightDir = uModelSpaceLightDir[matrixIndex];\n    vec3 lightdir = clamp(currentLightDir,vec3(-1.0,-1.0,-1.0),vec3(1.0,1.0,1.0));\n    float result =  0.4 + 0.6 * max(0.0, dot(currentNormal,normalize(lightdir)));\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\n    float screenDepth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    float depth = (gl_Position.z / gl_Position.w - screenDepth)/(1.0 - screenDepth);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    depth = sin(depth * 0.8);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    result = result - depth;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vModelSpaceDiffuseColor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vec3(result)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vTexCoord = aTexCoord;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "c1":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1345
    return-object v4
.end method

.method private static createTextureBatch6FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1382
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1388
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 1390
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    return-object v1
.end method

.method private static createTextureBatch6VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1364
    const-string v1, "uniform mat4 uMVPMatArray6[6];\nuniform vec4 uModularColorArray6[6];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 1372
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray6[matrixIndex];\n    vec4 currentColor = uModularColorArray6[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 1378
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    return-object v1
.end method

.method private static createTextureBatch9FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 703
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 709
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 711
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    return-object v1
.end method

.method private static createTextureBatch9PreColorFragmentShader()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1452
    const-string v4, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform vec4 uBlendColor;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1459
    .local v4, "text":Ljava/lang/String;
    const-string v2, "diffuseMapColor.r = uBlendColor.a * uBlendColor.r + (1.0 - uBlendColor.a) * diffuseMapColor.r;\n"

    .line 1463
    .local v2, "alphaModularR":Ljava/lang/String;
    const-string v1, "diffuseMapColor.g = uBlendColor.a * uBlendColor.g + (1.0 - uBlendColor.a) * diffuseMapColor.g;\n"

    .line 1467
    .local v1, "alphaModularG":Ljava/lang/String;
    const-string v0, "diffuseMapColor.b = uBlendColor.a * uBlendColor.b + (1.0 - uBlendColor.a) * diffuseMapColor.b;\n"

    .line 1471
    .local v0, "alphaModularB":Ljava/lang/String;
    const-string v3, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba ;\n"

    .line 1473
    .local v3, "fragColorAssign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1475
    return-object v4
.end method

.method private static createTextureBatch9PreColorVertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1434
    const-string v1, "uniform mat4 uMVPMatArray9[9];\nuniform vec4 uModularColorArray9[9];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 1442
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    vec4 currentColor = uModularColorArray9[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 1448
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    return-object v1
.end method

.method private static createTextureBatch9VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    const-string v1, "uniform mat4 uMVPMatArray9[9];\nuniform vec4 uModularColorArray9[9];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 693
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    vec4 currentColor = uModularColorArray9[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 699
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    return-object v1
.end method

.method private static createTextureBatch9WithDirLightFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1300
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvarying vec4 vModularColor;\nvarying vec3 vModelSpaceDiffuseColor;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1307
    .local v1, "text":Ljava/lang/String;
    const-string v0, "  gl_FragColor = diffuseMapColor.rgba * vModularColor.rgba  * vec4(vModelSpaceDiffuseColor,1.0).rgba;\n"

    .line 1309
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1311
    return-object v1
.end method

.method private static createTextureBatch9WithDirLightVertexShader()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1268
    new-instance v3, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v6, v6, v5}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1269
    .local v3, "src":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Camera;->getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v1

    .line 1270
    .local v1, "des":Lcom/smartisanos/smengine/math/Vector4f;
    iget v5, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v6, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    div-float v2, v5, v6

    .line 1271
    .local v2, "screenDepth":F
    const-string v4, "uniform mat4 uMVPMatArray9[9];\nuniform vec4 uModularColorArray9[9];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec4 vModularColor;\nuniform vec3 uModelSpaceLightDir[9];\nvarying vec3 vModelSpaceDiffuseColor;\nvoid main() {\n"

    .line 1281
    .local v4, "text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    vec4 currentColor = uModularColorArray9[matrixIndex];\nvModularColor = currentColor;\n    vec3 currentNormal = vec3(0.0, 0.0, 1.0);\n    vec3 currentLightDir = uModelSpaceLightDir[matrixIndex];\n    vec3 lightdir = clamp(currentLightDir,vec3(-1.0,-1.0,-1.0),vec3(1.0,1.0,1.0));\n    float result = 0.4 + 0.6 * max(0.0, dot(currentNormal,normalize(lightdir)));\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\n    float screenDepth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    float depth = (gl_Position.z / gl_Position.w - screenDepth)/(1.0 - screenDepth);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    depth = sin(depth * 0.8);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    result = result - depth;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vModelSpaceDiffuseColor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vec3(result)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vTexCoord = aTexCoord;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "c1":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1297
    return-object v4
.end method

.method private static createTextureBlendModularColorFragmentShader()Ljava/lang/String;
    .locals 7

    .prologue
    .line 442
    const-string v4, "precision mediump float;\nuniform vec4 uModularColor;\nuniform vec4 uBlendColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 449
    .local v4, "text":Ljava/lang/String;
    const-string v2, "diffuseMapColor.r = (2.0 * uBlendColor.r - 1.0) * (sqrt(diffuseMapColor.r) - diffuseMapColor.r) + diffuseMapColor.r;\n"

    .line 452
    .local v2, "alphaModularR":Ljava/lang/String;
    const-string v1, "diffuseMapColor.g = (2.0 * uBlendColor.g - 1.0) * (sqrt(diffuseMapColor.g) - diffuseMapColor.g) + diffuseMapColor.g;\n"

    .line 455
    .local v1, "alphaModularG":Ljava/lang/String;
    const-string v0, "diffuseMapColor.b = (2.0 * uBlendColor.b - 1.0) * (sqrt(diffuseMapColor.b) - diffuseMapColor.b) + diffuseMapColor.b;\n"

    .line 458
    .local v0, "alphaModularB":Ljava/lang/String;
    const-string v3, "    gl_FragColor = diffuseMapColor * uModularColor;\n"

    .line 459
    .local v3, "fragColorAssign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    return-object v4
.end method

.method private static createTextureBlendModularColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 439
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureMaskModularColorClipPlaneFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 866
    const-string v2, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uShadowMap;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    .line 873
    .local v2, "text":Ljava/lang/String;
    const-string v0, "    if(vClipDist < 0.0) {\n        discard;}\n"

    .line 875
    .local v0, "c1":Ljava/lang/String;
    const-string v1, "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = diffuseMapColor.rgba * uModularColor.rgba  * shadowMapColor.a;\n}\n"

    .line 877
    .local v1, "c2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createTextureMaskModularColorClipPlaneVertexShader(I)Ljava/lang/String;
    .locals 13
    .param p0, "mode"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 829
    const/4 v7, 0x0

    .line 830
    .local v7, "define":Ljava/lang/String;
    if-ne p0, v11, :cond_0

    .line 831
    const-string v7, "uniform mat4 uWorldMat;\n"

    .line 837
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec3 aPosition;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying vec2 vTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying float vClipDist;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "void main() {\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 848
    .local v8, "text":Ljava/lang/String;
    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    .line 850
    .local v0, "c0":Ljava/lang/String;
    const-string v2, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    .line 851
    .local v2, "c1":Ljava/lang/String;
    const-string v1, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    .line 852
    .local v1, "c00":Ljava/lang/String;
    const-string v3, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    .line 854
    .local v3, "c2":Ljava/lang/String;
    const-string v4, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    .line 855
    .local v4, "c3":Ljava/lang/String;
    const-string v5, "vTexCoord = aTexCoord;\n"

    .line 856
    .local v5, "c4":Ljava/lang/String;
    const-string v6, "vShadowTexCoord = aShadowTexCoord;\n"

    .line 857
    .local v6, "c5":Ljava/lang/String;
    if-ne p0, v11, :cond_2

    .line 858
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 860
    :goto_1
    return-object v9

    .line 832
    .end local v0    # "c0":Ljava/lang/String;
    .end local v1    # "c00":Ljava/lang/String;
    .end local v2    # "c1":Ljava/lang/String;
    .end local v3    # "c2":Ljava/lang/String;
    .end local v4    # "c3":Ljava/lang/String;
    .end local v5    # "c4":Ljava/lang/String;
    .end local v6    # "c5":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    :cond_0
    if-ne p0, v12, :cond_1

    .line 833
    const-string v7, "uniform vec3 uLocalTranslate;\n"

    goto/16 :goto_0

    .line 835
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 859
    .restart local v0    # "c0":Ljava/lang/String;
    .restart local v1    # "c00":Ljava/lang/String;
    .restart local v2    # "c1":Ljava/lang/String;
    .restart local v3    # "c2":Ljava/lang/String;
    .restart local v4    # "c3":Ljava/lang/String;
    .restart local v5    # "c4":Ljava/lang/String;
    .restart local v6    # "c5":Ljava/lang/String;
    .restart local v8    # "text":Ljava/lang/String;
    :cond_2
    if-ne p0, v12, :cond_3

    .line 860
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 862
    :cond_3
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static createTextureMaskModularFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 639
    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 648
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_FragColor = diffuseMapColor * uModularColor * shadowMapColor.a;\n"

    .line 650
    .local v0, "assignColor":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    return-object v1
.end method

.method private static createTextureMaskModularVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 636
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureModularAlphaFragmentShader()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    const-string v2, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 342
    .local v2, "text":Ljava/lang/String;
    const-string v0, "diffuseMapColor.a  = diffuseMapColor.a * uModularColor.a ;\n"

    .line 344
    .local v0, "alphaModular":Ljava/lang/String;
    const-string v1, "  gl_FragColor = diffuseMapColor;\n"

    .line 345
    .local v1, "fragColorAssign":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    return-object v2
.end method

.method private static createTextureModularAlphaVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 333
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureModularColorAlphaTestFragmentShader()Ljava/lang/String;
    .locals 6

    .prologue
    .line 392
    const-string v3, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 398
    .local v3, "text":Ljava/lang/String;
    const-string v0, "    diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba ;\n"

    .line 400
    .local v0, "alphaModular":Ljava/lang/String;
    const-string v1, "    diffuseMapColor.a = diffuseMapColor.r;\n"

    .line 401
    .local v1, "changeColor":Ljava/lang/String;
    const-string v2, "    gl_FragColor = diffuseMapColor;\n"

    .line 402
    .local v2, "fragColorAssign":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    return-object v3
.end method

.method private static createTextureModularColorAlphaTestVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 389
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureModularColorFragmentShader()Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    const-string v2, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 423
    .local v2, "text":Ljava/lang/String;
    const-string v0, "diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba ;\n"

    .line 425
    .local v0, "alphaModular":Ljava/lang/String;
    const-string v1, "  gl_FragColor = diffuseMapColor;\n"

    .line 426
    .local v1, "fragColorAssign":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    return-object v2
.end method

.method private static createTextureModularColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 414
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureModularColorYClipFragmentShader()Ljava/lang/String;
    .locals 6

    .prologue
    .line 364
    const-string v3, "precision mediump float;\nuniform vec4 uModularColor;\nvaring vec4 worldPosition;\nuniform float uYLimit;//this is world position\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 372
    .local v3, "text":Ljava/lang/String;
    const-string v0, "diffuseMapColor = diffuseMapColor.rgba * uModularColor.rgba ;\n"

    .line 374
    .local v0, "alphaModular":Ljava/lang/String;
    const-string v1, "if(worldPosition.y > uYLimit) {\n discard;\n}"

    .line 375
    .local v1, "clip":Ljava/lang/String;
    const-string v2, "  gl_FragColor = diffuseMapColor;\n"

    .line 376
    .local v2, "fragColorAssign":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    return-object v3
.end method

.method private static createTextureModularColorYClipVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string v0, "uniform mat4 uMVPMat;\nuniform mat4 uWorldMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvarying vec4 worldPosition;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n    worldPosition = uWorldMat * vec4(aPosition, 1.0);\n}\n"

    .line 361
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTexturePreColorFragmentShader()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1408
    const-string v4, "precision mediump float;\nuniform vec4 uModularColor;\nuniform vec4 uBlendColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 1415
    .local v4, "text":Ljava/lang/String;
    const-string v2, "diffuseMapColor.r = uBlendColor.a * uBlendColor.r + (1.0 - uBlendColor.a) * diffuseMapColor.r;\n"

    .line 1419
    .local v2, "alphaModularR":Ljava/lang/String;
    const-string v1, "diffuseMapColor.g = uBlendColor.a * uBlendColor.g + (1.0 - uBlendColor.a) * diffuseMapColor.g;\n"

    .line 1423
    .local v1, "alphaModularG":Ljava/lang/String;
    const-string v0, "diffuseMapColor.b = uBlendColor.a * uBlendColor.b + (1.0 - uBlendColor.a) * diffuseMapColor.b;\n"

    .line 1427
    .local v0, "alphaModularB":Ljava/lang/String;
    const-string v3, "    gl_FragColor = diffuseMapColor * uModularColor;\n"

    .line 1428
    .local v3, "fragColorAssign":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1429
    return-object v4
.end method

.method private static createTexturePreColorVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1396
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 1404
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTextureTextureModularFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 667
    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 675
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n"

    .line 680
    .local v0, "assignColor":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    return-object v1
.end method

.method private static createTextureTextureModularVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    const-string v0, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\n}\n"

    .line 664
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method private static createTwoTexDifferentTexColorFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 533
    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 542
    .local v1, "text":Ljava/lang/String;
    const-string v0, "gl_FragColor = (diffuseMapColor + (shadowMapColor * uModularColor.rgba * (1.0 - diffuseMapColor.a)));\n"

    .line 547
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    return-object v1
.end method

.method private static createTwoTexDifferentTexColorVertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    .line 526
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 527
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    return-object v1
.end method

.method private static createTwoTexDifferentTexCoordFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    const-string v1, "precision mediump float;\nuniform vec4 uModularColor;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 508
    .local v1, "text":Ljava/lang/String;
    const-string v0, "gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n"

    .line 513
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    return-object v1
.end method

.method private static createTwoTexDifferentTexCoordVertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    const-string v1, "uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvoid main() {\n"

    .line 492
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 493
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    return-object v1
.end method

.method private static createTwoTextureBatch16FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 809
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 818
    .local v1, "text":Ljava/lang/String;
    const-string v0, "gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * vModularColor.rgba ;\n"

    .line 823
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 825
    return-object v1
.end method

.method private static createTwoTextureBatch16VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    const-string v1, "uniform mat4 uMVPMatArray16[16];\nuniform vec4 uModularColorArray16[16];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 799
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray16[matrixIndex];\n    vec4 currentColor = uModularColorArray16[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 805
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    return-object v1
.end method

.method private static createTwoTextureBatch9FragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 769
    const-string v1, "precision mediump float;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform sampler2D uDiffuseMap;\nuniform sampler2D uShadowMap;\nvarying vec4 vModularColor;\nvoid main() {\n    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n"

    .line 778
    .local v1, "text":Ljava/lang/String;
    const-string v0, "gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * vModularColor.rgba ;\n"

    .line 783
    .local v0, "fragColorAssign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    return-object v1
.end method

.method private static createTwoTextureBatch9VertexShader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 749
    const-string v1, "uniform mat4 uMVPMatArray9[9];\nuniform vec4 uModularColorArray9[9];\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nattribute vec2 aShadowTexCoord;\nattribute float aMvpArrayIndex;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nvarying vec4 vModularColor;\nvoid main() {\n"

    .line 759
    .local v1, "text":Ljava/lang/String;
    const-string v0, "    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    vec4 currentColor = uModularColorArray9[matrixIndex];\nvModularColor = currentColor;\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\nvTexCoord = aTexCoord;\nvShadowTexCoord = aShadowTexCoord;\n}\n"

    .line 765
    .local v0, "c1":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    return-object v1
.end method

.method private static createTwoTextureDiffCoordModularColorClipPlaneFragmentShader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 918
    const-string v2, "precision mediump float;\nvarying float vClipDist;\nvarying vec2 vTexCoord;\nvarying vec2 vShadowTexCoord;\nuniform vec4 uModularColor;\nuniform sampler2D uShadowMap;\nuniform sampler2D uDiffuseMap;\nvoid main() {\n"

    .line 925
    .local v2, "text":Ljava/lang/String;
    const-string v0, "    if(vClipDist < 0.0) {\n        discard;}\n"

    .line 927
    .local v0, "c1":Ljava/lang/String;
    const-string v1, "    vec4 shadowMapColor = texture2D(uShadowMap, vShadowTexCoord);\n    vec4 diffuseMapColor = texture2D(uDiffuseMap, vTexCoord);\n    gl_FragColor = (diffuseMapColor + (shadowMapColor * (1.0 - diffuseMapColor.a))) * uModularColor.rgba;\n}\n"

    .line 933
    .local v1, "c2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createTwoTextureDiffCoordModularColorClipPlaneVertexShader(I)Ljava/lang/String;
    .locals 13
    .param p0, "mode"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 881
    const/4 v7, 0x0

    .line 882
    .local v7, "define":Ljava/lang/String;
    if-ne p0, v11, :cond_0

    .line 883
    const-string v7, "uniform mat4 uWorldMat;\n"

    .line 889
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uniform mat4 uMVPMat;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uniform vec4 uClipPlane;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "uniform vec4 uClipPlaneHeight;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec3 aPosition;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec2 aTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "attribute vec2 aShadowTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying vec2 vTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying vec2 vShadowTexCoord;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "varying float vClipDist;\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "void main() {\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 900
    .local v8, "text":Ljava/lang/String;
    const-string v0, "    float tmpPosY = uLocalTranslate.y + aPosition.y * uClipPlaneHeight.w;\n"

    .line 902
    .local v0, "c0":Ljava/lang/String;
    const-string v2, "    vec3 worldPos = vec3(0, tmpPosY , 0);\n"

    .line 903
    .local v2, "c1":Ljava/lang/String;
    const-string v1, "   vec4 worldPos = uWorldMat * vec4(aPosition , 1.0);\n"

    .line 904
    .local v1, "c00":Ljava/lang/String;
    const-string v3, "    vClipDist = dot(worldPos.xyz, uClipPlane.xyz)  + uClipPlane.w;\n"

    .line 906
    .local v3, "c2":Ljava/lang/String;
    const-string v4, "    gl_Position = uMVPMat * vec4(aPosition, 1.0);\n"

    .line 907
    .local v4, "c3":Ljava/lang/String;
    const-string v5, "vTexCoord = aTexCoord;\n"

    .line 908
    .local v5, "c4":Ljava/lang/String;
    const-string v6, "vShadowTexCoord = aShadowTexCoord;\n"

    .line 909
    .local v6, "c5":Ljava/lang/String;
    if-ne p0, v11, :cond_2

    .line 910
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 912
    :goto_1
    return-object v9

    .line 884
    .end local v0    # "c0":Ljava/lang/String;
    .end local v1    # "c00":Ljava/lang/String;
    .end local v2    # "c1":Ljava/lang/String;
    .end local v3    # "c2":Ljava/lang/String;
    .end local v4    # "c3":Ljava/lang/String;
    .end local v5    # "c4":Ljava/lang/String;
    .end local v6    # "c5":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    :cond_0
    if-ne p0, v12, :cond_1

    .line 885
    const-string v7, "uniform vec3 uLocalTranslate;\n"

    goto/16 :goto_0

    .line 887
    :cond_1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createTwoTextureDiffCoordModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 911
    .restart local v0    # "c0":Ljava/lang/String;
    .restart local v1    # "c00":Ljava/lang/String;
    .restart local v2    # "c1":Ljava/lang/String;
    .restart local v3    # "c2":Ljava/lang/String;
    .restart local v4    # "c3":Ljava/lang/String;
    .restart local v5    # "c4":Ljava/lang/String;
    .restart local v6    # "c5":Ljava/lang/String;
    .restart local v8    # "text":Ljava/lang/String;
    :cond_2
    if-ne p0, v12, :cond_3

    .line 912
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 914
    :cond_3
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSimpleTextureModularColorClipPlaneVertexShader mode error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static createVertexShaderFromName(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1597
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v1, "SimpleTextureMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleMaterialVertexShader()Ljava/lang/String;

    move-result-object v1

    .line 1666
    :goto_0
    return-object v1

    .line 1599
    :cond_0
    const-string v1, "SimpleTextureDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleMaterialWithDirLightVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1601
    :cond_1
    const-string v1, "VertexColorTextureMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1602
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createColorTextureMaterialVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1603
    :cond_2
    const-string v1, "TextureModularAlphaMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1604
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularAlphaVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1605
    :cond_3
    const-string v1, "SimpleColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1606
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1607
    :cond_4
    const-string v1, "TextureModularColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1608
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1609
    :cond_5
    const-string v1, "TextureBlendModularColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1610
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBlendModularColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1611
    :cond_6
    const-string v1, "TextureModularColorAlphaTestMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1612
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureModularColorAlphaTestVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1613
    :cond_7
    const-string v1, "TextureTextureModularMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1614
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureTextureModularVertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1615
    :cond_8
    const-string v1, "TextureBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1616
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9VertexShader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1617
    :cond_9
    const-string v1, "TextureBatch16Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1618
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1619
    :cond_a
    const-string v1, "TwoTextureBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1620
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureBatch9VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1621
    :cond_b
    const-string v1, "TwoTextureBatch16Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1622
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureBatch16VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1623
    :cond_c
    const-string v1, "GlobalColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1624
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createGlobalColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1625
    :cond_d
    const-string v1, "SimpleTextureClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1626
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleTextureModularColorClipPlaneVertexShader(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1627
    :cond_e
    const-string v1, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1628
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDiffuseShadowDifferentTexCoordBatch9VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1629
    :cond_f
    const-string v1, "DiffuseShadowDifferentTexCoordBatch9Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1630
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDiffuseShadowDifferentTexCoordBatch16VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1631
    :cond_10
    const-string v1, "TextureTexCoordLimitMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1632
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSimpleTexCoordLimitXYMaterialVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1633
    :cond_11
    const-string v1, "InnerShadowColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1634
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createInnerShadowColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1635
    :cond_12
    const-string v1, "GaussianBlurEffectMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1636
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 1637
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GaussianBlur param null error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1639
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1640
    .local v0, "blurSize":I
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createGaussianBlurVertexShaderString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1641
    .end local v0    # "blurSize":I
    :cond_14
    const-string v1, "SoftLightEffectMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1642
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createSoftLightVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1643
    :cond_15
    const-string v1, "TwoTexDifferentTexcoordMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1644
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTexDifferentTexCoordVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1645
    :cond_16
    const-string v1, "TwoTexDifferentTexColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1646
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTexDifferentTexColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1647
    :cond_17
    const-string v1, "TextureMaskModularMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1648
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureMaskModularVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1649
    :cond_18
    const-string v1, "TextureMaskModularClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1650
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureMaskModularColorClipPlaneVertexShader(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1651
    :cond_19
    const-string v1, "TwoTextureDiffCoordModularColorClipPlaneMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1652
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTwoTextureDiffCoordModularColorClipPlaneVertexShader(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1653
    :cond_1a
    const-string v1, "TextureBatch9WithDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1654
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9WithDirLightVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1655
    :cond_1b
    const-string v1, "TextureBatch16WithDirLightMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1656
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16WithDirLightVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1657
    :cond_1c
    const-string v1, "DrawMultiTimesMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1658
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createDrawMultiTimesVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1659
    :cond_1d
    const-string v1, "TextureBatch6Material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1660
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch6VertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1661
    :cond_1e
    const-string v1, "TexturePreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1662
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTexturePreColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1663
    :cond_1f
    const-string v1, "TextureBatch9PreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1664
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch9PreColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1665
    :cond_20
    const-string v1, "TextureBatch16PreColorMaterial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1666
    invoke-static {}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createTextureBatch16PreColorVertexShader()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1668
    :cond_21
    new-instance v1, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport shader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef$MaterialDefException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getFragmentShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1583
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v0, p0

    .line 1584
    .local v0, "shaderKey":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1585
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1587
    :cond_0
    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mFragmentShaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1588
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1589
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment shader key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createFragmentShaderFromName(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1591
    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mFragmentShaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment shader = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_2
    return-object v1
.end method

.method private static getShaderKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, "shaderKey":Ljava/lang/String;
    return-object v0
.end method

.method private static getVertexShader(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1569
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v0, p0

    .line 1570
    .local v0, "shaderKey":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1571
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->getShaderKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1573
    :cond_0
    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mVertexShaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1574
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1575
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vertex shader key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createVertexShaderFromName(Ljava/lang/String;ILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->mVertexShaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vertex shader = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_2
    return-object v1
.end method
