.class final Landroid/support/v4/media/MediaMetadataCompat$1;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaMetadataCompat;
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
        "Landroid/support/v4/media/MediaMetadataCompat;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 608
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 613
    new-array v0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat$1;->newArray(I)[Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method
