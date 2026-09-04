.class final Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

.implements Landroid/os/Parcelable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResultReceiverWrapper"
.end annotation


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;",
            ">;"
        }
    .end annotation
.end field


.field private mResultReceiver:Landroid/os/ResultReceiver;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1201
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 1198
    return-void
.end method

.method public constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 1194
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method


.method public describeContents()I
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1221
    return-void
.end method
