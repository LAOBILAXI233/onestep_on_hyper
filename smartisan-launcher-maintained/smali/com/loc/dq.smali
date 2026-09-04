.class final Lcom/loc/dq;
.super Ljava/util/TimerTask;


.field private synthetic a:Lcom/loc/dp;


.method constructor <init>(Lcom/loc/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dq;->a:Lcom/loc/dp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


.method public final run()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/loc/dl;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dq;->a:Lcom/loc/dp;

    iget-object v0, v0, Lcom/loc/dp;->a:Lcom/loc/dl;

    invoke-static {v0}, Lcom/loc/dl;->c(Lcom/loc/dl;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dq;->a:Lcom/loc/dp;

    iget-object v0, v0, Lcom/loc/dp;->a:Lcom/loc/dl;

    iget-object v1, p0, Lcom/loc/dq;->a:Lcom/loc/dp;

    iget-object v1, v1, Lcom/loc/dp;->a:Lcom/loc/dl;

    invoke-static {v1}, Lcom/loc/dl;->c(Lcom/loc/dl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/dl;->a(Lcom/loc/dl;Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
