.class public Lcom/sina/weibo/sdk/api/VideoObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "VideoObject.java"


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/VideoObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_DEFAULTTEXT:Ljava/lang/String; = "extra_key_defaulttext"


.field public dataHdUrl:Ljava/lang/String;

.field public dataUrl:Ljava/lang/String;

.field public defaultText:Ljava/lang/String;

.field public duration:I

.field public h5Url:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/sina/weibo/sdk/api/VideoObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/VideoObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/VideoObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>(Landroid/os/Parcel;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->h5Url:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataHdUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->duration:I

    .line 73
    return-void
.end method


.method public checkArgs()Z
    .locals 3

    .prologue
    const/16 v2, 0x200

    const/4 v0, 0x0

    .line 86
    invoke-super {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 90
    const-string v1, "Weibo.VideoObject"

    const-string v2, "checkArgs fail, dataUrl is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataHdUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataHdUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 94
    const-string v1, "Weibo.VideoObject"

    const-string v2, "checkArgs fail, dataHdUrl is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->duration:I

    if-gtz v1, :cond_3

    .line 98
    const-string v1, "Weibo.VideoObject"

    const-string v2, "checkArgs fail, duration is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getObjType()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x4

    return v0
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 2

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "extra_key_defaulttext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->defaultText:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-object p0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected toExtraMediaString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/VideoObject;->defaultText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "extra_key_defaulttext"

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/VideoObject;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    const-string v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->dataHdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/sina/weibo/sdk/api/VideoObject;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
