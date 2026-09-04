.class Lcom/loc/bv$b;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


.field final synthetic a:Lcom/loc/bv;


.method private constructor <init>(Lcom/loc/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/bv;Lcom/loc/bv$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bv$b;-><init>(Lcom/loc/bv;)V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v1}, Lcom/loc/bv;->a(Lcom/loc/bv;)Lcom/loc/cf;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    iget-object v1, v1, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v2}, Lcom/loc/bv;->b(Lcom/loc/bv;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v2}, Lcom/loc/bv;->b(Lcom/loc/bv;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/bv;->a(Lcom/loc/bv;J)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "APS"

    const-string v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :cond_3
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->a(Lcom/loc/bv;)Lcom/loc/cf;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :try_start_8
    invoke-virtual {v1}, Lcom/loc/cf;->c()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    :goto_2
    :try_start_9
    iget-object v1, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v1}, Lcom/loc/bv;->b(Lcom/loc/bv;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/bv;->a(Lcom/loc/bv;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->c(Lcom/loc/bv;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->c(Lcom/loc/bv;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->c(Lcom/loc/bv;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/bv;->k:Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/bv;->k:Z

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->d(Lcom/loc/bv;)Lcom/loc/db;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->e(Lcom/loc/bv;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->f(Lcom/loc/bv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv$b;->a:Lcom/loc/bv;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/loc/bv;->a(Lcom/loc/bv;ZI)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
