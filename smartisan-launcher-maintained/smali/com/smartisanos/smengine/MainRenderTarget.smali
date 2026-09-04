.class public Lcom/smartisanos/smengine/MainRenderTarget;
.super Lcom/smartisanos/smengine/RenderTarget;
.source "MainRenderTarget.java"


.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    .line 11
    return-void
.end method


.method public bind()V
    .locals 2

    .prologue
    .line 13
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 14
    return-void
.end method
