.class public Lcom/smartisanos/smengine/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/RenderManager$RenderUnit;,
        Lcom/smartisanos/smengine/RenderManager$RenderUnitCompator;,
        Lcom/smartisanos/smengine/RenderManager$RenderUnitCompareByLayer;,
        Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueue;,
        Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;,
        Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;,
        Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;
    }
.end annotation


.field public static final GEN_MIPMAP_QUEUE:I = 0x2

.field public static final IMAGE_COMPOSE_MIPMAP_QUEUE:I = 0x4

.field public static final IMAGE_COMPOSE_QUEUE:I = 0x0

.field public static final LAYER_0:I = 0x0

.field public static final LAYER_1:I = 0x1

.field public static final LAYER_10:I = 0xa

.field public static final LAYER_11:I = 0xb

.field public static final LAYER_12:I = 0xc

.field public static final LAYER_13:I = 0xd

.field public static final LAYER_14:I = 0xe

.field public static final LAYER_15:I = 0xf

.field public static final LAYER_16:I = 0x10

.field public static final LAYER_17:I = 0x11

.field public static final LAYER_18:I = 0x12

.field public static final LAYER_19:I = 0x13

.field public static final LAYER_2:I = 0x2

.field public static final LAYER_20:I = 0x14

.field public static final LAYER_21:I = 0x15

.field public static final LAYER_22:I = 0x16

.field public static final LAYER_23:I = 0x17

.field public static final LAYER_24:I = 0x18

.field public static final LAYER_25:I = 0x19

.field public static final LAYER_26:I = 0x1a

.field public static final LAYER_27:I = 0x1b

.field public static final LAYER_28:I = 0x1c

.field public static final LAYER_29:I = 0x1d

.field public static final LAYER_3:I = 0x3

.field public static final LAYER_30:I = 0x1e

.field public static final LAYER_31:I = 0x1f

.field public static final LAYER_32:I = 0x20

.field public static final LAYER_33:I = 0x21

.field public static final LAYER_4:I = 0x4

.field public static final LAYER_5:I = 0x5

.field public static final LAYER_6:I = 0x6

.field public static final LAYER_7:I = 0x7

.field public static final LAYER_8:I = 0x8

.field public static final LAYER_9:I = 0x9

.field public static final LAYER_NUM:I = 0x104

.field private static final LIST_NUM:I = 0x4

.field public static final MAIN_FRAMEBUFFER_QUEUE:I = 0x1

.field private static final OPACITY_LIST:I = 0x1

.field public static final POST_EFFECT_QUEUE:I = 0x3

.field private static final POST_LIST:I = 0x3

.field public static final POST_RENDERER_TEXTURE_NAME:Ljava/lang/String; = "com.smartisanos.posteffect.texture"

.field public static final POST_RENDERER_TEXTURE_NAME_CACHE:Ljava/lang/String; = "com.smartisanos.posteffect.texture.cache"

.field private static final PREDRAW_LIST:I = 0x0

.field private static final RENDER_QUEUE_1:I = 0x0

.field private static final RENDER_QUEUE_2:I = 0x1

.field private static final RENDER_QUEUE_3:I = 0x2

.field private static final RENDER_QUEUE_4:I = 0x3

.field private static final RENDER_QUEUE_5:I = 0x4

.field private static final RENDER_QUEUE_NUM:I = 0x5

.field private static final RU_NUM_IN_LAYER:I = 0x1f4

.field private static final TRANSLUCENT_LIST:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mRenderUnitPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/RenderManager$RenderUnit;",
            ">;"
        }
    .end annotation
.end field


.field private calculateMatrixTime:J

.field private drawMeshTime:J

.field private mGenMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

.field private mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

.field private mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

.field private mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMainFrameBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

.field private mMainViewPort:Lcom/smartisanos/smengine/ViewPort;

.field private mModularColorMatArray16:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mModularColorMatArray9:[Lcom/smartisanos/smengine/math/Vector4f;

.field private mMvpMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMvpMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

.field private mPostEffectBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

.field public mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field protected mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

.field private mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

.field private mUsePostEffect:Z

.field private setPTime:J


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/smartisanos/smengine/RenderManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/RenderManager;->log:Lcom/smartisanos/launcher/LOG;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/RenderManager;->mRenderUnitPool:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x9

    const-wide/16 v2, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    .line 103
    new-instance v1, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    .line 104
    new-instance v1, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMainFrameBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    .line 105
    new-instance v1, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mGenMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    .line 106
    new-instance v1, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mPostEffectBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    .line 108
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 109
    new-array v1, v5, [Lcom/smartisanos/smengine/math/Matrix4f;

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 111
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 112
    new-array v1, v5, [Lcom/smartisanos/smengine/math/Vector4f;

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 114
    new-instance v1, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 115
    new-instance v1, Lcom/smartisanos/smengine/RenderState$Param;

    invoke-direct {v1}, Lcom/smartisanos/smengine/RenderState$Param;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    .line 118
    new-instance v1, Lcom/smartisanos/smengine/ViewPort;

    invoke-direct {v1}, Lcom/smartisanos/smengine/ViewPort;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMainViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    .line 677
    iput-wide v2, p0, Lcom/smartisanos/smengine/RenderManager;->calculateMatrixTime:J

    .line 678
    iput-wide v2, p0, Lcom/smartisanos/smengine/RenderManager;->drawMeshTime:J

    .line 679
    iput-wide v2, p0, Lcom/smartisanos/smengine/RenderManager;->setPTime:J

    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    aput-object v2, v1, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 481
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    aput-object v2, v1, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 484
    :cond_3
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/smartisanos/smengine/RenderManager;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private getCurrentModularColorArray([Lcom/smartisanos/smengine/math/Vector4f;)[Lcom/smartisanos/smengine/math/Vector4f;
    .locals 2
    .param p1, "inputColorArray"    # [Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 496
    array-length v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown mat array lengh"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray9:[Lcom/smartisanos/smengine/math/Vector4f;

    .line 500
    :goto_0
    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mModularColorMatArray16:[Lcom/smartisanos/smengine/math/Vector4f;

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private getCurrentMvpMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)[Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 2
    .param p1, "inputMatArray"    # [Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 486
    array-length v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 492
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown mat array lengh"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray9:[Lcom/smartisanos/smengine/math/Matrix4f;

    .line 490
    :goto_0
    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mMvpMatArray16:[Lcom/smartisanos/smengine/math/Matrix4f;

    goto :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getRenderUnit()Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    sget-object v1, Lcom/smartisanos/smengine/RenderManager;->mRenderUnitPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1177
    sget-object v1, Lcom/smartisanos/smengine/RenderManager;->mRenderUnitPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .line 1178
    .local v0, "ru":Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->clear()V

    .line 1179
    sget-object v1, Lcom/smartisanos/smengine/RenderManager;->mRenderUnitPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1182
    .end local v0    # "ru":Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    invoke-direct {v0}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;-><init>()V

    goto :goto_0
.end method

.method private renderWithRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;Lcom/smartisanos/smengine/ViewPort;)V
    .locals 28
    .param p1, "ru"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    .param p2, "mainViewport"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 580
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 581
    .local v16, "startT":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 583
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 584
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 590
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 591
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v21

    .line 592
    .local v21, "x":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v22

    .line 593
    .local v22, "y":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v20

    .line 594
    .local v20, "width":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    .line 595
    .local v8, "height":I
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 602
    .end local v8    # "height":I
    .end local v20    # "width":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    .line 603
    .local v14, "rs":Lcom/smartisanos/smengine/RenderState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/smartisanos/smengine/RenderState$Param;->layer:I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/RenderState;->apply(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 621
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 623
    .local v4, "endT":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/RenderManager;->setPTime:J

    move-wide/from16 v24, v0

    sub-long v26, v4, v16

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/RenderManager;->setPTime:J

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 625
    .local v18, "startTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mCamera:Lcom/smartisanos/smengine/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/Camera;->getViewProjectionMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v15

    .line 627
    .local v15, "vp":Lcom/smartisanos/smengine/math/Matrix4f;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 628
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RenderManager;->getCurrentMvpMatrixArray([Lcom/smartisanos/smengine/math/Matrix4f;)[Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v13

    .line 629
    .local v13, "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_5

    .line 630
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMatArray:[Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v23, v0

    aget-object v11, v23, v10

    .line 631
    .local v11, "m":Lcom/smartisanos/smengine/math/Matrix4f;
    if-nez v11, :cond_2

    .line 632
    sget-boolean v23, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v23, :cond_2

    sget-object v23, Lcom/smartisanos/smengine/RenderManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v24, "DEBUG"

    const-string v25, "### RenderManager 456,Matrix4f m = ru.mMatArray[k] == null;"

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_2
    aget-object v23, v13, v10

    move-object/from16 v0, v23

    invoke-virtual {v15, v11, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 629
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 586
    .end local v4    # "endT":J
    .end local v10    # "k":I
    .end local v11    # "m":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v13    # "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v14    # "rs":Lcom/smartisanos/smengine/RenderState;
    .end local v15    # "vp":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v18    # "startTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 587
    const v23, 0x8d40

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto/16 :goto_0

    .line 598
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 599
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v26

    invoke-static/range {v23 .. v26}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_1

    .line 636
    .restart local v4    # "endT":J
    .restart local v10    # "k":I
    .restart local v13    # "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v14    # "rs":Lcom/smartisanos/smengine/RenderState;
    .restart local v15    # "vp":Lcom/smartisanos/smengine/math/Matrix4f;
    .restart local v18    # "startTime":J
    :cond_5
    array-length v0, v13

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 637
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 646
    .end local v10    # "k":I
    .end local v13    # "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 648
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 650
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 651
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 656
    :cond_6
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 658
    .local v6, "endTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/RenderManager;->calculateMatrixTime:J

    move-wide/from16 v24, v0

    sub-long v26, v6, v18

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/RenderManager;->calculateMatrixTime:J

    .line 659
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mDiffuseMapName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 660
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mShadowMapName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 661
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mNormalMapName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 663
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 664
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "just for test: mesh size error"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 639
    .end local v6    # "endTime":J
    .restart local v10    # "k":I
    .restart local v13    # "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 642
    .end local v10    # "k":I
    .end local v13    # "mvpArray":[Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Matrix4f;Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 643
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mMVPMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 644
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mWorldM:Lcom/smartisanos/smengine/math/Matrix4f;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 653
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mModularColorArray:[Lcom/smartisanos/smengine/math/Vector4f;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 667
    .restart local v6    # "endTime":J
    :cond_a
    invoke-virtual {v14}, Lcom/smartisanos/smengine/RenderState;->isUseVBO()Z

    move-result v9

    .line 668
    .local v9, "isUseVBO":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 669
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_b

    .line 670
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMeshList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/smengine/Mesh;

    .line 671
    .local v12, "mesh":Lcom/smartisanos/smengine/Mesh;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v9}, Lcom/smartisanos/smengine/mymaterial/Material;->drawMesh(Lcom/smartisanos/smengine/Mesh;Z)V

    .line 669
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 673
    .end local v12    # "mesh":Lcom/smartisanos/smengine/Mesh;
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 674
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/RenderManager;->drawMeshTime:J

    move-wide/from16 v24, v0

    sub-long v26, v6, v18

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/RenderManager;->drawMeshTime:J

    .line 675
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderState;->restore()V

    .line 676
    return-void
.end method

.method private renderWithSceneNode(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/ViewPort;)V
    .locals 0
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "mainViewPort"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 578
    return-void
.end method


.method public addRenderUnit(IILcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "renderQueue"    # I
    .param p2, "renderLayer"    # I
    .param p3, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 1133
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1138
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 1141
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mMainFrameBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 1144
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mGenMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 1147
    :pswitch_3
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mPostEffectBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 1150
    :pswitch_4
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clearSceneNode()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->clear()V

    .line 523
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mMainFrameBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->clear()V

    .line 524
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mPostEffectBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->clear()V

    .line 525
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->clear()V

    .line 526
    return-void
.end method

.method public isUsePostEffect()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    return v0
.end method

.method public renderSceneNode(F)V
    .locals 28
    .param p1, "deltaT"    # F

    .prologue
    .line 681
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v25

    .line 682
    .local v25, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v18

    .line 683
    .local v18, "mainCamera":Lcom/smartisanos/smengine/Camera;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    .line 684
    .local v4, "w":I
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    .line 685
    .local v5, "h":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mMainViewPort:Lcom/smartisanos/smengine/ViewPort;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/smartisanos/smengine/ViewPort;->setViewPort(IIII)V

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 687
    .local v26, "startM":J
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/smartisanos/smengine/RenderManager;->calculateMatrixTime:J

    .line 688
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/smartisanos/smengine/RenderManager;->drawMeshTime:J

    .line 689
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/smartisanos/smengine/RenderManager;->setPTime:J

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mMainViewPort:Lcom/smartisanos/smengine/ViewPort;

    move-object/from16 v19, v0

    .line 691
    .local v19, "mainViewport":Lcom/smartisanos/smengine/ViewPort;
    const/16 v17, 0x0

    .local v17, "m":I
    :goto_0
    const/16 v3, 0x104

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 692
    const/16 v20, 0x0

    .local v20, "n":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v3, v3, v17

    move/from16 v0, v20

    if-ge v0, v3, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v24, v3, v20

    .line 695
    .local v24, "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 692
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 691
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 698
    .end local v20    # "n":I
    :cond_1
    const/16 v17, 0x0

    :goto_2
    const/16 v3, 0x104

    move/from16 v0, v17

    if-ge v0, v3, :cond_3

    .line 699
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v3, v3, v17

    move/from16 v0, v20

    if-ge v0, v3, :cond_2

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v24, v3, v20

    .line 701
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->genMipmap()V

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeMipmapQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    const/4 v6, 0x0

    aput-object v6, v3, v20

    .line 699
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 698
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 705
    .end local v20    # "n":I
    :cond_3
    const/16 v17, 0x0

    :goto_4
    const/16 v3, 0x104

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 706
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v3, v3, v17

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v24, v3, v20

    .line 709
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 706
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 705
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 712
    .end local v20    # "n":I
    :cond_5
    const/16 v17, 0x0

    :goto_6
    const/16 v3, 0x104

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 713
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v3, v3, v17

    move/from16 v0, v20

    if-ge v0, v3, :cond_6

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v24, v3, v20

    .line 715
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->genMipmap()V

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mImageComposeQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;

    iget-object v3, v3, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    const/4 v6, 0x0

    aput-object v6, v3, v20

    .line 713
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 712
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 720
    .end local v20    # "n":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    if-eqz v3, :cond_a

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-nez v3, :cond_8

    .line 723
    new-instance v2, Lcom/smartisanos/smengine/RenderTarget;

    const-string v3, "RenderTargetForPostRender"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;IIZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 727
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 730
    const-string v3, "com.smartisanos.posteffect.texture"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v21

    .line 731
    .local v21, "postEffectTex":Lcom/smartisanos/smengine/Texture;
    if-nez v21, :cond_9

    .line 732
    new-instance v21, Lcom/smartisanos/smengine/Texture;

    .end local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 733
    .restart local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    const-string v3, "com.smartisanos.posteffect.texture"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 735
    :cond_9
    const/16 v3, 0xc11

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 736
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 737
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 738
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 739
    const/16 v3, 0x4500

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 741
    .end local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mMainFrameBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    move-object/from16 v23, v0

    .line 742
    .local v23, "rq":Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    if-nez v3, :cond_10

    .line 744
    const/16 v17, 0x1

    :goto_8
    const/4 v3, 0x2

    move/from16 v0, v17

    if-gt v0, v3, :cond_10

    .line 745
    packed-switch v17, :pswitch_data_0

    .line 744
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 747
    :pswitch_0
    const/16 v20, 0x103

    .restart local v20    # "n":I
    :goto_9
    if-ltz v20, :cond_b

    .line 748
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_a
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_d

    .line 749
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 750
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 751
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPass()V

    .line 748
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 747
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_d
    add-int/lit8 v20, v20, -0x1

    goto :goto_9

    .line 757
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_1
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_b
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_b

    .line 758
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_c
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_f

    .line 759
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 760
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 761
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPass()V

    .line 758
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 757
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 770
    .end local v16    # "k":I
    .end local v20    # "n":I
    :cond_10
    const/16 v17, 0x0

    :goto_d
    const/4 v3, 0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_16

    .line 771
    packed-switch v17, :pswitch_data_1

    .line 770
    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 773
    :pswitch_2
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_e
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_11

    .line 774
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_f
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_12

    .line 775
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 777
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 778
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 774
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 773
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 784
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_3
    const/16 v20, 0x103

    .restart local v20    # "n":I
    :goto_10
    if-ltz v20, :cond_11

    .line 785
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_11
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_13

    .line 786
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 787
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 788
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 785
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 784
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_13
    add-int/lit8 v20, v20, -0x1

    goto :goto_10

    .line 793
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_4
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_12
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_11

    .line 794
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_13
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_14

    .line 795
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 796
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 797
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 794
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .line 793
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto :goto_12

    .line 802
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_5
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_14
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_11

    .line 803
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_15
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_15

    .line 804
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 805
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 806
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 803
    add-int/lit8 v16, v16, 0x1

    goto :goto_15

    .line 802
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_15
    add-int/lit8 v20, v20, 0x1

    goto :goto_14

    .line 814
    .end local v16    # "k":I
    .end local v20    # "n":I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    if-eqz v3, :cond_3a

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 817
    .local v2, "rt":Lcom/smartisanos/smengine/RenderTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/RenderManager;->mPostEffectBufferQueueForSceneNode:Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    move-object/from16 v23, v0

    .line 818
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_16
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gt v13, v3, :cond_3a

    .line 820
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 821
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->genMipmap()V

    .line 823
    const v3, 0x8d40

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 824
    const/16 v17, 0x1

    :goto_17
    const/4 v3, 0x2

    move/from16 v0, v17

    if-gt v0, v3, :cond_1e

    .line 825
    packed-switch v17, :pswitch_data_2

    .line 824
    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto :goto_17

    .line 827
    :pswitch_6
    const/16 v20, 0x103

    .restart local v20    # "n":I
    :goto_18
    if-ltz v20, :cond_17

    .line 828
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_19
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_1a

    .line 829
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 830
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->getPostLayer()I

    move-result v3

    if-ne v13, v3, :cond_19

    .line 831
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    .line 832
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.smartisanos.posteffect.texture"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 833
    const/4 v3, 0x0

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 836
    :cond_18
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPass()V

    .line 828
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto :goto_19

    .line 827
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1a
    add-int/lit8 v20, v20, -0x1

    goto :goto_18

    .line 842
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_7
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_1a
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_17

    .line 843
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_1b
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_1d

    .line 844
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 845
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->getPostLayer()I

    move-result v3

    if-ne v13, v3, :cond_1c

    .line 846
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    .line 847
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.smartisanos.posteffect.texture"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 848
    const/4 v3, 0x0

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 851
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/mymaterial/Material;->drawPass()V

    .line 843
    :cond_1c
    add-int/lit8 v16, v16, 0x1

    goto :goto_1b

    .line 842
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1d
    add-int/lit8 v20, v20, 0x1

    goto :goto_1a

    .line 860
    .end local v16    # "k":I
    .end local v20    # "n":I
    :cond_1e
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_21

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gt v13, v3, :cond_21

    if-lez v13, :cond_21

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    .line 863
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    if-ne v3, v6, :cond_1f

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 867
    :cond_1f
    if-nez v2, :cond_20

    .line 868
    new-instance v2, Lcom/smartisanos/smengine/RenderTarget;

    .end local v2    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    const-string v3, "RenderTargetForPostRenderCache"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;IIZZZ)V

    .line 869
    .restart local v2    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 872
    :cond_20
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 873
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 874
    const/16 v3, 0xc11

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 875
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 876
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 877
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 878
    const/16 v3, 0x4500

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 881
    :cond_21
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v3, v13, :cond_22

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gtz v3, :cond_23

    :cond_22
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v3, :cond_24

    .line 883
    :cond_23
    const v3, 0x8d40

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 884
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 885
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 886
    const/16 v3, 0x4500

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 889
    :cond_24
    if-nez v13, :cond_27

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_27

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    if-nez v3, :cond_25

    .line 891
    new-instance v6, Lcom/smartisanos/smengine/RenderTarget;

    const-string v7, "RenderTargetForPostRenderCache"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move v8, v4

    move v9, v5

    invoke-direct/range {v6 .. v12}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;IIZZZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 895
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 897
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v21

    .line 898
    .restart local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    if-nez v21, :cond_26

    .line 899
    new-instance v21, Lcom/smartisanos/smengine/Texture;

    .end local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 900
    .restart local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 902
    :cond_26
    const/16 v3, 0xc11

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 903
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 904
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 905
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 906
    const/16 v3, 0x4500

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 909
    .end local v21    # "postEffectTex":Lcom/smartisanos/smengine/Texture;
    :cond_27
    const/16 v17, 0x1

    :goto_1c
    const/4 v3, 0x2

    move/from16 v0, v17

    if-gt v0, v3, :cond_33

    .line 910
    packed-switch v17, :pswitch_data_3

    .line 909
    :cond_28
    add-int/lit8 v17, v17, 0x1

    goto :goto_1c

    .line 912
    :pswitch_8
    const/16 v20, 0x103

    .restart local v20    # "n":I
    :goto_1d
    if-ltz v20, :cond_28

    .line 913
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_1e
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_2d

    .line 914
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 915
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->getPostLayer()I

    move-result v3

    if-ne v13, v3, :cond_2c

    .line 916
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 917
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.smartisanos.posteffect.texture"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 918
    const/4 v3, 0x0

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 922
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 923
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v3, v13, :cond_2a

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gtz v3, :cond_2b

    :cond_2a
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v3, :cond_2c

    .line 925
    :cond_2b
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 913
    :cond_2c
    add-int/lit8 v16, v16, 0x1

    goto :goto_1e

    .line 912
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2d
    add-int/lit8 v20, v20, -0x1

    goto :goto_1d

    .line 932
    .end local v16    # "k":I
    .end local v20    # "n":I
    :pswitch_9
    const/16 v20, 0x0

    .restart local v20    # "n":I
    :goto_1f
    const/16 v3, 0x104

    move/from16 v0, v20

    if-ge v0, v3, :cond_28

    .line 933
    const/16 v16, 0x0

    .restart local v16    # "k":I
    :goto_20
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I

    move-result-object v3

    aget-object v3, v3, v17

    aget v3, v3, v20

    move/from16 v0, v16

    if-ge v0, v3, :cond_32

    .line 934
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    aget-object v24, v3, v16

    .line 935
    .restart local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->getPostLayer()I

    move-result v3

    if-ne v13, v3, :cond_31

    .line 936
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    .line 937
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.smartisanos.posteffect.texture"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 938
    const/4 v3, 0x0

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 941
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->render(Lcom/smartisanos/smengine/ViewPort;Z)V

    .line 942
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v3, v13, :cond_2f

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gtz v3, :cond_30

    :cond_2f
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v3, :cond_31

    .line 944
    :cond_30
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v17

    aget-object v3, v3, v20

    const/4 v6, 0x0

    aput-object v6, v3, v16

    .line 933
    :cond_31
    add-int/lit8 v16, v16, 0x1

    goto :goto_20

    .line 932
    .end local v24    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_32
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    .line 953
    .end local v16    # "k":I
    .end local v20    # "n":I
    :cond_33
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPostEffectRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->getPostLayer()I

    move-result v22

    .line 954
    .local v22, "postLayer":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPostEffectRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    add-int/lit8 v6, v22, 0x1

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 956
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_34

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gt v13, v3, :cond_34

    if-lez v13, :cond_34

    .line 958
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    if-ne v3, v6, :cond_39

    .line 959
    const-string v3, "com.smartisanos.posteffect.texture"

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    .line 965
    :cond_34
    :goto_21
    if-nez v13, :cond_35

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-lez v3, :cond_35

    .line 966
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTargetCache:Lcom/smartisanos/smengine/RenderTarget;

    .line 970
    :cond_35
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-ne v3, v13, :cond_36

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-gtz v3, :cond_37

    :cond_36
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    if-nez v3, :cond_38

    .line 972
    :cond_37
    const-string v3, "com.smartisanos.posteffect.texture"

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    .line 973
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPostEffectRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 818
    :cond_38
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_16

    .line 961
    :cond_39
    const-string v3, "com.smartisanos.posteffect.texture.cache"

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    goto :goto_21

    .line 980
    .end local v2    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    .end local v13    # "i":I
    .end local v22    # "postLayer":I
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 986
    .local v14, "endM":J
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/RenderManager;->clearSceneNode()V

    .line 987
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/shadow/ShadowManager;->drawShadowMap()V

    .line 988
    return-void

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 771
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 825
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 910
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setPostRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 2
    .param p1, "r"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderManager;->mPostRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 139
    return-void
.end method

.method public setUsePostEffect(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderManager;->mUsePostEffect:Z

    .line 130
    return-void
.end method
