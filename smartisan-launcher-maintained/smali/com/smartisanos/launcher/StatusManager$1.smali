.class Lcom/smartisanos/launcher/StatusManager$1;
.super Ljava/lang/Object;
.source "StatusManager.java"

.implements Lcom/smartisanos/launcher/StatusManager$onLauncherStatusChangedListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/StatusManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/StatusManager;


.method constructor <init>(Lcom/smartisanos/launcher/StatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/StatusManager;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/smartisanos/launcher/StatusManager$1;->this$0:Lcom/smartisanos/launcher/StatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLauncherStatusChanged(I)V
    .locals 2
    .param p1, "launcherStatus"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/smartisanos/launcher/StatusManager$1$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/StatusManager$1$1;-><init>(Lcom/smartisanos/launcher/StatusManager$1;I)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager$1$1;->send(F)V

    .line 134
    return-void
.end method
