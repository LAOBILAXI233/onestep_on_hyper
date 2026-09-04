.class public Lcom/smartisanos/smengine/SceneManager;
.super Ljava/lang/Object;
.source "SceneManager.java"


.field public static final ROOT_NODE_NAME:Ljava/lang/String; = "root"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

.field private mRootNode:Lcom/smartisanos/smengine/SceneNode;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/smartisanos/smengine/SceneManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/SceneManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "PostEffectRoot"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method


.method public clearManager(Z)V
    .locals 2
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 34
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/smengine/SceneManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "remove all child"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 36
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 38
    return-void
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    .line 24
    .local v0, "cm":Lcom/smartisanos/smengine/CameraManager;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 26
    .local v1, "currentCamera":Lcom/smartisanos/smengine/Camera;
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 27
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneManager;->mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 28
    return-void
.end method

.method public getPostEffectRootNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mPostEffectRootNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method public getRootNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneManager;->mRootNode:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method
