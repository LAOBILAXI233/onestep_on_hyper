.class Lcom/smartisanos/smengine/shadow/TextureImage$3;
.super Lcom/smartisanos/smengine/Event;
.source "TextureImage.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/TextureImage;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

.field final synthetic val$surfaceIndex:J

.field final synthetic val$textureID:I


.method constructor <init>(Lcom/smartisanos/smengine/shadow/TextureImage;IIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/shadow/TextureImage;
    .param p2, "type"    # I

    .prologue
    .line 226
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->this$0:Lcom/smartisanos/smengine/shadow/TextureImage;

    iput p3, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->val$textureID:I

    iput-wide p4, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->val$surfaceIndex:J

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->val$textureID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-wide v2, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->val$surfaceIndex:J

    sget-wide v4, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 230
    new-array v0, v7, [I

    iget v1, p0, Lcom/smartisanos/smengine/shadow/TextureImage$3;->val$textureID:I

    aput v1, v0, v6

    .line 231
    .local v0, "texs":[I
    invoke-static {v7, v0, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 233
    .end local v0    # "texs":[I
    :cond_0
    return-void
.end method
