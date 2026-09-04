.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCoverAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1131
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1132
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getPreviousTheme()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v0

    .line 1133
    .local v0, "isOldThemeGaussian":Z
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1134
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1142
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-boolean v2, v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    if-eqz v2, :cond_0

    .line 1143
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 1144
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1146
    :cond_0
    return-void

    .line 1136
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 1137
    .local v1, "shadow":Lcom/smartisanos/smengine/RectNode;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1139
    .end local v1    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1140
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->start()V

    goto :goto_0
.end method
