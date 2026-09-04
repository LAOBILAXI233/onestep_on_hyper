.class public final Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;
.super Ljava/lang/Object;
.source "RenderManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageComposeQueueForSceneNode"
.end annotation


.field public mRUOffsets:[I

.field public mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x104

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/16 v0, 0x1f4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const-class v1, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/smartisanos/smengine/SceneNode;

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    .line 143
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    return-void
.end method


.method public addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    .line 146
    .local v0, "layerIndex":I
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v1, v2, v0

    .line 147
    .local v1, "offset":I
    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "render unit num is too large"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v0

    aput-object p1, v2, v1

    .line 151
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 152
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    const/16 v1, 0x104

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRUOffsets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public clearRenderUnit()V
    .locals 4

    .prologue
    .line 159
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/smengine/RenderManager;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "#### clear render target #@####"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x104

    if-ge v0, v2, :cond_2

    .line 161
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->mRenderUnitCache:[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueueForSceneNode;->clear()V

    .line 166
    return-void
.end method
