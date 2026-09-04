.class Lcom/smartisanos/launcher/view/MainView$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$5;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 720
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$5;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->access$202(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 721
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$5;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->access$302(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 722
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView$5;->this$0:Lcom/smartisanos/launcher/view/MainView;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 723
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 725
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    .line 726
    .local v0, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v1, "t_theme_dock_openapp_shadow"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 728
    return-void
.end method
