.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    .local p6, "errorListener":Lcom/android/volley/Response$ErrorListener;, "Lcom/android/volley/Response$ErrorListener;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 73
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 74
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 75
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 77
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 78
    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 12
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 138
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 139
    .local v3, "data":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 141
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v8, :cond_0

    .line 142
    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 143
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    :goto_0
    if-nez v2, :cond_3

    .line 178
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    .line 180
    :goto_1
    return-object v8

    .line 146
    :cond_0
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 148
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 149
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 152
    .local v0, "actualHeight":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v8, v9, v1, v0}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v6

    .line 154
    .local v6, "desiredWidth":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    invoke-static {v8, v9, v0, v1}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v5

    .line 158
    .local v5, "desiredHeight":I
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v8

    .line 161
    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 164
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 167
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_1

    .line 168
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 169
    :cond_1
    invoke-static {v7, v6, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 171
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 173
    :cond_2
    move-object v2, v7

    goto :goto_0

    .line 180
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    goto :goto_1
.end method

.method static findBestSampleSize(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 201
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 202
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 203
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 204
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 205
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-lez v3, :cond_0

    .line 209
    float-to-int v3, v2

    return v3

    .line 206
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method private static getResizedDimension(IIII)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I

    .prologue
    .line 99
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 118
    .end local p2    # "actualPrimary":I
    :goto_0
    return p2

    .line 104
    .restart local p2    # "actualPrimary":I
    :cond_0
    if-nez p0, :cond_1

    .line 105
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 106
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_0

    .line 109
    .end local v0    # "ratio":D
    :cond_1
    if-nez p1, :cond_2

    move p2, p0

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 114
    .restart local v0    # "ratio":D
    move v2, p0

    .line 115
    .local v2, "resized":I
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 116
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_3
    move p2, v2

    .line 118
    goto :goto_0
.end method


.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v2, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 129
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
