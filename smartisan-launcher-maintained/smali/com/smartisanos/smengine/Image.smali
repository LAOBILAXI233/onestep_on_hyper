.class public Lcom/smartisanos/smengine/Image;
.super Ljava/lang/Object;
.source "Image.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Image$ImageException;
    }
.end annotation


.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageName:Ljava/lang/String;

.field private mTexID:I


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    .line 33
    iput-object p1, p0, Lcom/smartisanos/smengine/Image;->mImageName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static createBitmap(II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 153
    .local v7, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {p0, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 154
    .local v6, "bmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 156
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v2, -0x10000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    div-int/lit8 v2, p0, 0x2

    int-to-float v3, v2

    div-int/lit8 v2, p1, 0x2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    int-to-float v3, p0

    int-to-float v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    const/4 v9, 0x0

    .line 162
    .local v9, "stream":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/smartisanos/smengine/GLContext;->getSDCardPath()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/test.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v6, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 173
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v6

    .line 170
    :catchall_0
    move-exception v1

    :goto_1
    throw v1

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static createShadow(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 103
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v10, 0x41000000    # 8.0f

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 105
    .local v0, "blurFilter":Landroid/graphics/BlurMaskFilter;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 106
    .local v7, "shadowPaint":Landroid/graphics/Paint;
    const/16 v10, 0x32

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    const/high16 v10, -0x10000

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 109
    invoke-static {}, Lcom/smartisanos/smengine/Image;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    .local v1, "bmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x2

    new-array v3, v10, [I

    .line 112
    .local v3, "offsetXY":[I
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 114
    .local v5, "shadowBitmap":Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 115
    .local v6, "shadowImage32":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    aget v10, v3, v10

    int-to-float v10, v10

    aget v11, v3, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-static {}, Lcom/smartisanos/smengine/GLContext;->getSDCardPath()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 121
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/test.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 124
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 130
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-object v6

    .line 127
    :catchall_0
    move-exception v10

    :goto_1
    throw v10

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 125
    :catch_0
    move-exception v10

    goto :goto_0

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/smartisanos/smengine/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 73
    .local v0, "bmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 74
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    return-object v0

    .line 75
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartisanos/smengine/Image$ImageException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/Image$ImageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getTextBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/16 v6, 0x12c

    const/high16 v7, 0x42c80000    # 100.0f

    .line 90
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 91
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 94
    const-string v4, "\u4ed6"

    .line 95
    .local v4, "text":Ljava/lang/String;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v3, "p":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 97
    .local v5, "xfermode":Landroid/graphics/PorterDuffXfermode;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    const/high16 v6, -0x10000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {v1, v4, v7, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    return-object v0
.end method

.method public static inverseBitmapY(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 82
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    .local v2, "newBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 86
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    return-object v2
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 139
    invoke-static {}, Lcom/smartisanos/smengine/GLContext;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 142
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 150
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    throw v4

    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 146
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


.method public getTexID()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    return v0
.end method

.method public loadTexture(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x2901

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xde1

    .line 36
    iget v4, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 37
    iget v4, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/smengine/Image;->mImageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 43
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bmap":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/smartisanos/smengine/Image;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v4, p0, Lcom/smartisanos/smengine/Image;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 51
    new-array v3, v8, [I

    .line 52
    .local v3, "texIDArray":[I
    invoke-static {v8, v3, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 53
    aget v4, v3, v7

    iput v4, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    .line 54
    iget v4, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    const/16 v4, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 57
    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 61
    const/16 v4, 0x2802

    invoke-static {v6, v4, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 63
    const/16 v4, 0x2803

    invoke-static {v6, v4, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 65
    iget-object v4, p0, Lcom/smartisanos/smengine/Image;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7, v4, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 45
    .end local v0    # "bmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "texIDArray":[I
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/smartisanos/smengine/Image$ImageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load image error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/smengine/Image;->mImageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/Image$ImageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setTexID(I)V
    .locals 0
    .param p1, "texID"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/smartisanos/smengine/Image;->mTexID:I

    .line 137
    return-void
.end method
