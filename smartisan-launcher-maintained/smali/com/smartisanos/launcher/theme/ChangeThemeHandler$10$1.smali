.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;
    .param p2, "type"    # I

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1600(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$600(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1583
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "mTimeoutRunnable"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->clear()V

    .line 1586
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V

    .line 1587
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setLoadThemeShadowComplete()V

    .line 1589
    :cond_1
    return-void
.end method
