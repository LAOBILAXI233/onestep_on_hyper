.class Lcom/amap/api/location/AMapLocationClient$a;
.super Landroid/os/Handler;
.source "AMapLocationClient.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


.field a:Lcom/amap/api/location/AMapLocationClient;


.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage SET_OPTION"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage end"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationListener;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage SET_LISTENER"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_2
    :try_start_5
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationListener;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_6
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage REMOVE_LISTENER"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :pswitch_3
    :try_start_7
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->startLocation()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    :try_start_8
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage START_LOCATION"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :pswitch_4
    :try_start_9
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->stopLocation()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    :catch_5
    move-exception v2

    :try_start_a
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage STOP_LOCATION"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :pswitch_5
    :try_start_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/amap/api/fence/Fence;

    move-object v11, v0

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, v11, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-wide v4, v11, Lcom/amap/api/fence/Fence;->d:D

    iget-wide v6, v11, Lcom/amap/api/fence/Fence;->c:D

    iget v8, v11, Lcom/amap/api/fence/Fence;->e:F

    iget-wide v9, v11, Lcom/amap/api/fence/Fence;->f:J

    iget-object v11, v11, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v11}, Lcom/amap/api/location/LocationManagerBase;->addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v2

    :try_start_c
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage ADD_GEOFENCE"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    :pswitch_6
    :try_start_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v3, v2}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v2

    :try_start_e
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage REMOVE_GEOFENCE"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    :pswitch_7
    :try_start_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/fence/Fence;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v4, v2, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iget-object v2, v2, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v2

    :try_start_10
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage REMOVE_GEOFENCE_ONE"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :pswitch_8
    :try_start_11
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->startAssistantLocation()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v2

    :try_start_12
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage START_SOCKET"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_0

    :pswitch_9
    :try_start_13
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->stopAssistantLocation()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v2

    :try_start_14
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage STOP_SOCKET"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_0

    :pswitch_a
    :try_start_15
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->onDestroy()V

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v2

    :try_start_16
    const-string v3, "AMapLocationClient"

    const-string v4, "handleMessage DESTROY"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
