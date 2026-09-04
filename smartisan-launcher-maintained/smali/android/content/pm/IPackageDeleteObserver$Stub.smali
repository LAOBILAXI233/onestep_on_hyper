.class public abstract Landroid/content/pm/IPackageDeleteObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageDeleteObserver.java"

.implements Landroid/content/pm/IPackageDeleteObserver;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageDeleteObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
