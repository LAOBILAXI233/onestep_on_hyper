.class Lcom/sina/weibo/sdk/api/WebpageObject$1;
.super Ljava/lang/Object;
.source "WebpageObject.java"

.implements Landroid/os/Parcelable$Creator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/WebpageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sina/weibo/sdk/api/WebpageObject;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/WebpageObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 1

    .prologue
    .line 45
    new-array v0, p1, [Lcom/sina/weibo/sdk/api/WebpageObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/WebpageObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v0

    return-object v0
.end method
