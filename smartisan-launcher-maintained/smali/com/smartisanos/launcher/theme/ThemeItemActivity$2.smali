.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    .line 257
    .local v1, "isConnected":Z
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    if-nez v1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v5, v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$302(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 258
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 259
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v2, Landroid/os/Message;->what:I

    .line 260
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v3, "params":Ljava/util/List;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 257
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "params":Ljava/util/List;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
