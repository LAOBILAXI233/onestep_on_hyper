.class public Lcom/smartisan/trackerlib/TransportEntity;
.super Ljava/lang/Object;
.source "TransportEntity.java"

.implements Landroid/os/Parcelable;


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;"
        }
    .end annotation
.end field


.field private mAppVersion:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mEventData:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mHardwareVersion:Ljava/lang/String;

.field private mIsWifiOnly:Z

.field private mPlatform:I

.field private mRomVersion:Ljava/lang/String;

.field private mTimeStamp:J

.field private mUid:Ljava/lang/String;

.field private mUploadTime:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/smartisan/trackerlib/TransportEntity$1;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/TransportEntity$1;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/TransportEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/smartisan/trackerlib/TransportEntity;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/smartisan/trackerlib/TransportEntity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/smartisan/trackerlib/TransportEntity$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 9
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "iswifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 3
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "iswifi"    # Z
    .param p6, "uploadtime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    .line 38
    iput-object p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    .line 44
    :goto_0
    iput-wide p3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    .line 45
    iput v1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mPlatform:I

    .line 46
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mChannel:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mAppVersion:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getSoftwareInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mRomVersion:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mHardwareVersion:Ljava/lang/String;

    .line 51
    iput-boolean p5, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    .line 52
    iput p6, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUploadTime:I

    .line 53
    return-void

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "eventid"    # Ljava/lang/String;
    .param p2, "eventData"    # Ljava/lang/String;
    .param p3, "iswifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 30
    return-void
.end method

.method private convertString2Json(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private convertString2Null(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "null"

    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mPlatform:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mChannel:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mAppVersion:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mRomVersion:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mHardwareVersion:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUploadTime:I

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "uid"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "event_id"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "event_data"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "app_version"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mAppVersion:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v2, "rom_version"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mRomVersion:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/smartisan/trackerlib/TransportEntity;->convertString2Null(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v2, "hardware_version"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "platform"

    iget v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mPlatform:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v2, "channel"

    iget-object v3, p0, Lcom/smartisan/trackerlib/TransportEntity;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 141
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUploadTime()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUploadTime:I

    return v0
.end method

.method public getmDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getmEventData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    return-object v0
.end method

.method public getmEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getmIsWifiOnly()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    return v0
.end method

.method public getmTimeStamp()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    return-wide v0
.end method

.method public getmUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisan/trackerlib/TransportEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iswifionly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setUploadTime(I)V
    .locals 0
    .param p1, "mUploadTime"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUploadTime:I

    .line 211
    return-void
.end method

.method public setmDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceId"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setmEventData(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEventData"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setmEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEventId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setmIsWifiOnly(Z)V
    .locals 0
    .param p1, "mIsWifiOnly"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    .line 203
    return-void
.end method

.method public setmTimeStamp(J)V
    .locals 1
    .param p1, "mTimeStamp"    # J

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    .line 195
    return-void
.end method

.method public setmUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUid"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUid:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/smartisan/trackerlib/TransportEntity;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mEventData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mPlatform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mAppVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mRomVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mHardwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mIsWifiOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget v0, p0, Lcom/smartisan/trackerlib/TransportEntity;->mUploadTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
