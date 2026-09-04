.class Lcom/loc/a$b;
.super Ljava/lang/Thread;
.source "AMapLocationManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


.field a:Z

.field final synthetic b:Lcom/loc/a;


.method public constructor <init>(Lcom/loc/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a$b;->a:Z

    return-void
.end method


.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a$b;->a:Z

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a$b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "run part6"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-static {v0, v6}, Lcom/loc/a;->a(Lcom/loc/a;Z)Z

    return-void

    :cond_1
    :try_start_3
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->a(Lcom/loc/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->b(Lcom/loc/a;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-boolean v0, v0, Lcom/loc/a;->n:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_5

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-wide v0, v0, Lcom/loc/a;->p:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/a;->p:J

    :cond_3
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x32

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_1
    :try_start_7
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->h:Landroid/os/Messenger;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    if-nez v0, :cond_6

    :try_start_8
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget v1, v0, Lcom/loc/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/a;->l:I

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget v0, v0, Lcom/loc/a;->l:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    const-string v3, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    invoke-virtual {v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    const-string v3, "location"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->b:Lcom/loc/a$c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->b:Lcom/loc/a$c;

    invoke-virtual {v1, v0}, Lcom/loc/a$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :try_start_9
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/loc/a;->p:J

    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/loc/a;Z)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isfirst"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    invoke-static {v3}, Lcom/loc/a;->c(Lcom/loc/a;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "wifiactivescan"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isNeedAddress"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isKillProcess"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isOffset"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "httptimeout"

    iget-object v3, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_7
    :goto_2
    :try_start_b
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/a;->b(Lcom/loc/a;Z)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :try_start_c
    iget-object v0, p0, Lcom/loc/a$b;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "run part4"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2
.end method
