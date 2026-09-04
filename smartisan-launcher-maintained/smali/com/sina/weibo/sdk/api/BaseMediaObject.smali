.class public abstract Lcom/sina/weibo/sdk/api/BaseMediaObject;
.super Ljava/lang/Object;
.source "BaseMediaObject.java"

.implements Landroid/os/Parcelable;


.field public static final MEDIA_TYPE_CMD:I = 0x7

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_MUSIC:I = 0x3

.field public static final MEDIA_TYPE_TEXT:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VOICE:I = 0x6

.field public static final MEDIA_TYPE_WEBPAGE:I = 0x5


.field public actionUrl:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public identify:Ljava/lang/String;

.field public schema:Ljava/lang/String;

.field public thumbData:[B

.field public title:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->schema:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    .line 83
    return-void
.end method


.method protected checkArgs()Z
    .locals 4

    .prologue
    const/16 v3, 0x200

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 150
    :cond_0
    const-string v0, "Weibo.BaseMediaObject"

    const-string v2, "checkArgs fail, actionUrl is invalid"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 154
    :cond_2
    const-string v0, "Weibo.BaseMediaObject"

    const-string v2, "checkArgs fail, identify is invalid"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    array-length v0, v0

    const v2, 0x8000

    if-le v0, v2, :cond_6

    .line 158
    :cond_4
    const-string v2, "Weibo.BaseMediaObject"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "checkArgs fail, thumbData is invalid,size is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    array-length v0, v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "! more then 32768."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 160
    goto :goto_0

    .line 159
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_8

    .line 163
    :cond_7
    const-string v0, "Weibo.BaseMediaObject"

    const-string v2, "checkArgs fail, title is invalid"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_a

    .line 167
    :cond_9
    const-string v0, "Weibo.BaseMediaObject"

    const-string v2, "checkArgs fail, description is invalid"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getObjType()I
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 98
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v0, "Weibo.BaseMediaObject"

    const-string v2, "put thumb failed"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 102
    :goto_2
    if-eqz v1, :cond_1

    .line 103
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 108
    :cond_1
    :goto_3
    throw v0

    .line 105
    :catch_2
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 105
    :catch_3
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 97
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected abstract toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
.end method

.method protected abstract toExtraMediaString()Ljava/lang/String;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->schema:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 130
    return-void
.end method
