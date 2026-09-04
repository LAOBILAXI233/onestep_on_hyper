.class Lcom/smartisanos/home/Launcher$12$1;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/Launcher$12;


.method constructor <init>(Lcom/smartisanos/home/Launcher$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/Launcher$12;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12$1;->this$1:Lcom/smartisanos/home/Launcher$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1128
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "### delay update GL View #####"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1129
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1130
    return-void
.end method
