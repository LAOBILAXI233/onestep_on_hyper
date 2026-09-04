.class public Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;
.super Lcom/smartisanos/smengine/FrameAnimation;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShadowAnimation"
.end annotation


.field COUNT:F

.field FRAME:I

.field final FRAME_TIME:F

.field mAnimTime:F

.field mFrameTime:F

.field mTotalTime:F

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;[Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p2, "sn"    # [Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const v2, 0x3ccccccd    # 0.025f

    .line 1289
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/smartisanos/smengine/FrameAnimation;-><init>([Lcom/smartisanos/smengine/SceneNode;I)V

    .line 1282
    const v0, 0x3fc4dd2f    # 1.538f

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->COUNT:F

    .line 1283
    iput v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME_TIME:F

    .line 1284
    const/16 v0, 0x3e

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    .line 1291
    const/4 v0, 0x2

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v0, v1, :cond_0

    .line 1292
    const/16 v0, 0x3f

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    .line 1293
    const v0, 0x3fb9999a    # 1.45f

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->COUNT:F

    .line 1295
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->COUNT:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mTotalTime:F

    .line 1296
    iget v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mTotalTime:F

    iget v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameTime:F

    .line 1297
    return-void
.end method


.method public onFrame(F)V
    .locals 8
    .param p1, "deltaT"    # F

    .prologue
    const/4 v7, 0x1

    .line 1302
    iget-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mIsFinished:Z

    if-eqz v4, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mIsStarted:Z

    if-eqz v4, :cond_0

    .line 1308
    iget v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameIndex:I

    iget v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameNum:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_2

    .line 1309
    iput-boolean v7, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mIsFinished:Z

    .line 1310
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v4, :cond_0

    .line 1311
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onEnd()V

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameImageList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1317
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 1318
    .local v3, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 1319
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v1, :cond_3

    .line 1320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme-anim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto :goto_1

    .line 1324
    .end local v1    # "mesh":Lcom/smartisanos/smengine/Mesh;
    .end local v3    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_4
    iget v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mAnimTime:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mAnimTime:F

    .line 1325
    iget v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mAnimTime:F

    iget v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mTotalTime:F

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 1326
    .local v0, "index":I
    iget v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_5

    .line 1327
    iget v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->FRAME:I

    add-int/lit8 v0, v4, -0x1

    .line 1329
    :cond_5
    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->mFrameIndex:I

    goto :goto_0
.end method
