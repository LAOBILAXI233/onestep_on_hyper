.class final Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask$1;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$isLastTask:Z


.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1583
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask$1;->val$isLastTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 1586
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 1587
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask$1;->val$isLastTask:Z

    if-eqz v1, :cond_0

    .line 1588
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x800

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1589
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1590
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 1592
    :cond_0
    return-void
.end method
