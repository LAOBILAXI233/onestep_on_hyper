.class final Lcom/smartisan/weather/lib/bean/SmartisanLocation$1;
.super Ljava/lang/Object;
.source "SmartisanLocation.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/bean/SmartisanLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/smartisan/weather/lib/bean/SmartisanLocation;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 56
    new-instance v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    invoke-direct {v0, p1}, Lcom/smartisan/weather/lib/bean/SmartisanLocation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/bean/SmartisanLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/bean/SmartisanLocation$1;->newArray(I)[Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v0

    return-object v0
.end method
