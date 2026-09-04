.class final Lcom/amap/api/fence/a;
.super Ljava/lang/Object;
.source "Fence.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/fence/Fence;
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
        "Lcom/amap/api/fence/Fence;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;
    .locals 2

    new-instance v0, Lcom/amap/api/fence/Fence;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/fence/Fence;-><init>(Landroid/os/Parcel;Lcom/amap/api/fence/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/fence/Fence;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/fence/Fence;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->a(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->a(I)[Lcom/amap/api/fence/Fence;

    move-result-object v0

    return-object v0
.end method
