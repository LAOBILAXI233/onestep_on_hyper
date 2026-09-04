.class final Landroid/support/v4/media/session/MediaSessionCompat$Token$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$Token;
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
        "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1002
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1003
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1007
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1005
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "inner":Landroid/os/IBinder;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1012
    new-array v0, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;->newArray(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
