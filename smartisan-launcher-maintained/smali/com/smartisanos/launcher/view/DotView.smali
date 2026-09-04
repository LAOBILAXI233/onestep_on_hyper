.class public Lcom/smartisanos/launcher/view/DotView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DotView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;,
        Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;,
        Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    }
.end annotation


.field private static final HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

.field private static MAX_DOT_NUM:I = 0x0

.field private static final MAX_SPACING:F = 9.0f

.field private static final SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

.field private mDisappearEvent:Lcom/smartisanos/smengine/Event;

.field private mDotHeight:F

.field private mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

.field private mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mDotWidth:F

.field private mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mDotsMesh:Lcom/smartisanos/smengine/Mesh;

.field private final mDotsMeshName:Ljava/lang/String;

.field private mEveryStencilDotPointNum:I

.field private mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

.field private mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

.field private mParentHeight:F

.field private mParentWidth:F

.field private mRealDotNum:I

.field private mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

.field private mSpacing:F

.field private final mStencilDotMeshName:Ljava/lang/String;

.field private mStencilDotsNode:Lcom/smartisanos/smengine/SceneNode;

.field private mStencilNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private mStep:F

.field private mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

.field private moved_dot_scale:F


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    const-class v0, Lcom/smartisanos/launcher/view/DotView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    .line 42
    const/16 v0, 0x24

    sput v0, Lcom/smartisanos/launcher/view/DotView;->MAX_DOT_NUM:I

    .line 79
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    .line 80
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentWidth"    # F
    .param p3, "parentHeight"    # F
    .param p4, "dotWidth"    # F
    .param p5, "dotHeight"    # F

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    .line 57
    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    .line 62
    const-string v0, "dotview.stencil.mesh"

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilDotMeshName:Ljava/lang/String;

    .line 63
    const-string v0, "dotview.dots.mesh"

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMeshName:Ljava/lang/String;

    .line 72
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/smartisanos/launcher/view/DotView;->moved_dot_scale:F

    .line 81
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 82
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    .line 109
    iput p2, p0, Lcom/smartisanos/launcher/view/DotView;->mParentWidth:F

    .line 110
    iput p3, p0, Lcom/smartisanos/launcher/view/DotView;->mParentHeight:F

    .line 111
    iput p4, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    .line 112
    iput p5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotHeight:F

    .line 113
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;-><init>(Lcom/smartisanos/launcher/view/DotView;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    .line 114
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/DotView;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DotView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/DotView;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DotView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    return-object v0
.end method

.method private createDotAppearAnimation(Z)V
    .locals 14
    .param p1, "fromCurrentColor"    # Z

    .prologue
    const/16 v13, 0xe

    const/4 v1, 0x3

    const/4 v12, 0x0

    .line 123
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v2, :cond_0

    .line 124
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 128
    :goto_0
    const v11, 0x3dcccccd    # 0.1f

    .line 129
    .local v11, "time":F
    if-eqz p1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 134
    :goto_1
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 135
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 136
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 137
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 139
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 141
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 142
    .restart local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 143
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 144
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 146
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 148
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 149
    .restart local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 150
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 151
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 153
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 155
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setUserData(B)V

    .line 156
    new-instance v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v10, p0, v1}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V

    .line 157
    .local v10, "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v1, v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 158
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 159
    return-void

    .line 126
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v10    # "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    .end local v11    # "time":F
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto/16 :goto_0

    .line 132
    .restart local v11    # "time":F
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    sget-object v3, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    goto/16 :goto_1
.end method

.method private createDotDisappearAnimation(Z)V
    .locals 14
    .param p1, "fromCurrentColor"    # Z

    .prologue
    const/16 v13, 0xe

    const/4 v1, 0x3

    const/4 v12, 0x0

    .line 162
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v2, :cond_2

    .line 163
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 167
    :goto_0
    if-eqz p1, :cond_3

    .line 168
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 172
    :goto_1
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## dot disappear animation color = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    .line 174
    .local v11, "time":F
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 175
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 176
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 177
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 179
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 181
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 182
    .restart local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 183
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 184
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 186
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 188
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 189
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    cmpl-float v2, v2, v12

    if-lez v2, :cond_1

    .line 190
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 191
    .restart local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 192
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 193
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 195
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v12, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 198
    :cond_1
    new-instance v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v10, p0, v1}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V

    .line 199
    .local v10, "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v1, v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 200
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 201
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setUserData(B)V

    .line 202
    return-void

    .line 165
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v10    # "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    .end local v11    # "time":F
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor:Lcom/smartisanos/smengine/math/Vector4f;

    sget-object v3, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/math/Vector4f;->set(Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    goto/16 :goto_1
.end method

.method private createDotSinkAnimation()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 205
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 210
    :goto_0
    const v9, 0x3dcccccd    # 0.1f

    .line 211
    .local v9, "time":F
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 212
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 213
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget v5, p0, Lcom/smartisanos/launcher/view/DotView;->moved_dot_scale:F

    iget v6, p0, Lcom/smartisanos/launcher/view/DotView;->moved_dot_scale:F

    move v3, v2

    move v4, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 215
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 216
    new-instance v8, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V

    .line 217
    .local v8, "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v0, v8, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 218
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 219
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUserData(B)V

    .line 220
    return-void

    .line 208
    .end local v8    # "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    .end local v9    # "time":F
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->reset()V

    goto :goto_0
.end method

.method private createDotSlideAnimation(FF)V
    .locals 10
    .param p1, "fromx"    # F
    .param p2, "tox"    # F

    .prologue
    .line 263
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 269
    :goto_0
    const v9, 0x3ecccccd    # 0.4f

    .line 270
    .local v9, "time":F
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 271
    .local v0, "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 272
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 273
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    .line 274
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    .line 275
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    .line 276
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v7, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v2, p1

    move v5, p2

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 278
    new-instance v8, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V

    .line 279
    .local v8, "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v1, v8, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 280
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 281
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 290
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setUserData(B)V

    .line 291
    return-void

    .line 266
    .end local v0    # "trans_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v8    # "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    .end local v9    # "time":F
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto :goto_0
.end method

.method private createDotUpAnimation()V
    .locals 14

    .prologue
    const/16 v8, 0xe

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    .line 223
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v1, :cond_1

    .line 224
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 228
    :goto_0
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 229
    .local v0, "dotUpAnimation":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v12, 0x3dcccccd    # 0.1f

    .line 230
    .local v12, "time":F
    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 231
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 232
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 233
    .local v11, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x1

    iget v2, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 235
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v13, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 236
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 237
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    cmpl-float v1, v1, v13

    if-lez v1, :cond_0

    .line 238
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "dotUpAnimation":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 239
    .restart local v0    # "dotUpAnimation":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 240
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 241
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mTmpColor2:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v9, Lcom/smartisanos/launcher/view/DotView;->HIDDEN_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 243
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v13, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 246
    :cond_0
    new-instance v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v10, p0, v1}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V

    .line 247
    .local v10, "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iput-object v1, v10, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 248
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 249
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setUserData(B)V

    .line 250
    return-void

    .line 226
    .end local v0    # "dotUpAnimation":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v10    # "a":Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
    .end local v11    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "time":F
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto/16 :goto_0
.end method

.method private createDotsMesh()V
    .locals 17

    .prologue
    .line 737
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    if-eqz v1, :cond_0

    .line 738
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 739
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    .line 741
    :cond_0
    const/4 v7, 0x0

    .line 742
    .local v7, "centerx":F
    const/4 v8, 0x0

    .line 743
    .local v8, "centery":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    new-array v2, v1, [F

    .line 744
    .local v2, "points":[F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [F

    .line 745
    .local v3, "texPoints":[F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [S

    .line 746
    .local v4, "faces":[S
    const/4 v10, 0x0

    .line 747
    .local v10, "k":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    if-ge v9, v1, :cond_1

    .line 748
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v13, v7, v1

    .line 749
    .local v13, "x1":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v15, v8, v1

    .line 750
    .local v15, "y1":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float v14, v7, v1

    .line 751
    .local v14, "x2":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float v16, v8, v1

    .line 752
    .local v16, "y2":F
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .local v11, "k":I
    aput v13, v2, v10

    .line 753
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput v15, v2, v11

    .line 754
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v10

    .line 756
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput v14, v2, v11

    .line 757
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput v15, v2, v10

    .line 758
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v11

    .line 760
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput v14, v2, v10

    .line 761
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput v16, v2, v11

    .line 762
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v10

    .line 764
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    aput v13, v2, v11

    .line 765
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    aput v16, v2, v10

    .line 766
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v2, v11

    .line 767
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    add-float/2addr v1, v5

    add-float/2addr v7, v1

    .line 747
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 769
    .end local v13    # "x1":F
    .end local v14    # "x2":F
    .end local v15    # "y1":F
    .end local v16    # "y2":F
    :cond_1
    array-length v1, v2

    if-eq v10, v1, :cond_2

    .line 770
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create dot mesh points num error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_2
    const/4 v10, 0x0

    .line 773
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    if-ge v9, v1, :cond_3

    .line 775
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v3, v10

    .line 776
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v3, v11

    .line 778
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v10

    .line 779
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/4 v1, 0x0

    aput v1, v3, v11

    .line 781
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v10

    .line 782
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v11

    .line 784
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    const/4 v1, 0x0

    aput v1, v3, v10

    .line 785
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v11

    .line 773
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 787
    :cond_3
    array-length v1, v3

    if-eq v10, v1, :cond_4

    .line 788
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create dot mesh tex points num error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_4
    const/4 v10, 0x0

    .line 791
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    if-ge v9, v1, :cond_5

    .line 792
    mul-int/lit8 v12, v9, 0x4

    .line 793
    .local v12, "start":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    int-to-short v1, v12

    aput-short v1, v4, v10

    .line 794
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    add-int/lit8 v1, v12, 0x1

    int-to-short v1, v1

    aput-short v1, v4, v11

    .line 795
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    add-int/lit8 v1, v12, 0x2

    int-to-short v1, v1

    aput-short v1, v4, v10

    .line 797
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    int-to-short v1, v12

    aput-short v1, v4, v11

    .line 798
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "k":I
    .restart local v11    # "k":I
    add-int/lit8 v1, v12, 0x2

    int-to-short v1, v1

    aput-short v1, v4, v10

    .line 799
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "k":I
    .restart local v10    # "k":I
    add-int/lit8 v1, v12, 0x3

    int-to-short v1, v1

    aput-short v1, v4, v11

    .line 791
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 801
    .end local v12    # "start":I
    :cond_5
    array-length v1, v4

    if-eq v10, v1, :cond_6

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create dot mesh face num error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :cond_6
    new-instance v1, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v1}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 806
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v1

    const-string v5, "dotview.dots.mesh"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v1, v5, v6}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 807
    return-void
.end method

.method private createDotsNode()V
    .locals 12

    .prologue
    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x1

    .line 669
    iget v4, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    mul-int/lit8 v1, v4, 0x2

    .line 670
    .local v1, "faceNum":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/Mesh;->createIndexBuffer(I)V

    .line 671
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v4, :cond_1

    .line 672
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 694
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v4, :cond_2

    .line 695
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 729
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    if-nez v4, :cond_0

    .line 730
    new-instance v4, Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "movedDotNode"

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    .line 731
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/DotView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 732
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 734
    :cond_0
    return-void

    .line 674
    :cond_1
    new-instance v4, Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "backgroundNode"

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    .line 675
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 676
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 677
    .local v3, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 678
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    sget-object v5, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 679
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "dot_fix.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 680
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 682
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v2

    .line 683
    .local v2, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 684
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_BG:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 685
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 686
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 687
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 688
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 689
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 690
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/DotView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 691
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto/16 :goto_0

    .line 697
    .end local v0    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .end local v2    # "layerStatus":I
    .end local v3    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_2
    new-instance v4, Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "shadowNode"

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    .line 698
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 699
    .restart local v3    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 700
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsMesh:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 701
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    sget-object v5, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v8, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 702
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "dot_shadow.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 703
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 704
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 705
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 706
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 709
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v2

    .line 710
    .restart local v2    # "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 711
    .restart local v0    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget v5, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_DOT_SHADOW:I

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 712
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 713
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 714
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/DotView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 715
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto/16 :goto_1
.end method

.method private createMovedDotNode()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 578
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v3, :cond_0

    .line 579
    const-string v3, "moveDot"

    iget v4, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    iget v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotHeight:F

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    .line 580
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 581
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 582
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v4, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v5, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v7, Lcom/smartisanos/launcher/view/DotView;->SHOW_ALPHA:Lcom/smartisanos/smengine/math/Vector4f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 583
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    const-string v4, "dot_move.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 585
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 587
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 588
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 590
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 591
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v8, v8, v8}, Lcom/smartisanos/smengine/RenderState;->setStencilTestFunc(III)V

    .line 592
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v9, v9, v9}, Lcom/smartisanos/smengine/RenderState;->setStencilOp(III)V

    .line 594
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/RenderState;->setIsClearStencilBuffer(Z)V

    .line 596
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 598
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    .line 599
    .local v1, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 600
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    iget v4, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_MOVE_DOT:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 603
    .end local v0    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .end local v1    # "layerStatus":I
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    return-void
.end method

.method private createSpacing()V
    .locals 4

    .prologue
    .line 613
    iget v1, p0, Lcom/smartisanos/launcher/view/DotView;->mParentWidth:F

    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    int-to-float v2, v2

    iget v3, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 614
    .local v0, "spacing":F
    const/high16 v1, 0x41100000    # 9.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 615
    const/high16 v0, 0x41100000    # 9.0f

    .line 617
    :cond_0
    iput v0, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    .line 618
    return-void
.end method

.method private createStencilDotMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 27

    .prologue
    .line 867
    const-string v4, "dot_mask.png"

    invoke-static {v4}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 868
    .local v17, "bmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/view/DotView;->mDotHeight:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 869
    .local v2, "bt":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 870
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 871
    .local v9, "height":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    .line 872
    .local v18, "bytesPerRow":I
    mul-int v4, v9, v18

    new-array v3, v4, [I

    .line 873
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 874
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v20, "dots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    new-instance v25, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v25 .. v25}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 876
    .local v25, "out":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v9, :cond_2

    .line 877
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v5, :cond_1

    .line 878
    mul-int v4, v21, v5

    add-int v4, v4, v22

    aget v19, v3, v4

    .line 879
    .local v19, "c":I
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    .line 880
    .local v16, "a":I
    const/16 v4, 0x50

    move/from16 v0, v16

    if-le v0, v4, :cond_0

    .line 881
    move/from16 v0, v22

    int-to-float v4, v0

    add-int/lit8 v6, v9, -0x1

    sub-int v6, v6, v21

    int-to-float v6, v6

    int-to-float v7, v5

    int-to-float v8, v9

    move-object/from16 v0, v25

    invoke-static {v4, v6, v7, v8, v0}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 883
    new-instance v26, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 884
    .local v26, "v":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v25

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    const v6, 0x3ee66666    # 0.45f

    add-float/2addr v4, v6

    move-object/from16 v0, v26

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 885
    move-object/from16 v0, v25

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    const v6, 0x3f0a3d71    # 0.54f

    sub-float/2addr v4, v6

    move-object/from16 v0, v26

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 886
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .end local v26    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 876
    .end local v16    # "a":I
    .end local v19    # "c":I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 890
    .end local v22    # "j":I
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 892
    sget-object v4, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "can not create stencil mesh : dot image error"

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 894
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v11, v4, [F

    .line 895
    .local v11, "points":[F
    const/16 v23, 0x0

    .line 896
    .local v23, "k":I
    const/16 v21, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    .line 897
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/smartisanos/smengine/math/Vector2f;

    .line 898
    .restart local v26    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "k":I
    .local v24, "k":I
    move-object/from16 v0, v26

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v4, v11, v23

    .line 899
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "k":I
    .restart local v23    # "k":I
    move-object/from16 v0, v26

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v4, v11, v24

    .line 900
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "k":I
    .restart local v24    # "k":I
    const/4 v4, 0x0

    aput v4, v11, v23

    .line 896
    add-int/lit8 v21, v21, 0x1

    move/from16 v23, v24

    .end local v24    # "k":I
    .restart local v23    # "k":I
    goto :goto_2

    .line 902
    .end local v26    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    move/from16 v0, v23

    if-eq v0, v4, :cond_5

    .line 903
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "create dots error"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    :cond_5
    new-instance v10, Lcom/smartisanos/smengine/Mesh;

    invoke-direct {v10}, Lcom/smartisanos/smengine/Mesh;-><init>()V

    .line 906
    .local v10, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/smartisanos/smengine/Mesh;->create([F[F[S[FZ)V

    .line 907
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 908
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 909
    return-object v10
.end method

.method private createStencilDotNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 912
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    const-string v4, "dotview.stencil.mesh"

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 913
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStencilDotNode : mesh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 914
    :cond_0
    if-nez v1, :cond_1

    .line 915
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createStencilDotMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 916
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    const-string v4, "dotview.stencil.mesh"

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 918
    :cond_1
    new-instance v2, Lcom/smartisanos/smengine/SceneNode;

    const-string v3, "stencilNode"

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 919
    .local v2, "stencilNode":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 920
    const-string v3, "GlobalColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 921
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 922
    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 923
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DotView;->setStencilDotProperty(Lcom/smartisanos/smengine/SceneNode;)V

    .line 924
    return-object v2
.end method

.method private createStencilNode()V
    .locals 4

    .prologue
    .line 566
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 567
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DotView;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0

    .line 569
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    if-ge v0, v2, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createStencilDotNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 572
    .restart local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DotView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 573
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method private doLayout(I)V
    .locals 9
    .param p1, "moveDotIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 652
    const/4 v2, 0x0

    .line 653
    .local v2, "startx":F
    const/4 v3, 0x0

    .line 654
    .local v3, "starty":F
    iget v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    iget v7, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    add-float v4, v6, v7

    .line 655
    .local v4, "step":F
    int-to-float v6, p1

    mul-float/2addr v6, v4

    add-float v5, v2, v6

    .line 656
    .local v5, "x":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6, v5, v3, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 657
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 659
    move v5, v2

    .line 660
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 661
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 662
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, v5, v3, v8}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 663
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 664
    add-float/2addr v5, v4

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method private getAnimationString(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .prologue
    .line 329
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$1;->$SwitchMap$com$smartisanos$launcher$view$DotView$DOT_ANIMATION:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    const-string v0, "error dot"

    :goto_0
    return-object v0

    .line 331
    :pswitch_0
    const-string v0, "DOT_APPEAR"

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v0, "DOT_SINK"

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v0, "DOT_UP"

    goto :goto_0

    .line 337
    :pswitch_3
    const-string v0, "DOT_DISAPPEAR"

    goto :goto_0

    .line 339
    :pswitch_4
    const-string v0, "DOT_SLIDE"

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getDotXByIndex(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 318
    iget v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    add-float v0, v1, v2

    .line 319
    .local v0, "step":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    return v1
.end method

.method private getIndex()I
    .locals 4

    .prologue
    .line 323
    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    iget v3, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    add-float v1, v2, v3

    .line 324
    .local v1, "step":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 325
    .local v0, "fromx":F
    div-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private hasAnimation()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnDotPlace()Z
    .locals 4

    .prologue
    .line 642
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v2, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 643
    .local v2, "x":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 644
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 645
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    .line 646
    const/4 v3, 0x1

    .line 649
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_1
    return v3

    .line 643
    .restart local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setDotsAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 119
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 120
    return-void
.end method

.method private setStencilDotProperty(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "stencilNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 928
    if-nez p1, :cond_0

    .line 940
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 932
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 933
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 934
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v1}, Lcom/smartisanos/smengine/RenderState;->setStencilTestFunc(III)V

    .line 935
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/RenderState;->setStencilOp(III)V

    .line 937
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 938
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsPredraw(Z)V

    .line 939
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    goto :goto_0
.end method


.method public applyTheme()V
    .locals 5

    .prologue
    .line 857
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    const-string v4, "dotview.stencil.mesh"

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    .line 858
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createStencilDotMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 859
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    const-string v4, "dotview.stencil.mesh"

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 862
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public create(II)V
    .locals 2
    .param p1, "dotNum"    # I
    .param p2, "moveDotIndex"    # I

    .prologue
    .line 621
    if-gtz p1, :cond_0

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dots number must >= 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    if-ne v0, p1, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->getIndex()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 626
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/DotView;->doLayout(I)V

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 630
    :cond_2
    iput p1, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    .line 631
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createSpacing()V

    .line 632
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createDotsMesh()V

    .line 633
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createMovedDotNode()V

    .line 634
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createStencilNode()V

    .line 636
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createDotsNode()V

    .line 638
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/DotView;->doLayout(I)V

    goto :goto_0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 5
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    :goto_0
    return-void

    .line 947
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 948
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mStencilNodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 949
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 952
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->isOnDotPlace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 960
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 961
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0

    .line 954
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderState;->isEnableStencilTest()Z

    move-result v2

    if-nez v2, :cond_2

    .line 955
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsStencilTestEnable(Z)V

    .line 956
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4}, Lcom/smartisanos/smengine/RenderState;->setStencilTestFunc(III)V

    .line 957
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3}, Lcom/smartisanos/smengine/RenderState;->setStencilOp(III)V

    goto :goto_2
.end method

.method public forceKillAllDotAnimation()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_0

    .line 966
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_2

    .line 969
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "### mDotSinkAnimation != null, kill"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_4

    .line 974
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "### mDotUpAnimation != null, kill"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 978
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_6

    .line 979
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "### mDotSlideAnimation != null, kill"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 980
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 983
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_8

    .line 984
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "### mDotsAppearAnimation != null, kill"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 985
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 988
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_a

    .line 989
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "### mDotsDisappearAnimation != null, kill"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 990
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 992
    :cond_a
    return-void
.end method

.method public getMovedDotLocation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V
    .locals 11
    .param p1, "dotAnimationType"    # Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    .param p2, "dotIndex"    # I

    .prologue
    .line 358
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## start dot animation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DotView;->getAnimationString(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ##"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    sget-object v6, Lcom/smartisanos/launcher/view/DotView$1;->$SwitchMap$com$smartisanos$launcher$view$DotView$DOT_ANIMATION:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 362
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 364
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_2

    .line 365
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 367
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 368
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 369
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_3

    .line 370
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 373
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 374
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 376
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_5

    .line 377
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 378
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 379
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 381
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_4

    .line 382
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 384
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 385
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->createDotAppearAnimation(Z)V

    .line 386
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 390
    :cond_5
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v5

    .line 391
    .local v5, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v4, v5, Lcom/smartisanos/smengine/util/TempVars;->vect41f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 392
    .local v4, "tmpColor":Lcom/smartisanos/smengine/math/Vector4f;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 393
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 394
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 395
    invoke-virtual {v5}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_0

    .line 398
    :cond_6
    invoke-virtual {v5}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 399
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 400
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->createDotAppearAnimation(Z)V

    .line 401
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 405
    .end local v4    # "tmpColor":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v5    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    :pswitch_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 406
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 408
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_7

    .line 409
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 411
    :cond_7
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 413
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 414
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 416
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_8

    .line 417
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 419
    :cond_8
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 420
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createDotSinkAnimation()V

    .line 421
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->start()V

    goto/16 :goto_0

    .line 424
    :pswitch_2
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 425
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DotView;->createDotUpAnimation()V

    .line 426
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 429
    :pswitch_3
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 431
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 432
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 434
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-eq v6, v7, :cond_1

    .line 437
    :cond_9
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "## create DOT_DISAPPEAR ###"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_a
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->createDotDisappearAnimation(Z)V

    .line 439
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 443
    :pswitch_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->isVisible()Z

    move-result v2

    .line 444
    .local v2, "isVisible":Z
    if-nez v2, :cond_b

    .line 445
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 447
    :cond_b
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, "inDisappearAnimation":Z
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 451
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 453
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_c

    .line 454
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 455
    const/4 v1, 0x1

    .line 458
    :cond_c
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 459
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 461
    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v7

    if-ne v6, v7, :cond_d

    .line 462
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 465
    :cond_d
    const/4 v3, 0x0

    .line 466
    .local v3, "targetx":F
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/DotView;->getDotXByIndex(I)F

    move-result v3

    .line 467
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v0, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 468
    .local v0, "fromx":F
    invoke-direct {p0, v0, v3}, Lcom/smartisanos/launcher/view/DotView;->createDotSlideAnimation(FF)V

    .line 469
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 470
    if-nez v2, :cond_10

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 471
    :cond_e
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_f

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "### create Dot appear animation #####"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_f
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->createDotAppearAnimation(Z)V

    .line 473
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 474
    :cond_10
    if-eqz v1, :cond_1

    .line 475
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/smartisanos/launcher/view/DotView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "## create dot appear animation when disappear ###"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_11
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/DotView;->createDotAppearAnimation(Z)V

    .line 477
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public stopAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)V
    .locals 3
    .param p1, "dotAnimationType"    # Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .prologue
    const/4 v2, 0x0

    .line 484
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$1;->$SwitchMap$com$smartisanos$launcher$view$DotView$DOT_ANIMATION:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 487
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 490
    :cond_0
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsAppearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0

    .line 494
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 495
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 498
    :cond_1
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSinkAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 503
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_2

    .line 504
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 506
    :cond_2
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0

    .line 510
    :pswitch_3
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 512
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 514
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_3

    .line 515
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 517
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/DotView;->setDotsAlpha(F)V

    .line 518
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotsDisappearAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0

    .line 522
    :pswitch_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 523
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_4

    .line 524
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 526
    :cond_4
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public touchDown()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 346
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 348
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotSlideAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 351
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDisappearEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 352
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 353
    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->getUserData()B

    move-result v1

    if-ne v0, v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView;->mDotUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 356
    :cond_1
    return-void
.end method

.method public translateMovedNode(F)V
    .locals 7
    .param p1, "pageX"    # F

    .prologue
    .line 545
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    if-nez v5, :cond_0

    .line 556
    :goto_0
    return-void

    .line 548
    :cond_0
    const/4 v2, 0x0

    .line 549
    .local v2, "startx":F
    const/4 v3, 0x0

    .line 550
    .local v3, "starty":F
    iget v5, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    iget v6, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    add-float v4, v5, v6

    .line 552
    .local v4, "step":F
    neg-float v5, p1

    iget v6, p0, Lcom/smartisanos/launcher/view/DotView;->mParentWidth:F

    div-float v1, v5, v6

    .line 553
    .local v1, "moveDotIndex":F
    mul-float v5, v1, v4

    add-float v0, v2, v5

    .line 554
    .local v0, "dotMoveX":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 555
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0
.end method

.method public updateDotView()V
    .locals 3

    .prologue
    .line 533
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v0

    .line 534
    .local v0, "dotNum":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v1

    .line 535
    .local v1, "movedDotIndex":I
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/DotView;->create(II)V

    .line 536
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->updateDotViewLocation()V

    .line 537
    return-void
.end method

.method public updateDotView(II)V
    .locals 0
    .param p1, "screenCount"    # I
    .param p2, "movedDotIndex"    # I

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/DotView;->create(II)V

    .line 541
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->updateDotViewLocation()V

    .line 542
    return-void
.end method

.method public updateDotViewLocation()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 606
    iget v2, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/smartisanos/launcher/view/DotView;->mDotWidth:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/launcher/view/DotView;->mRealDotNum:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/smartisanos/launcher/view/DotView;->mSpacing:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 607
    .local v0, "dotsWidth":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v2, v3

    .line 608
    .local v1, "height":F
    neg-float v2, v0

    div-float/2addr v2, v5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/smartisanos/launcher/view/DotView;->setTranslate(FFF)V

    .line 609
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DotView;->updateGeometricState()V

    .line 610
    return-void
.end method

.method public updateLayer()V
    .locals 4

    .prologue
    .line 996
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 997
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    .line 998
    .local v1, "layerStatus":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 999
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mMovedDotRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_MOVE_DOT:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1002
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mBackgroundDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_BG:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 1005
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v2, :cond_2

    .line 1006
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DotView;->mShadowDotsNode:Lcom/smartisanos/smengine/SceneNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_DOT_SHADOW:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 1008
    :cond_2
    return-void
.end method
