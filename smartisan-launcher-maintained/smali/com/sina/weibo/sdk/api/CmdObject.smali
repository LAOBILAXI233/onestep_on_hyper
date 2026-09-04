.class public Lcom/sina/weibo/sdk/api/CmdObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "CmdObject.java"


.field public static final CMD_HOME:Ljava/lang/String; = "home"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/CmdObject;",
            ">;"
        }
    .end annotation
.end field


.field public cmd:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/sina/weibo/sdk/api/CmdObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/CmdObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/CmdObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;

    .line 49
    return-void
.end method


.method public checkArgs()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x7

    return v0
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method protected toExtraMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/CmdObject;->cmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
