.class final Lcom/smartisanos/home/net/NetworkHandler$1;
.super Landroid/os/Handler;
.source "NetworkHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/NetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 78
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/smartisanos/home/net/NetworkHandler$Task;

    .line 79
    .local v2, "task":Lcom/smartisanos/home/net/NetworkHandler$Task;
    iget-object v1, v2, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 80
    .local v1, "params":Ljava/util/List;
    iget-object v3, v2, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    invoke-virtual {v3}, Lcom/smartisanos/home/net/NetworkHandler$Action;->name()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "actionName":Ljava/lang/String;
    sget-object v3, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "A140"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### handle task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v3, Lcom/smartisanos/home/net/NetworkHandler$2;->$SwitchMap$com$smartisanos$home$net$NetworkHandler$Action:[I

    iget-object v4, v2, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    invoke-virtual {v4}, Lcom/smartisanos/home/net/NetworkHandler$Action;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-static {v7, v1}, Lcom/smartisanos/home/net/NetworkHandler;->access$000(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {v7, v1}, Lcom/smartisanos/home/net/NetworkHandler;->access$100(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {v7, v1}, Lcom/smartisanos/home/net/NetworkHandler;->access$200(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-static {v7, v1}, Lcom/smartisanos/home/net/NetworkHandler;->access$300(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-static {v7, v1}, Lcom/smartisanos/home/net/NetworkHandler;->access$400(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
