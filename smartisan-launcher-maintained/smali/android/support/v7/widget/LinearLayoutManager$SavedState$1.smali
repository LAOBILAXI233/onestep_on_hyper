.class final Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager$SavedState;
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
        "Landroid/support/v7/widget/LinearLayoutManager$SavedState;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/LinearLayoutManager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1907
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1904
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v7/widget/LinearLayoutManager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1912
    new-array v0, p1, [Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1904
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;->newArray(I)[Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-result-object v0

    return-object v0
.end method
