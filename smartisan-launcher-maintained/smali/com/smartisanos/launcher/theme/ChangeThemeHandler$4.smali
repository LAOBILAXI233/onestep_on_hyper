.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCubeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object p2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 576
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/MainView;->setEnableStatusbarMessage(Z)V

    .line 578
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 581
    new-instance v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;I)V

    const/4 v2, 0x0

    .line 606
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->send(F)V

    .line 607
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 609
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V

    .line 610
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 611
    .local v0, "shadow":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 612
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    .line 615
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->clearThemeCover()V

    .line 617
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->setFrameDeltaTime(F)V

    .line 623
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-boolean v1, v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    if-eqz v1, :cond_1

    .line 624
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 625
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 627
    :cond_1
    return-void
.end method
