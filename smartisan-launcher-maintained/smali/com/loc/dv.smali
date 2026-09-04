.class final Lcom/loc/dv;
.super Landroid/os/Handler;


.field private synthetic a:Lcom/loc/du;


.method constructor <init>(Lcom/loc/du;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dv;->a:Lcom/loc/du;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/loc/dv;->a:Lcom/loc/du;

    iget-object v0, v0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->c(Lcom/loc/db;)Lcom/loc/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dv;->a:Lcom/loc/du;

    iget-object v0, v0, Lcom/loc/du;->a:Lcom/loc/db;

    invoke-static {v0}, Lcom/loc/db;->c(Lcom/loc/db;)Lcom/loc/dw;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/loc/dw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
