.class Lcom/smartisan/updater/ApkUpdater$6;
.super Ljava/util/TimerTask;
.source "ApkUpdater.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;


.method constructor <init>(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$6;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 567
    return-void
.end method
