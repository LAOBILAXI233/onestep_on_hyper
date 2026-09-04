.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;

.field final synthetic val$gaussianRect:Lcom/smartisanos/smengine/RectNode;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;ILcom/smartisanos/smengine/RectNode;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;
    .param p2, "type"    # I

    .prologue
    .line 738
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;->val$gaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->val$tm:Lcom/smartisanos/smengine/TextureManager;

    const-string v2, "t_blur_background"

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v0

    .line 742
    .local v0, "ga":Lcom/smartisanos/smengine/Texture;
    if-eqz v0, :cond_0

    .line 743
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBackgroundForNewTheme TEXTURE_ID_BLUR_BACKGROUND texture id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Texture;->getTexID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;->val$gaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 748
    return-void

    .line 745
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "loadBackgroundForNewTheme TEXTURE_ID_BLUR_BACKGROUND texture null"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
