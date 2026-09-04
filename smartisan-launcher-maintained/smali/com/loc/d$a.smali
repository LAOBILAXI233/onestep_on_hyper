.class Lcom/loc/d$a;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field final synthetic a:Lcom/loc/d;


.method constructor <init>(Lcom/loc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->d(Lcom/loc/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->j:Z

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->k:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->e(Lcom/loc/d;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v3, v3, Lcom/loc/d;->g:Z

    invoke-static {v2, v3}, Lcom/loc/d;->c(Lcom/loc/d;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->f(Lcom/loc/d;)Lcom/loc/bv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2}, Lcom/loc/d;->f(Lcom/loc/d;)Lcom/loc/bv;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, v3, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/loc/bv;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, v0, Lcom/loc/d;->l:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/loc/d;->n:J

    :cond_2
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/d;->k:Z

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->h:Ljava/util/Vector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    :goto_2
    if-ge v6, v2, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "location"

    iget-object v5, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v5, v5, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->h:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->h:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/d;->a(Lcom/loc/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/d;->b(Lcom/loc/d;Z)Z

    const-string v1, "APSServiceCore"

    const-string v2, "run part1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "APSServiceCore"

    const-string v2, "run part3"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->l(Lcom/loc/d;)V

    :cond_3
    :goto_3
    return-void

    :catch_2
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/loc/d;->a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v2, "APSServiceCore"

    const-string v3, "run part2"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->l(Lcom/loc/d;)V

    goto :goto_3

    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v4}, Lcom/loc/d;->g(Lcom/loc/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/d;->a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/d;->m:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "APSServiceCore"

    const-string v2, "run part5"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->l(Lcom/loc/d;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_4
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_5
    :try_start_c
    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->i(Lcom/loc/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->j(Lcom/loc/d;)V

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->k(Lcom/loc/d;)V

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1, v0}, Lcom/loc/d;->a(Lcom/loc/d;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->c(Lcom/loc/d;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->l(Lcom/loc/d;)V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    :cond_7
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, v0, Lcom/loc/d;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_8
    monitor-exit v2

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_9
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->l(Lcom/loc/d;)V

    goto/16 :goto_3

    :cond_a
    move-object v0, v1

    goto :goto_4
.end method
