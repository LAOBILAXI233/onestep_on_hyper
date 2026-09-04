.class Lcom/smartisanos/launcher/animations/IconSortAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->generateSpecialDrawMultiTimesCube()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

.field final synthetic val$sp:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$1;->val$sp:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onAfterUpdateOneFrameWithData(Lcom/smartisanos/smengine/SceneNode;I[F)V
    .locals 5
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "type"    # I
    .param p3, "dataValue"    # [F

    .prologue
    .line 186
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 187
    const/4 v3, 0x0

    aget v2, p3, v3

    .line 188
    .local v2, "rotateAngle":F
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 189
    .local v0, "cameraZ":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    add-float/2addr v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v1, v3, v4

    .line 190
    .local v1, "para":F
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$1;->val$sp:Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;

    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/launcher/animations/SpecialDrawMultiTimesCubeNode;->updateShadowScale(FF)V

    .line 193
    .end local v0    # "cameraZ":F
    .end local v1    # "para":F
    .end local v2    # "rotateAngle":F
    :cond_0
    return-void
.end method
