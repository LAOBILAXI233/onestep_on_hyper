.class Lcom/smartisanos/home/Launcher$24;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->scheduleDeferredResumeTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$24;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/Launcher$24;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->runDeferredResumeTasks()V

    return-void
.end method
