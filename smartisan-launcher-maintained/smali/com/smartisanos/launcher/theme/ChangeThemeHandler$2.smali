.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->prepareChangeThemeCover(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field final synthetic val$screenshot:Landroid/graphics/Bitmap;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p2, "type"    # I

    .prologue
    .line 204
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 209
    .local v3, "width":I
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 210
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 211
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v4, v3

    move v5, v7

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 213
    .local v8, "screen":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->val$screenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v10

    .line 215
    .local v10, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v0, "t_theme_screenshot_loading"

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 216
    new-instance v9, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v9, v8}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    .local v9, "texture":Lcom/smartisanos/smengine/Texture;
    const-string v0, "t_theme_screenshot_loading"

    invoke-virtual {v10, v0, v9}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 218
    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 219
    invoke-virtual {v9}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 222
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v8    # "screen":Landroid/graphics/Bitmap;
    .end local v9    # "texture":Lcom/smartisanos/smengine/Texture;
    .end local v10    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 227
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v2, :cond_2

    .line 228
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v11}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;I)Z

    .line 229
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageViewAnimation()Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->forceFinishSwitchModeAnimation()V

    .line 231
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 232
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 233
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    .line 234
    return-void
.end method
