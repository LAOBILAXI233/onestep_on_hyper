.class public final Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;
.super Ljava/lang/Object;
.source "RenderManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageComposeQueue"
.end annotation


.field public mRUOffsets:[I

.field public mRenderUnitCache:[[Lcom/smartisanos/smengine/RenderManager$RenderUnit;


.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x104

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x1f4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const-class v1, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRenderUnitCache:[[Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .line 210
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRUOffsets:[I

    return-void
.end method


.method public addRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V
    .locals 4
    .param p1, "r"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v0

    .line 213
    .local v0, "layerIndex":I
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRUOffsets:[I

    aget v1, v2, v0

    .line 214
    .local v1, "offset":I
    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "render unit num is too large"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRenderUnitCache:[[Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    aget-object v2, v2, v0

    aput-object p1, v2, v1

    .line 218
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRUOffsets:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 219
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    const/16 v1, 0x104

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRUOffsets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public clearRenderUnit()V
    .locals 4

    .prologue
    .line 226
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/smengine/RenderManager;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "#### clear render target #@####"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x104

    if-ge v0, v2, :cond_2

    .line 228
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->mRenderUnitCache:[[Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/RenderManager$ImageComposeQueue;->clear()V

    .line 233
    return-void
.end method
