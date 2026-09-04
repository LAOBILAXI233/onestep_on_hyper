.class public final Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
.super Ljava/lang/Object;
.source "SceneNodeTweenAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SceneNodeValue"
.end annotation


.field private mAngle:F

.field private mAxis:Lcom/smartisanos/smengine/math/Vector3f;

.field private mBaseClassAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

.field private mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

.field private mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

.field private mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

.field private mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

.field private mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

.field private mIsUpdateSceneNode:Z

.field private mIsUseForBlendColor:Z

.field private mPreserveColor:Z

.field private mPreserveScale:Z

.field private mScale:Lcom/smartisanos/smengine/math/Vector3f;

.field private mSceneNode:Lcom/smartisanos/smengine/SceneNode;

.field private mSkewX:F

.field private mSkewY:F

.field private mTX:F

.field private mTY:F

.field private mTZ:F

.field private mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

.field private mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

.field private mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

.field private oldScale:Lcom/smartisanos/smengine/math/Vector3f;


.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;FFF)V
    .locals 4
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "axisx"    # F
    .param p3, "axisy"    # F
    .param p4, "axisz"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 38
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 45
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    .line 46
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 47
    new-instance v1, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    .line 49
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveScale:Z

    .line 53
    iput-boolean v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveColor:Z

    .line 55
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

    .line 56
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

    .line 57
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

    .line 58
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

    .line 59
    iput-boolean v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUseForBlendColor:Z

    .line 60
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    .line 110
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    .line 111
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 112
    .local v0, "s":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 113
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 114
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v2, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 115
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 116
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 117
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput p4, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mBaseClassAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Lcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/Animation$AnimationListener;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p1, "x1"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mBaseClassAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$102(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p1, "x1"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    return-object p1
.end method

.method static synthetic access$202(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method static synthetic access$502(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUseForBlendColor:Z

    return p1
.end method


.method public getAngle()F
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAngle:F

    return v0
.end method

.method public getColor4f()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getInnerShadowAlphaRangeH()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getInnerShadowAlphaRangeV()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getInnerShadowSizeH()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getInnerShadowSizeV()Lcom/smartisanos/smengine/math/Vector4f;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

    return-object v0
.end method

.method public getScale()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getSkewX()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewX:F

    return v0
.end method

.method public getSkewY()F
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewY:F

    return v0
.end method

.method public getTexCoordLimit()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    return-object v0
.end method

.method public getTranslate()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTY:F

    return v0
.end method

.method public getTranslateZ()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTZ:F

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 75
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 76
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 77
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 78
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 79
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTX:F

    .line 80
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTY:F

    .line 81
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTZ:F

    .line 82
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAngle:F

    .line 83
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewX:F

    .line 84
    iput v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewY:F

    .line 85
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 86
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 87
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    iput v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 88
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 89
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 90
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 91
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 92
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 93
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 94
    iput-object v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    .line 95
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 96
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 97
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveScale:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    .line 101
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector4f;->zero()Lcom/smartisanos/smengine/math/Vector4f;

    .line 102
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector4f;->zero()Lcom/smartisanos/smengine/math/Vector4f;

    .line 103
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector4f;->zero()Lcom/smartisanos/smengine/math/Vector4f;

    .line 104
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector4f;->zero()Lcom/smartisanos/smengine/math/Vector4f;

    .line 106
    iput-object v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mBaseClassAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 108
    return-void
.end method

.method public setAngle(FZ)V
    .locals 2
    .param p1, "a"    # F
    .param p2, "update"    # Z

    .prologue
    .line 214
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAngle:F

    .line 215
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 218
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 219
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateRotate(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setAxis(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mAxis:Lcom/smartisanos/smengine/math/Vector3f;

    .line 286
    return-void
.end method

.method public setColor4f(FFFFZ)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .param p5, "update"    # Z

    .prologue
    .line 261
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 262
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    .line 263
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUseForBlendColor:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RenderState;->getConstantBlendColor()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v0

    .line 265
    .local v0, "blendColor":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 280
    .end local v0    # "blendColor":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveColor:Z

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 271
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    mul-float/2addr v4, p3

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTempColor:Lcom/smartisanos/smengine/math/Vector4f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    mul-float/2addr v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 275
    :goto_1
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mColor4f:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->onUpdateModulateColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_1
.end method

.method public setInnerShadowAlphaRangeH(FFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F
    .param p5, "update"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 316
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 317
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_H(FFFF)V

    .line 318
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 322
    :cond_0
    return-void
.end method

.method public setInnerShadowAlphaRangeV(FFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F
    .param p5, "update"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 329
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 330
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_V(FFFF)V

    .line 331
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowAlphaRangeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 335
    :cond_0
    return-void
.end method

.method public setInnerShadowSizeH(FFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F
    .param p5, "update"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 290
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 291
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_H(FFFF)V

    .line 292
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeH:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowSizeH(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setInnerShadowSizeV(FFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F
    .param p5, "update"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 303
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 304
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_V(FFFF)V

    .line 305
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mInnerShadowSizeV:Lcom/smartisanos/smengine/math/Vector4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateInnerShadowSizeV(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 309
    :cond_0
    return-void
.end method

.method public setPreserveColor(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveColor:Z

    .line 67
    return-void
.end method

.method public setPreserveScale(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveScale:Z

    .line 63
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 195
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 196
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mScale:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 198
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 199
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mPreserveScale:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, p2

    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->oldScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 205
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->onUpdateScale(FFF)V

    .line 209
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_0
.end method

.method public setSkewX(FZ)V
    .locals 1
    .param p1, "skewX"    # F
    .param p2, "update"    # Z

    .prologue
    .line 229
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewX:F

    .line 230
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setSkewX(F)V

    .line 233
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 234
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateSkewX(F)V

    .line 238
    :cond_0
    return-void
.end method

.method public setSkewY(FZ)V
    .locals 1
    .param p1, "skewY"    # F
    .param p2, "update"    # Z

    .prologue
    .line 245
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSkewY:F

    .line 246
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setSkewY(F)V

    .line 249
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 250
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->onUpdateSkewY(F)V

    .line 254
    :cond_0
    return-void
.end method

.method public setTexCoordLimit(FFZ)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    iput p1, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 121
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    iput p2, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 122
    if-eqz p3, :cond_1

    .line 123
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 124
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTexCoordLimitXY:Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTexCoordXY(FF)V

    .line 131
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_1
    return-void
.end method

.method public setTranslate(FFFZ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 137
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 138
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 140
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 141
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 142
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 143
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTranslateX(FZ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "update"    # Z

    .prologue
    .line 152
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTX:F

    .line 153
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 155
    .local v0, "t":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTX:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 156
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 157
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTX:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    .line 161
    .end local v0    # "t":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method public setTranslateY(FZ)V
    .locals 5
    .param p1, "y"    # F
    .param p2, "update"    # Z

    .prologue
    .line 163
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTY:F

    .line 164
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 166
    .local v0, "t":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTY:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 167
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 168
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTY:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    .line 172
    .end local v0    # "t":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method public setTranslateZ(FZ)V
    .locals 5
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 174
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTZ:F

    .line 175
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 176
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 177
    .local v0, "t":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 178
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 179
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUpdateSceneNode:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mSceneNode:Lcom/smartisanos/smengine/SceneNode;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mTZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->onUpdateTranslate(FFF)V

    .line 183
    .end local v0    # "t":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method public setUseColorForConstantBlendColor(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->mIsUseForBlendColor:Z

    .line 72
    return-void
.end method
