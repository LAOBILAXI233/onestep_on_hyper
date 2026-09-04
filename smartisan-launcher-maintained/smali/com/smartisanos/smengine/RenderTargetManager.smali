.class public Lcom/smartisanos/smengine/RenderTargetManager;
.super Ljava/lang/Object;
.source "RenderTargetManager.java"


.field private mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field private mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field private mRenderTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/RenderTarget;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mRenderTargetList:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


.method public clearIconOnDockShooterRT()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->unbind()V

    .line 119
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->ICON_ONDOCK_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public clearIconOnPageShooterRT()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->unbind()V

    .line 65
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public getIconOnDockShooterPrePareRenderTarget()Lcom/smartisanos/smengine/RenderTarget;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 73
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 75
    .local v0, "multiPageLp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 77
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONDOCK_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderTarget;->unbind()V

    .line 81
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 82
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 88
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/RenderTarget;

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONDOCK_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v5, v5

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    float-to-int v6, v6

    invoke-direct {v1, v4, v5, v6}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .line 92
    .local v1, "rt":Lcom/smartisanos/smengine/RenderTarget;
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 94
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 96
    new-instance v2, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 98
    .local v2, "tex":Lcom/smartisanos/smengine/Texture;
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v7, v7, v7}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    .line 101
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONDOCK_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 103
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 105
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnDockShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    return-object v4
.end method

.method public getIconOnPageShooterPrePareRenderTarget(ZII)Lcom/smartisanos/smengine/RenderTarget;
    .locals 8
    .param p1, "isFloatPage"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x1

    .line 24
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 26
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v4, :cond_0

    .line 27
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderTarget;->unbind()V

    .line 28
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderTarget;->delete(Z)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 33
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "rt":Lcom/smartisanos/smengine/RenderTarget;
    if-eqz p1, :cond_1

    .line 38
    new-instance v1, Lcom/smartisanos/smengine/RenderTarget;

    .end local v1    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-direct {v1, v4, p2, p3}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .line 46
    .restart local v1    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    :goto_0
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 48
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 50
    new-instance v2, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 52
    .local v2, "tex":Lcom/smartisanos/smengine/Texture;
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v7, v7, v7}, Lcom/smartisanos/smengine/Texture;->setTextureState(IIII)V

    .line 55
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 57
    iput-object v1, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 59
    iget-object v4, p0, Lcom/smartisanos/smengine/RenderTargetManager;->mIconOnPageShooterPrepareRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    return-object v4

    .line 41
    .end local v2    # "tex":Lcom/smartisanos/smengine/Texture;
    :cond_1
    new-instance v1, Lcom/smartisanos/smengine/RenderTarget;

    .end local v1    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_ONPAGE_SHOOTER_PREPARE_RENDER_TARGET_NAME:Ljava/lang/String;

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    float-to-int v5, v5

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    float-to-int v6, v6

    invoke-direct {v1, v4, v5, v6}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .restart local v1    # "rt":Lcom/smartisanos/smengine/RenderTarget;
    goto :goto_0
.end method
