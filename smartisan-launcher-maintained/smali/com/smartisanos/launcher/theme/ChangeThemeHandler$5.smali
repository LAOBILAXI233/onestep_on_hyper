.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadBackgroundForNewTheme(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field final synthetic val$t:Lcom/smartisanos/smengine/Texture;

.field final synthetic val$tm:Lcom/smartisanos/smengine/TextureManager;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILcom/smartisanos/smengine/Texture;Lcom/smartisanos/smengine/TextureManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p2, "type"    # I

    .prologue
    .line 728
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->val$t:Lcom/smartisanos/smengine/Texture;

    iput-object p4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->val$tm:Lcom/smartisanos/smengine/TextureManager;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 730
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBackgroundForNewTheme back texture id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->val$t:Lcom/smartisanos/smengine/Texture;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Texture;->getTexID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    .line 732
    .local v0, "cm":Lcom/smartisanos/smengine/CameraManager;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 733
    .local v1, "currentCamera":Lcom/smartisanos/smengine/Camera;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->generateBackgroundGaussianTexture()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 734
    .local v2, "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 735
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 736
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 737
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 738
    new-instance v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;

    const/16 v4, 0x64

    invoke-direct {v3, p0, v4, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;ILcom/smartisanos/smengine/RectNode;)V

    const v4, 0x3dcccccd    # 0.1f

    .line 749
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5$1;->send(F)V

    .line 750
    return-void
.end method
