.class public Lcom/smartisanos/smengine/RenderState;
.super Ljava/lang/Object;
.source "RenderState.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/RenderState$RenderStateException;,
        Lcom/smartisanos/smengine/RenderState$Param;,
        Lcom/smartisanos/smengine/RenderState$StencilOp;,
        Lcom/smartisanos/smengine/RenderState$TestFunction;,
        Lcom/smartisanos/smengine/RenderState$BlendFactor;,
        Lcom/smartisanos/smengine/RenderState$BlendMode;
    }
.end annotation


.field public static final CULL_BACK:I = 0x1

.field public static final CULL_FRONT:I = 0x0

.field public static final FACE_CLOCKWISE:I = 0x0

.field public static final FACE_COUNTERCLOCKWISE:I = 0x1


.field private mAlpha:Lcom/smartisanos/smengine/math/Vector4f;

.field private mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mBlendFactorForDstAlpha:I

.field private mBlendFactorForDstRGB:I

.field private mBlendFactorForSrcAlpha:I

.field private mBlendFactorForSrcRGB:I

.field private mBlendMode:I

.field private mClear:Z

.field private mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mClearDepthColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mClearStencilValue:I

.field private mColorAMask:Z

.field private mColorBMask:Z

.field private mColorGMask:Z

.field private mColorRMask:Z

.field private mCullFace:I

.field private mDepthMask:Z

.field private mDepthTestFunc:I

.field private mFrontFace:I

.field private mIsClearStencilBuffer:Z

.field private mIsCullFaceEnable:Z

.field private mIsEnableBlend:Z

.field private mIsEnableColorMask:Z

.field private mIsEnableDepthTest:Z

.field private mIsPolygonOffsetEnable:Z

.field private mIsPostRender:Z

.field private mIsPreDrawRender:Z

.field private mIsScissor:Z

.field private mIsStencilTestEnable:Z

.field private mIsUseVBO:Z

.field private mPolygonOffsetFactor:F

.field private mPolygonOffsetUnits:F

.field private mPostLayer:I

.field private mScissorHeight:I

.field private mScissorWidth:I

.field private mScissorX:I

.field private mScissorY:I

.field private mStencilMask:I

.field private mStencilOpDepthTestFail:I

.field private mStencilOpDepthTestPass:I

.field private mStencilOpStencilFail:I

.field private mStencilRef:I

.field private mStencilTestFunc:I


.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mIsCullFaceEnable:Z

    .line 146
    iput v2, p0, Lcom/smartisanos/smengine/RenderState;->mCullFace:I

    .line 147
    iput v2, p0, Lcom/smartisanos/smengine/RenderState;->mFrontFace:I

    .line 149
    iput v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendMode:I

    .line 150
    iput v2, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcRGB:I

    .line 151
    iput v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstRGB:I

    .line 152
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcAlpha:I

    .line 153
    iput v2, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstAlpha:I

    .line 155
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableDepthTest:Z

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lcom/smartisanos/smengine/RenderState;->mDepthTestFunc:I

    .line 161
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mDepthMask:Z

    .line 165
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpStencilFail:I

    .line 166
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestFail:I

    .line 167
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestPass:I

    .line 168
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilTestFunc:I

    .line 172
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsClearStencilBuffer:Z

    .line 175
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mColorRMask:Z

    .line 176
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mColorGMask:Z

    .line 177
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mColorBMask:Z

    .line 178
    iput-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mColorAMask:Z

    .line 180
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPolygonOffsetEnable:Z

    .line 181
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetFactor:F

    .line 182
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetUnits:F

    .line 183
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsUseVBO:Z

    .line 184
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPostRender:Z

    .line 185
    iput-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPreDrawRender:Z

    .line 186
    iput v1, p0, Lcom/smartisanos/smengine/RenderState;->mPostLayer:I

    return-void
.end method

.method private applyBlend(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 8
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/16 v1, 0xbe2

    const/16 v7, 0x306

    const/16 v6, 0x303

    const/16 v5, 0x302

    const/4 v4, 0x1

    .line 492
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableBlend:Z

    if-eqz v0, :cond_1

    .line 493
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 494
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 497
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendMode:I

    packed-switch v0, :pswitch_data_0

    .line 527
    new-instance v0, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    const-string v1, "unsupport blendmode"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_0
    invoke-static {v4, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 533
    :goto_0
    :pswitch_1
    return-void

    .line 504
    :pswitch_2
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 507
    :pswitch_3
    const/16 v0, 0x301

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 510
    :pswitch_4
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 513
    :pswitch_5
    invoke-static {v4, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 516
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 519
    :pswitch_7
    const/16 v0, 0x300

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 523
    :pswitch_8
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcRGB:I

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/RenderState;->convertBlendFactor(I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstRGB:I

    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/RenderState;->convertBlendFactor(I)I

    move-result v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcAlpha:I

    .line 524
    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/RenderState;->convertBlendFactor(I)I

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstAlpha:I

    invoke-direct {p0, v3}, Lcom/smartisanos/smengine/RenderState;->convertBlendFactor(I)I

    move-result v3

    .line 523
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private applyClearColor()V
    .locals 4

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mClear:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v2, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v3, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 661
    :cond_0
    return-void
.end method

.method private applyClearStencilBuffer(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 1
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsClearStencilBuffer:Z

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mClearStencilValue:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 432
    const-string v0, "clear stencil color"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 433
    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 434
    const-string v0, "enable stencil"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 435
    const/16 v0, 0x400

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 436
    const-string v0, "clear stencil"

    invoke-static {v0}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 439
    :cond_0
    return-void
.end method

.method private applyColorMask(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 4
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/4 v1, 0x1

    .line 423
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableColorMask:Z

    if-eqz v0, :cond_0

    .line 424
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mColorRMask:Z

    iget-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mColorGMask:Z

    iget-boolean v2, p0, Lcom/smartisanos/smengine/RenderState;->mColorBMask:Z

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mColorAMask:Z

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    goto :goto_0
.end method

.method private applyDepthTest(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 2
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/16 v1, 0xb71

    .line 441
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableDepthTest:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 443
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mDepthTestFunc:I

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/RenderState;->convertTestFunction(I)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 454
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private applyPolygonOffset(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 3
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const v1, 0x8037

    .line 663
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsPolygonOffsetEnable:Z

    if-eqz v0, :cond_0

    .line 664
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 665
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetFactor:F

    iget v1, p1, Lcom/smartisanos/smengine/RenderState$Param;->layer:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetUnits:F

    iget v2, p1, Lcom/smartisanos/smengine/RenderState$Param;->layer:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private applyScissor(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 4
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/16 v1, 0xc11

    .line 642
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsScissor:Z

    if-eqz v0, :cond_0

    .line 643
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 644
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mScissorX:I

    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mScissorY:I

    iget v2, p0, Lcom/smartisanos/smengine/RenderState;->mScissorWidth:I

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private applyStencilTest(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 4
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/16 v2, 0xb90

    .line 583
    iget-boolean v1, p0, Lcom/smartisanos/smengine/RenderState;->mIsStencilTestEnable:Z

    if-eqz v1, :cond_0

    .line 584
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 585
    const-string v1, "enable stencil test"

    invoke-static {v1}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 586
    const/16 v0, 0x200

    .line 587
    .local v0, "func":I
    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilTestFunc:I

    packed-switch v1, :pswitch_data_0

    .line 629
    new-instance v1, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    const-string v2, "unknown stencil function"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :pswitch_0
    const/16 v0, 0x200

    .line 632
    :goto_0
    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilRef:I

    iget v2, p0, Lcom/smartisanos/smengine/RenderState;->mStencilMask:I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 633
    const-string v1, "stencilfunc"

    invoke-static {v1}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 634
    iget v1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpStencilFail:I

    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/RenderState;->convertStencilOp(I)I

    move-result v1

    iget v2, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestFail:I

    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/RenderState;->convertStencilOp(I)I

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestPass:I

    .line 635
    invoke-direct {p0, v3}, Lcom/smartisanos/smengine/RenderState;->convertStencilOp(I)I

    move-result v3

    .line 634
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 636
    const-string v1, "stencilop"

    invoke-static {v1}, Lcom/smartisanos/smengine/GLContext;->checkGlError(Ljava/lang/String;)V

    .line 640
    .end local v0    # "func":I
    :goto_1
    return-void

    .line 595
    .restart local v0    # "func":I
    :pswitch_1
    const/16 v0, 0x202

    .line 597
    goto :goto_0

    .line 600
    :pswitch_2
    const/16 v0, 0x205

    .line 602
    goto :goto_0

    .line 605
    :pswitch_3
    const/16 v0, 0x203

    .line 607
    goto :goto_0

    .line 610
    :pswitch_4
    const/16 v0, 0x201

    .line 612
    goto :goto_0

    .line 615
    :pswitch_5
    const/16 v0, 0x204

    .line 617
    goto :goto_0

    .line 620
    :pswitch_6
    const/16 v0, 0x206

    .line 622
    goto :goto_0

    .line 625
    :pswitch_7
    const/16 v0, 0x207

    .line 627
    goto :goto_0

    .line 638
    .end local v0    # "func":I
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_1

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private convertBlendFactor(I)I
    .locals 3
    .param p1, "f"    # I

    .prologue
    .line 456
    packed-switch p1, :pswitch_data_0

    .line 488
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown blend factor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    .line 460
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 462
    :pswitch_2
    const/16 v0, 0x300

    goto :goto_0

    .line 464
    :pswitch_3
    const/16 v0, 0x301

    goto :goto_0

    .line 466
    :pswitch_4
    const/16 v0, 0x302

    goto :goto_0

    .line 468
    :pswitch_5
    const/16 v0, 0x303

    goto :goto_0

    .line 470
    :pswitch_6
    const/16 v0, 0x304

    goto :goto_0

    .line 472
    :pswitch_7
    const/16 v0, 0x305

    goto :goto_0

    .line 474
    :pswitch_8
    const/16 v0, 0x306

    goto :goto_0

    .line 476
    :pswitch_9
    const/16 v0, 0x307

    goto :goto_0

    .line 478
    :pswitch_a
    const/16 v0, 0x308

    goto :goto_0

    .line 480
    :pswitch_b
    const v0, 0x8004

    goto :goto_0

    .line 482
    :pswitch_c
    const v0, 0x8003

    goto :goto_0

    .line 484
    :pswitch_d
    const v0, 0x8002

    goto :goto_0

    .line 486
    :pswitch_e
    const v0, 0x8001

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private convertStencilOp(I)I
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "glOp":I
    packed-switch p1, :pswitch_data_0

    .line 578
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unknown stencil op"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :pswitch_0
    const/16 v0, 0x1e00

    .line 580
    :goto_0
    return v0

    .line 544
    :pswitch_1
    const/4 v0, 0x0

    .line 546
    goto :goto_0

    .line 549
    :pswitch_2
    const/16 v0, 0x1e01

    .line 551
    goto :goto_0

    .line 554
    :pswitch_3
    const/16 v0, 0x1e02

    .line 556
    goto :goto_0

    .line 559
    :pswitch_4
    const/16 v0, 0x1e03

    .line 561
    goto :goto_0

    .line 564
    :pswitch_5
    const v0, 0x8507

    .line 566
    goto :goto_0

    .line 569
    :pswitch_6
    const v0, 0x8508

    .line 571
    goto :goto_0

    .line 574
    :pswitch_7
    const/16 v0, 0x150a

    .line 576
    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private convertTestFunction(I)I
    .locals 3
    .param p1, "testFunc"    # I

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 274
    new-instance v0, Lcom/smartisanos/smengine/RenderState$RenderStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized test function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/RenderState$RenderStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_0
    const/16 v0, 0x200

    .line 272
    :goto_0
    return v0

    .line 260
    :pswitch_1
    const/16 v0, 0x201

    goto :goto_0

    .line 262
    :pswitch_2
    const/16 v0, 0x203

    goto :goto_0

    .line 264
    :pswitch_3
    const/16 v0, 0x204

    goto :goto_0

    .line 266
    :pswitch_4
    const/16 v0, 0x206

    goto :goto_0

    .line 268
    :pswitch_5
    const/16 v0, 0x202

    goto :goto_0

    .line 270
    :pswitch_6
    const/16 v0, 0x205

    goto :goto_0

    .line 272
    :pswitch_7
    const/16 v0, 0x207

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


.method public apply(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 0
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyDepthTest(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 672
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyBlend(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyPolygonOffset(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 674
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyScissor(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyClearStencilBuffer(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyStencilTest(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyColorMask(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 678
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/RenderState;->applyCullFace(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 679
    return-void
.end method

.method public applyCullFace(Lcom/smartisanos/smengine/RenderState$Param;)V
    .locals 2
    .param p1, "param"    # Lcom/smartisanos/smengine/RenderState$Param;

    .prologue
    const/16 v1, 0xb44

    .line 651
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsCullFaceEnable:Z

    if-eqz v0, :cond_0

    .line 652
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method public getAlpha()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mAlpha:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getClearColor()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getClearDepth()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mClearDepthColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getConstantBlendColor()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getPolygonOffsetFactor()F
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetFactor:F

    return v0
.end method

.method public getPostLayer()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mPostLayer:I

    return v0
.end method

.method public getmPolygonOffsetUnits()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetUnits:F

    return v0
.end method

.method public isClear()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mClear:Z

    return v0
.end method

.method public isDepthMask()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mDepthMask:Z

    return v0
.end method

.method public isEnableBlend()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableBlend:Z

    return v0
.end method

.method public isEnableDepthTest()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableDepthTest:Z

    return v0
.end method

.method public isEnableStencilTest()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsStencilTestEnable:Z

    return v0
.end method

.method public isPolygonOffset()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsPolygonOffsetEnable:Z

    return v0
.end method

.method public isPostRender()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsPostRender:Z

    return v0
.end method

.method public isPredraw()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsPreDrawRender:Z

    return v0
.end method

.method public isScissor()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsScissor:Z

    return v0
.end method

.method public isUseVBO()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsUseVBO:Z

    return v0
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-boolean v0, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableColorMask:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 421
    :cond_0
    return-void
.end method

.method public setAlpha(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "a"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderState;->mAlpha:Lcom/smartisanos/smengine/math/Vector4f;

    .line 389
    return-void
.end method

.method public setBlendMode(I)V
    .locals 0
    .param p1, "m"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendMode:I

    .line 407
    return-void
.end method

.method public setClearColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "clearColor"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 377
    return-void
.end method

.method public setClearDepth(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "clearDepth"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderState;->mClearDepthColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 383
    return-void
.end method

.method public setClearStencilBufferValue(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mClearStencilValue:I

    .line 336
    return-void
.end method

.method public setColorMask(ZZZZ)V
    .locals 0
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mColorRMask:Z

    .line 326
    iput-boolean p2, p0, Lcom/smartisanos/smengine/RenderState;->mColorGMask:Z

    .line 327
    iput-boolean p3, p0, Lcom/smartisanos/smengine/RenderState;->mColorBMask:Z

    .line 328
    iput-boolean p4, p0, Lcom/smartisanos/smengine/RenderState;->mColorAMask:Z

    .line 329
    return-void
.end method

.method public setColorMaskEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableColorMask:Z

    .line 323
    return-void
.end method

.method public setConstantBlendColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 290
    return-void
.end method

.method public setDepthMask(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mDepthMask:Z

    .line 305
    return-void
.end method

.method public setDepthTestFunc(I)V
    .locals 0
    .param p1, "f"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mDepthTestFunc:I

    .line 416
    return-void
.end method

.method public setFactorForBlendSeparate(IIII)V
    .locals 0
    .param p1, "srcRGBFactor"    # I
    .param p2, "dstRGBFactor"    # I
    .param p3, "srcAlphaFactor"    # I
    .param p4, "dstAlphaFactor"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcRGB:I

    .line 284
    iput p2, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstRGB:I

    .line 285
    iput p3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcAlpha:I

    .line 286
    iput p4, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstAlpha:I

    .line 287
    return-void
.end method

.method public setFrontFace(I)V
    .locals 0
    .param p1, "faceMode"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mFrontFace:I

    .line 320
    return-void
.end method

.method public setFullFace(I)V
    .locals 0
    .param p1, "face"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mCullFace:I

    .line 317
    return-void
.end method

.method public setIsClear(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mClear:Z

    .line 398
    return-void
.end method

.method public setIsClearStencilBuffer(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsClearStencilBuffer:Z

    .line 332
    return-void
.end method

.method public setIsCullFaceEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsCullFaceEnable:Z

    .line 314
    return-void
.end method

.method public setIsEnableBlend(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableBlend:Z

    .line 401
    return-void
.end method

.method public setIsEnableDepthTest(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableDepthTest:Z

    .line 410
    return-void
.end method

.method public setIsPolygonOffset(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPolygonOffsetEnable:Z

    .line 361
    return-void
.end method

.method public setIsPostRender(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPostRender:Z

    .line 196
    return-void
.end method

.method public setIsPredraw(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsPreDrawRender:Z

    .line 190
    return-void
.end method

.method public setIsScissor(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsScissor:Z

    .line 308
    return-void
.end method

.method public setIsStencilTestEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsStencilTestEnable:Z

    .line 339
    return-void
.end method

.method public setIsUseVBO(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/smartisanos/smengine/RenderState;->mIsUseVBO:Z

    .line 296
    return-void
.end method

.method public setPolygonOffsetFactorUnits(FF)V
    .locals 0
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetFactor:F

    .line 367
    iput p2, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetUnits:F

    .line 368
    return-void
.end method

.method public setPostLayer(I)V
    .locals 0
    .param p1, "postLayer"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mPostLayer:I

    .line 204
    return-void
.end method

.method public setScissor(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mScissorX:I

    .line 355
    iput p2, p0, Lcom/smartisanos/smengine/RenderState;->mScissorY:I

    .line 356
    iput p3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorWidth:I

    .line 357
    iput p4, p0, Lcom/smartisanos/smengine/RenderState;->mScissorHeight:I

    .line 358
    return-void
.end method

.method public setStencilOp(III)V
    .locals 0
    .param p1, "stencilTestFail"    # I
    .param p2, "depthTestFail"    # I
    .param p3, "depthTestPass"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpStencilFail:I

    .line 345
    iput p2, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestFail:I

    .line 346
    iput p3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestPass:I

    .line 347
    return-void
.end method

.method public setStencilTestFunc(III)V
    .locals 0
    .param p1, "fun"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/smartisanos/smengine/RenderState;->mStencilTestFunc:I

    .line 350
    iput p2, p0, Lcom/smartisanos/smengine/RenderState;->mStencilRef:I

    .line 351
    iput p3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilMask:I

    .line 352
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 211
    const-string v1, "RenderState"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 212
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v1, "mIsCullFaceEnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsCullFaceEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "mCullFace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mCullFace:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "mFrontFace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mFrontFace:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "mIsEnableBlend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableBlend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "mBlendMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "mBlendFactorForSrcRGB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcRGB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "mBlendFactorForSrcAlpha"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForSrcAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "mBlendFactorForDstRGB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstRGB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "mBlendFactorForDstAlpha"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mBlendFactorForDstAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "mBlendColor"

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "mIsEnableDepthTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableDepthTest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "mDepthTestFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mDepthTestFunc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "mClearColor"

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "mClearDepthColor"

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mClearDepthColor:Lcom/smartisanos/smengine/math/Vector4f;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_2
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "mClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mClear:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "mAlpha"

    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mAlpha:Lcom/smartisanos/smengine/math/Vector4f;

    if-nez v1, :cond_3

    const-string v1, "null"

    :goto_3
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "mDepthMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mDepthMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "mIsScissor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsScissor:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "mScissorX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "mScissorY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "mScissorWidth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "mScissorHeight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mScissorHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "mIsStencilTestEnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsStencilTestEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "mStencilOpStencilFail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpStencilFail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "mStencilOpDepthTestFail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestFail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "mStencilOpDepthTestPass"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilOpDepthTestPass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "mStecilTestFunc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilTestFunc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "mStencilRef"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "mStencilMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mStencilMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "mIsClearStencilBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsClearStencilBuffer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "mClearStencilValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mClearStencilValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "mIsEnableColorMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsEnableColorMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "mColorRMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mColorRMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "mColorGMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mColorGMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "mColorBMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mColorBMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "mColorAMask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mColorAMask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "mIsPolygonOffsetEnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsPolygonOffsetEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "mPolygonOffsetFactor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "mPolygonOffsetUnits"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/RenderState;->mPolygonOffsetUnits:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "mIsUseVBO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsUseVBO:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "mIsPostRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/smartisanos/smengine/RenderState;->mIsPostRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 254
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mBlendColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector4f;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mClearColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector4f;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mClearDepthColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector4f;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderState;->mAlpha:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector4f;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method
