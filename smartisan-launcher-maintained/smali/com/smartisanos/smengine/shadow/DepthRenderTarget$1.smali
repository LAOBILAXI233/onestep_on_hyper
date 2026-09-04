.class Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;
.super Lcom/smartisanos/smengine/Event;
.source "DepthRenderTarget.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

.field final synthetic val$frameBufferID:I

.field final synthetic val$renderBufferID:I

.field final synthetic val$surfaceIndex:J

.field final synthetic val$textureID:I


.method constructor <init>(Lcom/smartisanos/smengine/shadow/DepthRenderTarget;IJIII)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/smengine/shadow/DepthRenderTarget;
    .param p2, "type"    # I

    .prologue
    .line 135
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->this$0:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    iput-wide p3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$surfaceIndex:J

    iput p5, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$textureID:I

    iput p6, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$frameBufferID:I

    iput p7, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$renderBufferID:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 138
    iget-wide v4, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$surfaceIndex:J

    sget-wide v6, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 139
    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$textureID:I

    if-eq v3, v10, :cond_0

    .line 140
    new-array v2, v9, [I

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$textureID:I

    aput v3, v2, v8

    .line 141
    .local v2, "texs":[I
    invoke-static {v9, v2, v8}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 143
    .end local v2    # "texs":[I
    :cond_0
    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$frameBufferID:I

    if-eq v3, v10, :cond_1

    .line 144
    new-array v0, v9, [I

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$frameBufferID:I

    aput v3, v0, v8

    .line 145
    .local v0, "frameBufferIDs":[I
    invoke-static {v9, v0, v8}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 147
    .end local v0    # "frameBufferIDs":[I
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->this$0:Lcom/smartisanos/smengine/shadow/DepthRenderTarget;

    invoke-static {v3}, Lcom/smartisanos/smengine/shadow/DepthRenderTarget;->access$000(Lcom/smartisanos/smengine/shadow/DepthRenderTarget;)I

    move-result v3

    if-eq v3, v10, :cond_2

    .line 148
    new-array v1, v9, [I

    iget v3, p0, Lcom/smartisanos/smengine/shadow/DepthRenderTarget$1;->val$renderBufferID:I

    aput v3, v1, v8

    .line 149
    .local v1, "renderBufferIDs":[I
    invoke-static {v9, v1, v8}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 152
    .end local v1    # "renderBufferIDs":[I
    :cond_2
    return-void
.end method
