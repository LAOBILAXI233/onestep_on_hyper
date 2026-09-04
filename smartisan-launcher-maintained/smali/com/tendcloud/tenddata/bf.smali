.class Lcom/tendcloud/tenddata/bf;
.super Ljava/lang/Object;

.implements Ljava/lang/Runnable;


.field final synthetic a:Lcom/tendcloud/tenddata/s$a;

.field final synthetic b:Lcom/tendcloud/tenddata/s;


.method constructor <init>(Lcom/tendcloud/tenddata/s;Lcom/tendcloud/tenddata/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/bf;->b:Lcom/tendcloud/tenddata/s;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/s;->y()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tendcloud/tenddata/bf;->a:Lcom/tendcloud/tenddata/s$a;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
