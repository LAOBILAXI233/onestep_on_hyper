.class final Landroid/support/v4/widget/NestedScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView$SavedState;
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
        "Landroid/support/v4/widget/NestedScrollView$SavedState;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 1867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/NestedScrollView$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1870
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1867
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/NestedScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/widget/NestedScrollView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1875
    new-array v0, p1, [Landroid/support/v4/widget/NestedScrollView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1867
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView$SavedState$1;->newArray(I)[Landroid/support/v4/widget/NestedScrollView$SavedState;

    move-result-object v0

    return-object v0
.end method
