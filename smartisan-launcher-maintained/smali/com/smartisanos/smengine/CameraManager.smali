.class public Lcom/smartisanos/smengine/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


.field public static final MAIN_CAMERA:Ljava/lang/String; = "mainCamera"


.field private mCameraMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/smengine/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCamera:Lcom/smartisanos/smengine/Camera;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/CameraManager;->mCameraMap:Ljava/util/HashMap;

    .line 16
    return-void
.end method


.method public getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/smartisanos/smengine/CameraManager;->mCameraMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Camera;

    return-object v0
.end method

.method public getCameraName(Lcom/smartisanos/smengine/Camera;)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 34
    iget-object v3, p0, Lcom/smartisanos/smengine/CameraManager;->mCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 35
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisanos/smengine/CameraManager;->mCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/Camera;

    .line 37
    .local v2, "tmpCamera":Lcom/smartisanos/smengine/Camera;
    if-ne v2, p1, :cond_0

    .line 41
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tmpCamera":Lcom/smartisanos/smengine/Camera;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentCamera()Lcom/smartisanos/smengine/Camera;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartisanos/smengine/CameraManager;->mCurrentCamera:Lcom/smartisanos/smengine/Camera;

    return-object v0
.end method

.method public getMainCamera()Lcom/smartisanos/smengine/Camera;
    .locals 2

    .prologue
    .line 30
    const-string v1, "mainCamera"

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 31
    .local v0, "c":Lcom/smartisanos/smengine/Camera;
    return-object v0
.end method

.method public setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/smartisanos/smengine/CameraManager;->mCameraMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public setCurrentCamera(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/smartisanos/smengine/CameraManager;->mCurrentCamera:Lcom/smartisanos/smengine/Camera;

    .line 25
    return-void
.end method
