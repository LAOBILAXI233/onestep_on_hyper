.class Lcom/smartisanos/home/Launcher$12$3;
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
    .line 1175
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12$3;->this$1:Lcom/smartisanos/home/Launcher$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/smartisanos/home/Launcher$12$3;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v1, v1, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1179
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/smartisanos/launcher/InvisibleApi;->enableScreenAfterBoot(Landroid/app/ActivityManager;)V

    .line 1180
    return-void
.end method
