.class public Lcom/sina/deviceidjnisdk/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"

.implements Lcom/sina/deviceidjnisdk/IDeviceId;


.field private mContext:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "weibosdkcoretiqitong"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sina/deviceidjnisdk/DeviceId;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private genCheckId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getDeviceIdNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sina/deviceidjnisdk/DeviceId;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/deviceidjnisdk/DeviceId;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sina/weibo/sdk/utils/Utility;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/deviceidjnisdk/DeviceId;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/Utility;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/deviceidjnisdk/DeviceId;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/Utility;->getWifiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sina/deviceidjnisdk/DeviceId;->getDeviceIdNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
