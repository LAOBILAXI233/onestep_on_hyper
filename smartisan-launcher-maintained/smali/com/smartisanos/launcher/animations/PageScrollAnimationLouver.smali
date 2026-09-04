.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationLouver.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;
    }
.end annotation


.field public static final INTERSECTION_ANGLE:D = 1.0471975511965976

.field private static SHADOW_SAMPLE_COUNT:I


.field private mBackgroundColor:F

.field private mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

.field private mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

.field private mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

.field private mPageScrollShadowDU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;",
            ">;"
        }
    .end annotation
.end field

.field private mPageScrollShadowRL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x3c

    sput v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->setShowShadow(Z)V

    .line 48
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getBackgroundColor()V

    .line 49
    return-void
.end method

.method private adjustBackground()V
    .locals 17

    .prologue
    .line 777
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v12

    .line 778
    .local v3, "bgWidth":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v12

    .line 779
    .local v1, "bgHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v12

    .line 780
    .local v5, "bgZ":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v6, v12

    .line 781
    .local v6, "cameraZ":F
    add-float v12, v5, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 782
    .local v4, "bgWidthNew":F
    add-float v12, v5, v6

    mul-float/2addr v12, v1

    div-float v2, v12, v6

    .line 784
    .local v2, "bgHeightNew":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 785
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v13, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 786
    .local v8, "pageY":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v12, v8

    .line 787
    add-float v12, v5, v6

    mul-float/2addr v12, v8

    div-float/2addr v12, v6

    sub-float v11, v8, v12

    .line 788
    .local v11, "y":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 789
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 790
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 791
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-nez v12, :cond_0

    .line 792
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 793
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 794
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x429a0000    # 77.0f

    sub-float v11, v12, v13

    .line 795
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 796
    const/high16 v12, 0x431b0000    # 155.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 797
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 798
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v12, "background_shadow_top"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 799
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_top.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 803
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 805
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 810
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x41800000    # 16.0f

    add-float v11, v12, v13

    .line 811
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 812
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 813
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 814
    const-string v12, "background_shadow_bottom"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 815
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_bottom.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 818
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 819
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 830
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-void

    .line 826
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method private createEmptyPage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    .line 107
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 108
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 109
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {v0, v1, v1, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect(FFF)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 112
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    .line 114
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 116
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {v0, v1, v1, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect(FFF)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 119
    return-void
.end method

.method private createPageScrollShadowDU()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 697
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v10, "pageScrollShadows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;>;"
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 699
    .local v8, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 700
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_1

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageScrollShadowRL_lover_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v4, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-int v5, v7

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageY:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createDU(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    move-result-object v9

    .line 702
    .local v9, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 703
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 704
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->updateGeometricState()V

    .line 705
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 708
    .end local v7    # "i":I
    .end local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_1

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageScrollShadowRL_lover_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v4, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    neg-int v5, v7

    int-to-float v5, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageY:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createDU(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    move-result-object v9

    .line 710
    .restart local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 711
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 712
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->updateGeometricState()V

    .line 713
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 716
    .end local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_1
    return-object v10
.end method

.method private createPageScrollShadowRL()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 674
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v10, "pageScrollShadows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;>;"
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 676
    .local v8, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 677
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_1

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageScrollShadowRL_lover_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    add-int/lit8 v5, v7, -0x1

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageY:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createRL(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    move-result-object v9

    .line 679
    .local v9, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 680
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 681
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->updateGeometricState()V

    .line 682
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 685
    .end local v7    # "i":I
    .end local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_1

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageScrollShadowRL_lover_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v2, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    int-to-float v5, v7

    const/high16 v6, 0x3fc00000    # 1.5f

    sub-float/2addr v5, v6

    mul-float/2addr v3, v5

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageY:F

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->createRL(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    move-result-object v9

    .line 687
    .restart local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v11, v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 688
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 689
    invoke-virtual {v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->updateGeometricState()V

    .line 690
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 693
    .end local v9    # "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_1
    return-object v10
.end method

.method private getBackgroundColor()V
    .locals 2

    .prologue
    .line 768
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "themeId":Ljava/lang/String;
    const-string v1, "smartisan_theme_green"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_cyan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_light_wood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_yellow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    :cond_0
    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundColor:F

    goto :goto_0
.end method

.method private getCurrentLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 12
    .param p1, "progress"    # F
    .param p2, "w"    # Z

    .prologue
    .line 613
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 614
    .local v3, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    if-eqz p2, :cond_0

    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 615
    .local v2, "cellWidth":F
    :goto_0
    float-to-double v8, v2

    const-wide v10, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 616
    .local v4, "r":F
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v0

    .line 617
    .local v0, "angle":D
    if-eqz p2, :cond_1

    .line 618
    const/4 v6, 0x0

    .line 619
    .local v6, "y":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 620
    .local v5, "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 621
    .local v7, "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 626
    :goto_1
    return-object v8

    .line 614
    .end local v0    # "angle":D
    .end local v2    # "cellWidth":F
    .end local v4    # "r":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_0
    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    goto :goto_0

    .line 623
    .restart local v0    # "angle":D
    .restart local v2    # "cellWidth":F
    .restart local v4    # "r":F
    :cond_1
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    neg-float v6, v8

    .line 624
    .restart local v6    # "y":F
    const/4 v5, 0x0

    .line 625
    .restart local v5    # "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 626
    .restart local v7    # "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    goto :goto_1
.end method

.method private getCurrentRotateAngle(F)D
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 587
    const-wide v0, -0x3fff3eadc7d28c9aL    # -2.0943951023931957

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private getIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 649
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 650
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    return v1
.end method

.method private getMaxZ(F)F
    .locals 14
    .param p1, "progress"    # F

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v2

    .line 370
    .local v2, "currentRotateAngle":D
    const-wide v8, 0x4000c152382d7366L    # 2.0943951023931957

    rem-double/2addr v2, v8

    .line 371
    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 372
    .local v1, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 373
    .local v0, "cellWidth":F
    float-to-double v8, v0

    const-wide v10, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 374
    .local v5, "r":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v5

    sub-double/2addr v8, v10

    double-to-float v6, v8

    .line 376
    .local v6, "z":F
    const-wide/16 v8, 0x0

    cmpg-double v7, v2, v8

    if-gez v7, :cond_0

    .line 377
    float-to-double v8, v6

    float-to-double v10, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    .line 381
    .local v4, "maxZ":F
    :goto_0
    return v4

    .line 379
    .end local v4    # "maxZ":F
    :cond_0
    float-to-double v8, v6

    float-to-double v10, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    .restart local v4    # "maxZ":F
    goto :goto_0
.end method

.method private getNextLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 12
    .param p1, "progress"    # F
    .param p2, "w"    # Z

    .prologue
    .line 631
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 632
    .local v3, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    if-eqz p2, :cond_0

    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 633
    .local v2, "cellWidth":F
    :goto_0
    float-to-double v8, v2

    const-wide v10, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 634
    .local v4, "r":F
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextRotateAngle(F)D

    move-result-wide v0

    .line 635
    .local v0, "angle":D
    if-eqz p2, :cond_1

    .line 636
    const/4 v6, 0x0

    .line 637
    .local v6, "y":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 638
    .local v5, "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 639
    .local v7, "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 644
    :goto_1
    return-object v8

    .line 632
    .end local v0    # "angle":D
    .end local v2    # "cellWidth":F
    .end local v4    # "r":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_0
    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    goto :goto_0

    .line 641
    .restart local v0    # "angle":D
    .restart local v2    # "cellWidth":F
    .restart local v4    # "r":F
    :cond_1
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    neg-float v6, v8

    .line 642
    .restart local v6    # "y":F
    const/4 v5, 0x0

    .line 643
    .restart local v5    # "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 644
    .restart local v7    # "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    goto :goto_1
.end method

.method private getNextRotateAngle(F)D
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 591
    const-wide v0, 0x4000c152382d7366L    # 2.0943951023931957

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private getPreLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 12
    .param p1, "progress"    # F
    .param p2, "w"    # Z

    .prologue
    .line 595
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 596
    .local v3, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    if-eqz p2, :cond_0

    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 597
    .local v2, "cellWidth":F
    :goto_0
    float-to-double v8, v2

    const-wide v10, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    .line 598
    .local v4, "r":F
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreRotateAngle(F)D

    move-result-wide v0

    .line 599
    .local v0, "angle":D
    if-eqz p2, :cond_1

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, "y":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 602
    .local v5, "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 603
    .local v7, "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 608
    :goto_1
    return-object v8

    .line 596
    .end local v0    # "angle":D
    .end local v2    # "cellWidth":F
    .end local v4    # "r":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "z":F
    :cond_0
    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    goto :goto_0

    .line 605
    .restart local v0    # "angle":D
    .restart local v2    # "cellWidth":F
    .restart local v4    # "r":F
    :cond_1
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    neg-float v6, v8

    .line 606
    .restart local v6    # "y":F
    const/4 v5, 0x0

    .line 607
    .restart local v5    # "x":F
    float-to-double v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v4

    sub-double/2addr v8, v10

    double-to-float v7, v8

    .line 608
    .restart local v7    # "z":F
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    goto :goto_1
.end method

.method private getPreRotateAngle(F)D
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 583
    const-wide v0, -0x3fff3eadc7d28c9aL    # -2.0943951023931957

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private onAnimationChangedDU(IF)V
    .locals 24
    .param p1, "tweenType"    # I
    .param p2, "progress"    # F

    .prologue
    .line 301
    add-int/lit8 v16, p1, -0x2

    .line 302
    .local v16, "rowIndex":I
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 303
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    .line 304
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->updateVisiblePage(Z)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    sget v18, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPageIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float p2, p2, v18

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getMaxZ(F)F

    move-result v12

    .line 312
    .local v12, "maxZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v13

    .line 314
    .local v13, "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreRotateAngle(F)D

    move-result-wide v6

    .line 315
    .local v6, "angle":D
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 316
    .local v11, "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 317
    .local v8, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 318
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 319
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 320
    .local v10, "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 321
    .local v17, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    sub-float v21, v21, v12

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_1

    .line 324
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 326
    .end local v6    # "angle":D
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v9

    .line 328
    .local v9, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v6

    .line 329
    .restart local v6    # "angle":D
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 330
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 331
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 332
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 333
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 334
    .restart local v10    # "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 335
    .restart local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    sub-float v21, v21, v12

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_2

    .line 338
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 340
    const-wide v14, 0x4000c152382d7365L    # 2.0943951023931953

    .line 341
    .local v14, "p":D
    rem-double/2addr v6, v14

    .line 342
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-ltz v18, :cond_c

    .line 343
    sget v18, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 347
    .local v5, "animIndex":I
    :goto_3
    sget v18, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v18

    if-lt v5, v0, :cond_8

    const/4 v5, 0x0

    .line 348
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawAnimIndex(II)V

    .line 350
    .end local v5    # "animIndex":I
    .end local v14    # "p":D
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 352
    .end local v6    # "angle":D
    .end local v9    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 354
    .local v4, "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextRotateAngle(F)D

    move-result-wide v6

    .line 355
    .restart local v6    # "angle":D
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 356
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 357
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    .line 358
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 359
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 360
    .restart local v10    # "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 361
    .restart local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    sub-float v21, v21, v12

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_4

    .line 345
    .end local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v9    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v14    # "p":D
    :cond_c
    add-double v18, v14, v6

    sget v20, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .restart local v5    # "animIndex":I
    goto/16 :goto_3

    .line 364
    .end local v5    # "animIndex":I
    .end local v9    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v14    # "p":D
    .restart local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method private onAnimationChangedRL(IF)V
    .locals 23
    .param p1, "tweenType"    # I
    .param p2, "progress"    # F

    .prologue
    .line 234
    add-int/lit8 v9, p1, -0x2

    .line 235
    .local v9, "colIndex":I
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 236
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    .line 237
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->updateVisiblePage(Z)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget v17, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_0

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPageIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float p2, p2, v17

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v13

    .line 246
    .local v13, "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreRotateAngle(F)D

    move-result-wide v6

    .line 247
    .local v6, "angle":D
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 248
    .local v12, "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 249
    .local v8, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_3

    .line 250
    double-to-float v0, v6

    move/from16 v18, v0

    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 251
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v11

    .line 252
    .local v11, "index":I
    sget-object v18, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v16, v18, v11

    .line 253
    .local v16, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_1

    .line 256
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    .end local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 258
    .end local v6    # "angle":D
    .end local v12    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v10

    .line 260
    .local v10, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v6

    .line 261
    .restart local v6    # "angle":D
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 262
    .restart local v12    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 263
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_6

    .line 264
    double-to-float v0, v6

    move/from16 v18, v0

    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 265
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v11

    .line 266
    .restart local v11    # "index":I
    sget-object v18, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v16, v18, v11

    .line 267
    .restart local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_2

    .line 270
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    .end local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 272
    const-wide v14, 0x4000c152382d7365L    # 2.0943951023931953

    .line 273
    .local v14, "p":D
    rem-double/2addr v6, v14

    .line 274
    const-wide/16 v18, 0x0

    cmpl-double v17, v6, v18

    if-ltz v17, :cond_c

    .line 275
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 279
    .local v5, "animIndex":I
    :goto_3
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    if-lt v5, v0, :cond_8

    const/4 v5, 0x0

    .line 280
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawAnimIndex(II)V

    .line 282
    .end local v5    # "animIndex":I
    .end local v14    # "p":D
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 284
    .end local v6    # "angle":D
    .end local v10    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v12    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 286
    .local v4, "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextRotateAngle(F)D

    move-result-wide v6

    .line 287
    .restart local v6    # "angle":D
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 288
    .restart local v12    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 289
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_b

    .line 290
    double-to-float v0, v6

    move/from16 v18, v0

    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 291
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v11

    .line 292
    .restart local v11    # "index":I
    sget-object v18, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v16, v18, v11

    .line 293
    .restart local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_4

    .line 277
    .end local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    .end local v16    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v10    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v14    # "p":D
    :cond_c
    add-double v18, v14, v6

    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .restart local v5    # "animIndex":I
    goto/16 :goto_3

    .line 296
    .end local v5    # "animIndex":I
    .end local v10    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v14    # "p":D
    .restart local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method private resetBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 833
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 834
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 835
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 836
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 838
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 840
    :cond_0
    return-void
.end method

.method private updateVisiblePageStatusDU()V
    .locals 25

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPageIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v19, v20

    .line 529
    .local v16, "progress":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getMaxZ(F)F

    move-result v12

    .line 530
    .local v12, "maxZ":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v13

    .line 532
    .local v13, "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreRotateAngle(F)D

    move-result-wide v6

    .line 533
    .local v6, "angle":D
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 534
    .local v11, "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 535
    .local v8, "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v20, v0

    new-instance v21, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 536
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v20

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 537
    .local v10, "index":I
    sget-object v20, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v18, v20, v10

    .line 538
    .local v18, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    sub-float v22, v22, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_0

    .line 540
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 542
    .end local v6    # "angle":D
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v9

    .line 544
    .local v9, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v6

    .line 545
    .restart local v6    # "angle":D
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 546
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 547
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v20, v0

    new-instance v21, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 548
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v20

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 549
    .restart local v10    # "index":I
    sget-object v20, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v18, v20, v10

    .line 550
    .restart local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    sub-float v22, v22, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_1

    .line 552
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 554
    const-wide v14, 0x4000c152382d7365L    # 2.0943951023931953

    .line 555
    .local v14, "p":D
    rem-double/2addr v6, v14

    .line 556
    const-wide/16 v20, 0x0

    cmpl-double v19, v6, v20

    if-ltz v19, :cond_4

    .line 557
    sget v19, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    div-double v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .line 561
    .local v5, "animIndex":I
    :goto_2
    sget v19, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    const/4 v5, 0x0

    .line 562
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 563
    .local v17, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawAnimIndex(II)V

    goto :goto_3

    .line 559
    .end local v5    # "animIndex":I
    .end local v17    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_4
    add-double v20, v14, v6

    sget v19, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    div-double v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .restart local v5    # "animIndex":I
    goto :goto_2

    .line 566
    .end local v5    # "animIndex":I
    .end local v14    # "p":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 568
    .end local v6    # "angle":D
    .end local v9    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 570
    .local v4, "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextRotateAngle(F)D

    move-result-wide v6

    .line 571
    .restart local v6    # "angle":D
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 572
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 573
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v20, v0

    new-instance v21, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 574
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v20

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 575
    .restart local v10    # "index":I
    sget-object v20, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v18, v20, v10

    .line 576
    .restart local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v22, v0

    sub-float v22, v22, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_4

    .line 578
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v18    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 580
    .end local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v6    # "angle":D
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_8
    return-void
.end method

.method private updateVisiblePageStatusRL()V
    .locals 24

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPageIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v15, v18, v19

    .line 475
    .local v15, "progress":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v14

    .line 477
    .local v14, "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreRotateAngle(F)D

    move-result-wide v6

    .line 478
    .local v6, "angle":D
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getPreLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 479
    .local v11, "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 480
    .local v8, "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 481
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 482
    .local v10, "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 483
    .local v17, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_0

    .line 485
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 487
    .end local v6    # "angle":D
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v9

    .line 489
    .local v9, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentRotateAngle(F)D

    move-result-wide v6

    .line 490
    .restart local v6    # "angle":D
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getCurrentLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 491
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 492
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 493
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 494
    .restart local v10    # "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 495
    .restart local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_1

    .line 497
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 499
    const-wide v12, 0x4000c152382d7365L    # 2.0943951023931953

    .line 500
    .local v12, "p":D
    rem-double/2addr v6, v12

    .line 501
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-ltz v18, :cond_4

    .line 502
    sget v18, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    div-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 506
    .local v5, "animIndex":I
    :goto_2
    sget v18, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v18

    if-lt v5, v0, :cond_3

    const/4 v5, 0x0

    .line 507
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 508
    .local v16, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setDrawAnimIndex(II)V

    goto :goto_3

    .line 504
    .end local v5    # "animIndex":I
    .end local v16    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_4
    add-double v18, v12, v6

    sget v20, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .restart local v5    # "animIndex":I
    goto :goto_2

    .line 511
    .end local v5    # "animIndex":I
    .end local v12    # "p":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 513
    .end local v6    # "angle":D
    .end local v9    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 515
    .local v4, "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextRotateAngle(F)D

    move-result-wide v6

    .line 516
    .restart local v6    # "angle":D
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getNextLocation(FZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 517
    .restart local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 518
    .restart local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    double-to-float v0, v6

    move/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 519
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v10

    .line 520
    .restart local v10    # "index":I
    sget-object v19, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v17, v19, v10

    .line 521
    .restart local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_4

    .line 523
    .end local v8    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "index":I
    .end local v17    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 525
    .end local v4    # "NextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v6    # "angle":D
    .end local v11    # "location":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_8
    return-void
.end method


.method protected getPage(I)Lcom/smartisanos/launcher/view/Page;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 123
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_5

    .line 124
    if-lt p1, v2, :cond_0

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mMaxTranXProcress:I

    add-int/lit8 v1, v1, 0x1

    if-le p1, v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    if-eq p1, v2, :cond_2

    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mMaxTranXProcress:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_4

    .line 127
    :cond_2
    if-ne p1, v2, :cond_3

    .line 128
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    goto :goto_0

    .line 136
    :cond_5
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mMaxTranXProcress:I

    if-gt p1, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    goto :goto_0
.end method

.method public onAnimationChanged(IF)V
    .locals 1
    .param p1, "tweenType"    # I
    .param p2, "progress"    # F

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->isScrollLeftRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->onAnimationChangedRL(IF)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->onAnimationChangedDU(IF)V

    goto :goto_0
.end method

.method public onEndScroll()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 146
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 148
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 149
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 150
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 156
    :cond_1
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_2

    .line 157
    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    .line 161
    :cond_2
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    .local v2, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 163
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v12, v10, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v12, v9}, Lcom/smartisanos/launcher/view/Cell;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 164
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v9

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getIndex(II)I

    move-result v3

    .line 165
    .local v3, "index":I
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v9, v3

    .line 166
    .local v6, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v9, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v1, v9, v10, v12}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 167
    invoke-virtual {v1, v11}, Lcom/smartisanos/launcher/view/Cell;->setAllRectToRenderTarget(Z)V

    goto :goto_0

    .line 170
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "index":I
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    if-eqz v7, :cond_4

    .line 171
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v7, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 173
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    if-eqz v7, :cond_5

    .line 174
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v7, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 176
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 177
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 178
    .local v5, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v5, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_1

    .line 181
    .end local v5    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_6
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 182
    iget-object v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 183
    .restart local v5    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v5, v11}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_2

    .line 186
    .end local v5    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 187
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->resetBackground()V

    .line 188
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->disableBatchPageLightEffect()V

    .line 190
    return-void
.end method

.method public onRelease()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 723
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 727
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 731
    .local v0, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 732
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->clear(Z)V

    goto :goto_0

    .line 734
    .end local v0    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_2
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 737
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 738
    .restart local v0    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 739
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->clear(Z)V

    goto :goto_1

    .line 741
    .end local v0    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_4
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    .line 743
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_6

    .line 744
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 745
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 746
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 747
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 748
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 749
    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 751
    :cond_6
    return-void
.end method

.method public onStartScroll()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v5

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 54
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->adjustBackground()V

    .line 55
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->createEmptyPage()V

    .line 56
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 58
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 59
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 62
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 66
    .local v3, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_2

    .line 67
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    .line 71
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 72
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->setAllRectToRenderTarget(Z)V

    goto :goto_0

    .line 76
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->createPageScrollShadowRL()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->canDownUpScroll()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 80
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->createPageScrollShadowDU()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->isScrollLeftRight()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 84
    .local v4, "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_1

    .line 86
    .end local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_6
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 87
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 88
    .restart local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_2

    .line 92
    .end local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_7
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowRL:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 93
    .restart local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_3

    .line 95
    .end local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_8
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 96
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mPageScrollShadowDU:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;

    .line 97
    .restart local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;->setVisibility(Z)V

    goto :goto_4

    .line 101
    .end local v4    # "pss":Lcom/smartisanos/launcher/animations/PageScrollShadowLouver;
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v11, v11, v6}, Lcom/smartisanos/launcher/view/MainView;->enableBatchPageLightEffect(FFF)V

    .line 102
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 756
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 758
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageRight:Lcom/smartisanos/launcher/view/Page;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 762
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mEmptyPageLeft:Lcom/smartisanos/launcher/view/Page;

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getBackgroundColor()V

    .line 765
    return-void
.end method

.method public playEndScrollAnimation(FF)V
    .locals 8
    .param p1, "fromPage"    # F
    .param p2, "toPage"    # F

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 194
    const/4 v0, 0x5

    new-array v3, v0, [Laurelienribon/tweenengine/TweenEquation;

    .line 195
    .local v3, "animType":[Laurelienribon/tweenengine/TweenEquation;
    const/4 v0, 0x0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    aput-object v1, v3, v0

    .line 196
    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    .line 197
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v0, v2, :cond_0

    .line 198
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v0, p0, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v2

    .line 199
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 200
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 201
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->getEndScrollAnimTime()F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->playTimeLineAnimation(FF[Laurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 222
    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v0, p0, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v2

    .line 204
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 205
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 206
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    goto :goto_0

    .line 209
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v0, v2, :cond_2

    .line 210
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v0, p0, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v2

    .line 211
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 212
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 213
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v0, p0, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v2

    .line 216
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 217
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 218
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    invoke-direct {v1, p0, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    goto :goto_0
.end method

.method public pressedHomeKey()V
    .locals 9

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    const v2, -0x41b33333    # -0.2f

    .line 386
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->startScroll()F

    .line 387
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 389
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 390
    const/4 v6, 0x0

    .line 391
    .local v6, "fromProgress":F
    const v7, -0x41b33333    # -0.2f

    .line 392
    .local v7, "toProgress":F
    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->mScrollProcress:F

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3eb851ec    # 0.36f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$1;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->playAnimationWithoutCallBack(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 423
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 462
    :goto_0
    return-void

    .line 425
    .end local v6    # "fromProgress":F
    .end local v7    # "toProgress":F
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 426
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 427
    const/4 v6, 0x0

    .line 428
    .restart local v6    # "fromProgress":F
    const v7, -0x41b33333    # -0.2f

    .line 429
    .restart local v7    # "toProgress":F
    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3dcccccd    # 0.1f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->playAnimationWithoutCallBack(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 460
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0
.end method

.method public updateVisiblePageStatus()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->isScrollLeftRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->updateVisiblePageStatusRL()V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->updateVisiblePageStatusDU()V

    goto :goto_0
.end method
