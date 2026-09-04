.class Lcom/smartisanos/home/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;

.field final synthetic val$info:Ljava/lang/String;

.field final synthetic val$show:Z


.method constructor <init>(Lcom/smartisanos/home/Launcher;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$17;->this$0:Lcom/smartisanos/home/Launcher;

    iput-boolean p2, p0, Lcom/smartisanos/home/Launcher$17;->val$show:Z

    iput-object p3, p0, Lcom/smartisanos/home/Launcher$17;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/smartisanos/home/Launcher$17;->this$0:Lcom/smartisanos/home/Launcher;

    iget-boolean v1, p0, Lcom/smartisanos/home/Launcher$17;->val$show:Z

    iget-object v2, p0, Lcom/smartisanos/home/Launcher$17;->val$info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/Launcher;->showDialogWithoutPostThread(ZLjava/lang/String;)V

    .line 1436
    return-void
.end method
