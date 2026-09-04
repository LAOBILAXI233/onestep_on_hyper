.class final Lcom/smartisan/trackerlib/TransportEntity$1;
.super Ljava/lang/Object;
.source "TransportEntity.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/trackerlib/TransportEntity;
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
        "Lcom/smartisan/trackerlib/TransportEntity;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/trackerlib/TransportEntity;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Lcom/smartisan/trackerlib/TransportEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Landroid/os/Parcel;Lcom/smartisan/trackerlib/TransportEntity$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/smartisan/trackerlib/TransportEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/smartisan/trackerlib/TransportEntity;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lcom/smartisan/trackerlib/TransportEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/smartisan/trackerlib/TransportEntity$1;->newArray(I)[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v0

    return-object v0
.end method
