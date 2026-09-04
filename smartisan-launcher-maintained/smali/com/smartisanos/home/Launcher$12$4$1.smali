.class Lcom/smartisanos/home/Launcher$12$4$1;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$12$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$2:Lcom/smartisanos/home/Launcher$12$4;


.method constructor <init>(Lcom/smartisanos/home/Launcher$12$4;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/smartisanos/home/Launcher$12$4;
    .param p2, "type"    # I

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12$4$1;->this$2:Lcom/smartisanos/home/Launcher$12$4;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/smartisanos/home/Launcher$12$4$1;->this$2:Lcom/smartisanos/home/Launcher$12$4;

    iget-object v0, v0, Lcom/smartisanos/home/Launcher$12$4;->this$1:Lcom/smartisanos/home/Launcher$12;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher$12;->sendEmptyMessage(I)Z

    .line 1215
    return-void
.end method
