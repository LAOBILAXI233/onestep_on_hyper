.class public final Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;
.super Ljava/lang/Object;
.source "RenderManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainFrameBufferQueueForSceneNode"
.end annotation


.field private mRUOffsets:[[I

.field public mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x104

    const/4 v2, 0x4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/16 v0, 0x1f4

    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    const-class v1, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Lcom/smartisanos/smengine/SceneNode;

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    .line 170
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRUOffsets:[[I

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRUOffsets:[[I

    return-object v0
.end method


.method public addRenderUnit(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->isEnableBlend()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    .line 173
    .local v1, "listIndex":I
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->isPostRender()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    const/4 v1, 0x3

    .line 178
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    .line 179
    .local v0, "layerIndex":I
    iget-object v3, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRUOffsets:[[I

    aget-object v3, v3, v1

    aget v2, v3, v0

    .line 180
    .local v2, "offset":I
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_3

    .line 181
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "render unit num is too large"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v0    # "layerIndex":I
    .end local v1    # "listIndex":I
    .end local v2    # "offset":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    .restart local v1    # "listIndex":I
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RenderState;->isPredraw()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const/4 v1, 0x0

    goto :goto_1

    .line 183
    .restart local v0    # "layerIndex":I
    .restart local v2    # "offset":I
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    aput-object p1, v3, v2

    .line 184
    iget-object v3, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRUOffsets:[[I

    aget-object v3, v3, v1

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 185
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 188
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x104

    if-ge v1, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRUOffsets:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public clearRenderUnit()V
    .locals 5

    .prologue
    .line 195
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/smartisanos/smengine/RenderManager;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "#### clear render target 2 #@####"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 197
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x104

    if-ge v1, v3, :cond_2

    .line 198
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->mRenderUnitCache:[[[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 197
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v2    # "k":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RenderManager$MainFrameBufferQueueForSceneNode;->clear()V

    .line 204
    return-void
.end method
