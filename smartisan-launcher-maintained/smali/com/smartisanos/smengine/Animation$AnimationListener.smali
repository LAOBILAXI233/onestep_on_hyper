.class public Lcom/smartisanos/smengine/Animation$AnimationListener;
.super Ljava/lang/Object;
.source "Animation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationListener"
.end annotation


.field protected mCurrentAnim:Lcom/smartisanos/smengine/Animation;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAfterUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 172
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 173
    return-void
.end method

.method public onAfterUpdateOneFrameWithData(Lcom/smartisanos/smengine/SceneNode;I[F)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "type"    # I
    .param p3, "dataValue"    # [F

    .prologue
    .line 176
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 177
    return-void
.end method

.method public onBackBegin()V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 146
    return-void
.end method

.method public onBackComplete()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 158
    return-void
.end method

.method public onBackEnd()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 150
    return-void
.end method

.method public onBackStart()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 154
    return-void
.end method

.method public onBeforeUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 164
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 165
    return-void
.end method

.method public onBeforeUpdateOneFrameWithData(Lcom/smartisanos/smengine/SceneNode;I[F)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "type"    # I
    .param p3, "dataValue"    # [F

    .prologue
    .line 168
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 169
    return-void
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 134
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 138
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 142
    return-void
.end method

.method public onKill()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 161
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 130
    return-void
.end method

.method public setCurrentAnimation(Lcom/smartisanos/smengine/Animation;)V
    .locals 0
    .param p1, "a"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation$AnimationListener;->mCurrentAnim:Lcom/smartisanos/smengine/Animation;

    .line 126
    return-void
.end method
