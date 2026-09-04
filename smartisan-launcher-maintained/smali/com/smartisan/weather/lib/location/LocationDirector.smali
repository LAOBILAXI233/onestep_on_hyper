.class public Lcom/smartisan/weather/lib/location/LocationDirector;
.super Ljava/lang/Object;
.source "LocationDirector.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/smartisan/weather/lib/location/LocationWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    new-instance v0, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;

    invoke-direct {v0, p0}, Lcom/smartisan/weather/lib/location/AMap2LocationWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
