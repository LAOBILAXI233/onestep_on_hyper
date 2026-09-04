.class Lcom/smartisanos/smengine/shadow/ShadowManager$1;
.super Ljava/lang/Object;
.source "ShadowManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/shadow/ShadowManager;->postTask(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/shadow/ShadowManager;

.field final synthetic val$task:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/smengine/shadow/ShadowManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/shadow/ShadowManager;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/smartisanos/smengine/shadow/ShadowManager$1;->this$0:Lcom/smartisanos/smengine/shadow/ShadowManager;

    iput-object p2, p0, Lcom/smartisanos/smengine/shadow/ShadowManager$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/smartisanos/smengine/shadow/ShadowManager$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 350
    return-void
.end method
