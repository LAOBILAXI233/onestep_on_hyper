.class public Lcom/smartisan/weather/lib/location/LocationWrapper;
.super Ljava/lang/Object;
.source "LocationWrapper.java"


.field protected context:Landroid/content/Context;

.field protected locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;


.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/weather/lib/location/LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/weather/lib/location/LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .line 14
    iput-object p1, p0, Lcom/smartisan/weather/lib/location/LocationWrapper;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


.method public destroy()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public requestOnce()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public setLocationListener(Lcom/smartisan/weather/lib/location/RequestLocationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/smartisan/weather/lib/location/LocationWrapper;->locationListener:Lcom/smartisan/weather/lib/location/RequestLocationListener;

    .line 20
    return-void
.end method
