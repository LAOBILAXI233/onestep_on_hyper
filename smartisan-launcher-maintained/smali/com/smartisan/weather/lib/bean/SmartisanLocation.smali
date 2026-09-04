.class public Lcom/smartisan/weather/lib/bean/SmartisanLocation;
.super Ljava/lang/Object;
.source "SmartisanLocation.java"

.implements Landroid/os/Parcelable;


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/smartisan/weather/lib/bean/SmartisanLocation;",
            ">;"
        }
    .end annotation
.end field


.field public id:I

.field public locationKey:Ljava/lang/String;

.field public locationName:Ljava/lang/String;

.field public locationParentName:Ljava/lang/String;

.field public sortOrder:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation$1;

    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/SmartisanLocation$1;-><init>()V

    sput-object v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->id:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/smartisan/weather/lib/bean/SinaCity;)V
    .locals 1
    .param p1, "sinaCity"    # Lcom/smartisan/weather/lib/bean/SinaCity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
