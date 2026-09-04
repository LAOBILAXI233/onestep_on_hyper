.class Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectSpreadOutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeInListener"
.end annotation


.field private mPc:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    .line 58
    return-void
.end method


.method public onBegin()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v3, 0x3ee66666    # 0.45f

    const v2, 0x3dcccccd    # 0.1f

    .line 61
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->showMultiSelectSpreadOutCover()V

    .line 63
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 65
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 69
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 72
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 73
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->showGaussianIconRect(Z)V

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 82
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 96
    :cond_1
    :goto_1
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 75
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 88
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation$FadeInListener;->mPc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getForegroundOverlapRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_1
.end method
