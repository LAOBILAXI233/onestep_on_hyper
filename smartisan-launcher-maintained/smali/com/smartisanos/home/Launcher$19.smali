.class Lcom/smartisanos/home/Launcher$19;
.super Ljava/util/TimerTask;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->delayResumeActiveIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$19;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/smartisanos/home/Launcher$19;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v0}, Lcom/smartisanos/home/Launcher;->access$900(Lcom/smartisanos/home/Launcher;)V

    .line 1493
    return-void
.end method
