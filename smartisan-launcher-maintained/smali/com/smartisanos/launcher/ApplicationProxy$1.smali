.class Lcom/smartisanos/launcher/ApplicationProxy$1;
.super Landroid/database/ContentObserver;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;

.field final synthetic val$configKey:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$1;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    iput-object p3, p0, Lcom/smartisanos/launcher/ApplicationProxy$1;->val$configKey:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 188
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy$1;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy$1;->val$configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->onConfigChanged(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method
