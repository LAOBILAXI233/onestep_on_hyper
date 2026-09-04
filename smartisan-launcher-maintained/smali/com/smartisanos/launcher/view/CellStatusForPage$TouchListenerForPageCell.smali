.class public Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchListenerForPageCell"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;


.method public constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createBezierSeg()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector2f;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v8, 0x3e90a3d7    # 0.2825f

    const v7, 0x3e8c49ba    # 0.274f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "seg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v3, v5, v5}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    const v4, 0x3e28c155    # 0.1648f

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    const v4, 0x3e3d3c36    # 0.1848f

    const v5, 0x3d2e147b    # 0.0425f

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v3, v8, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, "seg2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;"
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v3, v8, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    const v4, 0x3eca3055    # 0.3949f

    const v5, 0x3f0a43fe    # 0.5401f

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    const v4, 0x3f18793e    # 0.5956f

    invoke-direct {v3, v4, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v3, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v3, v6, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector2f;>;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v2
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 211
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 214
    return-void
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 255
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->isUnlockAnimationInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$302(Lcom/smartisanos/launcher/view/CellStatusForPage;Z)Z

    .line 263
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$500(Lcom/smartisanos/launcher/view/CellStatusForPage;)V

    goto :goto_0
.end method
