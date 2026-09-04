.class Lcom/smartisanos/smengine/shadow/Shader$1;
.super Lcom/smartisanos/smengine/Event;
.source "Shader.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/Shader;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/shadow/Shader;

.field final synthetic val$programID:I

.field final synthetic val$surfaceIndex:J


.method constructor <init>(Lcom/smartisanos/smengine/shadow/Shader;IJI)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/smengine/shadow/Shader;
    .param p2, "type"    # I

    .prologue
    .line 303
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->this$0:Lcom/smartisanos/smengine/shadow/Shader;

    iput-wide p3, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->val$surfaceIndex:J

    iput p5, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->val$programID:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->val$surfaceIndex:J

    sget-wide v2, Lcom/smartisanos/smengine/shadow/ShadowManager;->_surfaceIndex:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 307
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->val$programID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 308
    iget v0, p0, Lcom/smartisanos/smengine/shadow/Shader$1;->val$programID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 312
    :cond_0
    return-void
.end method
