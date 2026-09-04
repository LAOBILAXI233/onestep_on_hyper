.class Lcom/smartisanos/launcher/view/FloatPageNode$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "FloatPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/FloatPageNode;->pageMoveToCenterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FloatPageNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 5

    .prologue
    const v4, 0x3e4ccccd    # 0.2f

    .line 256
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 257
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 258
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 260
    .local v0, "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v2, v4

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 262
    .end local v0    # "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$102(Lcom/smartisanos/launcher/view/FloatPageNode;Z)Z

    .line 266
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$200(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 268
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$300(Lcom/smartisanos/launcher/view/FloatPageNode;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 269
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 270
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->hideEditIcon()V

    .line 276
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$402(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 277
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 278
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 279
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 280
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 282
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$300(Lcom/smartisanos/launcher/view/FloatPageNode;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 273
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$1;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    goto :goto_0
.end method
