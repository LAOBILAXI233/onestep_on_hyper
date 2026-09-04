.class Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;
.super Ljava/lang/Object;
.source "SceneNode.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;


.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v0}, Lcom/smartisanos/smengine/SceneNode;->access$300(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2794
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2795
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/smengine/SceneNode;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "############performLongClick at = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;->this$0:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->access$502(Lcom/smartisanos/smengine/SceneNode;Z)Z

    .line 2799
    :cond_1
    return-void
.end method
