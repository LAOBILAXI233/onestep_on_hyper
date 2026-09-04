.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$3;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->handlePauseOnChangeTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p2, "type"    # I

    .prologue
    .line 263
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$3;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 267
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 268
    return-void
.end method
