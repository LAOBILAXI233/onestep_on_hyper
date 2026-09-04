.class Lcom/smartisanos/launcher/view/MainView$8;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->loadPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;

.field final synthetic val$gaussianRect:Lcom/smartisanos/smengine/RectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;ILcom/smartisanos/smengine/RectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$8;->this$0:Lcom/smartisanos/launcher/view/MainView;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/MainView$8;->val$gaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1589
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v1

    const-string v2, "t_blur_background"

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v0

    .line 1590
    .local v0, "ga":Lcom/smartisanos/smengine/Texture;
    if-eqz v0, :cond_0

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPage TEXTURE_ID_BLUR_BACKGROUND texture id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Texture;->getTexID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    .line 1595
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$8;->val$gaussianRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1596
    return-void

    .line 1593
    :cond_0
    const-string v1, "loadPage TEXTURE_ID_BLUR_BACKGROUND texture null"

    invoke-static {v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
