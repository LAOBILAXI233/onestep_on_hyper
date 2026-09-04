.class public Lcom/sina/weibo/sdk/api/ImageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "ImageObject.java"


.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_SIZE:I = 0x200000


.field public imageData:[B

.field public imagePath:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/ImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 61
    return-void
.end method


.method public checkArgs()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 96
    const-string v1, "Weibo.ImageObject"

    const-string v2, "imageData and imagePath are null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v1, v1

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_1

    .line 100
    const-string v1, "Weibo.ImageObject"

    const-string v2, "imageData is too large"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_2

    .line 104
    const-string v1, "Weibo.ImageObject"

    const-string v2, "imagePath is too length"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 108
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 111
    :cond_3
    const-string v1, "Weibo.ImageObject"

    .line 112
    const-string v2, "checkArgs fail, image content is too large or not exists"

    .line 111
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    const-string v1, "Weibo.ImageObject"

    .line 117
    const-string v2, "checkArgs fail, image content is too large or not exists"

    .line 116
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    return v0
.end method

.method public final setImageObject(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v0, "Weibo.ImageObject"

    const-string v2, "put thumb failed"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 74
    :goto_2
    if-eqz v1, :cond_1

    .line 75
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 80
    :cond_1
    :goto_3
    throw v0

    .line 77
    :catch_2
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 77
    :catch_3
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 69
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 0

    .prologue
    .line 131
    return-object p0
.end method

.method protected toExtraMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
