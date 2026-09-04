.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2090
    invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2087
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2095
    new-array v0, p1, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2087
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;->newArray(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method
