.class public Lcom/amap/api/location/AMapLocationClient;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"

.implements Lcom/amap/api/location/LocationManagerBase;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClient$a;
    }
.end annotation


.field a:Lcom/amap/api/location/AMapLocationClient$a;

.field b:Landroid/content/Context;

.field c:Lcom/amap/api/location/LocationManagerBase;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:Lcom/amap/api/location/AMapLocationListener;

.field f:Lcom/amap/api/location/AMapLocationClient;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "AMapLocationClient 1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "AMapLocationClient 2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const-string v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v1

    const-string v2, "com.amap.api.location.LocationManagerWrapper"

    const-class v3, Lcom/loc/a;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/ay;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationManagerBase;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/loc/a;

    invoke-direct {v1, p1, p2}, Lcom/loc/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    const-string v1, "AMapLocationClient"

    const-string v2, "AMapLocationClient 3"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sput-object p0, Lcom/loc/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setApiKey"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide p2, v1, Lcom/amap/api/fence/Fence;->d:D

    iput-wide p4, v1, Lcom/amap/api/fence/Fence;->c:D

    iput p6, v1, Lcom/amap/api/fence/Fence;->e:F

    iput-object p9, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iput-wide p7, v1, Lcom/amap/api/fence/Fence;->f:J

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, v0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, v0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "getLastKnownLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, v0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "getVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, v0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->isStarted()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "isStarted"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p2, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
