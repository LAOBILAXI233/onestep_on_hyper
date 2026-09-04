.class final Lcom/smartisan/feedbackhelper/utils/ComplainReport$1;
.super Ljava/lang/Object;
.source "ComplainReport.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/feedbackhelper/utils/ComplainReport;
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
        "Lcom/smartisan/feedbackhelper/utils/ComplainReport;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-direct {v0, p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$1;->newArray(I)[Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    move-result-object v0

    return-object v0
.end method
