.class public interface abstract Landroid/content/pm/IPackageDeleteObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver.java"

.implements Landroid/os/IInterface;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageDeleteObserver$Stub;
    }
.end annotation


.method public abstract packageDeleted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
