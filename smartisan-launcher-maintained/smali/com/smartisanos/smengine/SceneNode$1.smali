.class Lcom/smartisanos/smengine/SceneNode$1;
.super Lcom/smartisanos/smengine/Event;
.source "SceneNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/SceneNode;->post(Ljava/lang/Runnable;)Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic val$action:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "type"    # I

    .prologue
    .line 2513
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode$1;->this$0:Lcom/smartisanos/smengine/SceneNode;

    iput-object p3, p0, Lcom/smartisanos/smengine/SceneNode$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2518
    return-void
.end method
