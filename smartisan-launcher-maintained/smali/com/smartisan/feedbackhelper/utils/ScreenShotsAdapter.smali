.class public Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScreenShotsAdapter.java"


.field private static final MAX_NUM:I = 0x5


.field public imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mItemClickListener:Landroid/view/View$OnClickListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScreenShots:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field picAdd:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->imageCache:Ljava/util/Map;

    .line 52
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$1;-><init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter$2;-><init>(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 48
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 304
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 305
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 306
    .local v3, "width":I
    const/4 v2, 0x1

    .line 308
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 312
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 314
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 320
    .local v4, "widthRatio":I
    if-le v1, v4, :cond_2

    move v2, v1

    .line 323
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 320
    goto :goto_0
.end method

.method public static checkPicExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "picFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private createSpecifyBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    const/4 v4, -0x1

    const/16 v6, 0x4000

    invoke-static {v10, v4, v6}, Lcom/smartisan/feedbackhelper/utils/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 251
    const/4 v4, 0x0

    iput-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 252
    invoke-static {p1, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, "tmpbmps":Landroid/graphics/Bitmap;
    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v6, :cond_4

    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 256
    .local v3, "size":I
    :goto_0
    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v4, v6

    div-int/lit8 v1, v4, 0x2

    .line 257
    .local v1, "x":I
    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v4, v6

    div-int/lit8 v2, v4, 0x2

    .line 258
    .local v2, "y":I
    if-gez v1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 261
    :cond_0
    if-gez v2, :cond_1

    .line 262
    const/4 v2, 0x0

    .line 265
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v4, 0x42f00000    # 120.0f

    int-to-float v6, v3

    div-float v12, v4, v6

    .line 267
    .local v12, "scaleSize":F
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, "digree":I
    const/4 v9, 0x0

    .line 271
    .local v9, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v9, Landroid/media/ExifInterface;

    .end local v9    # "exif":Landroid/media/ExifInterface;
    invoke-direct {v9, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .restart local v9    # "exif":Landroid/media/ExifInterface;
    :goto_1
    if-eqz v9, :cond_2

    .line 277
    const-string v4, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    .line 279
    .local v11, "orientation":I
    packed-switch v11, :pswitch_data_0

    .line 290
    :pswitch_0
    const/4 v7, 0x0

    .line 294
    .end local v11    # "orientation":I
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 296
    int-to-float v4, v7

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 298
    :cond_3
    const/4 v6, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 254
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "size":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "digree":I
    .end local v9    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "scaleSize":F
    :cond_4
    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    .line 272
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    .restart local v3    # "size":I
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "digree":I
    .restart local v12    # "scaleSize":F
    :catch_0
    move-exception v8

    .line 273
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    const/4 v9, 0x0

    .restart local v9    # "exif":Landroid/media/ExifInterface;
    goto :goto_1

    .line 281
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v11    # "orientation":I
    :pswitch_1
    const/16 v7, 0x5a

    .line 282
    goto :goto_2

    .line 284
    :pswitch_2
    const/16 v7, 0xb4

    .line 285
    goto :goto_2

    .line 287
    :pswitch_3
    const/16 v7, 0x10e

    .line 288
    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static isPicture(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 227
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v3, v4, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 233
    .local v1, "size":I
    :goto_0
    if-gtz v1, :cond_0

    .line 234
    const/4 v2, 0x0

    .line 236
    :cond_0
    return v2

    .line 231
    .end local v1    # "size":I
    :cond_1
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0
.end method


.method public addShotsFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 81
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActualCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    .line 134
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFileList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getShotsFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 169
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    .line 170
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 171
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    sget v7, Lcom/smartisan/feedbackhelper/R$id;->bug2go_addpic:I

    .line 172
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->picAdd:Landroid/widget/TextView;

    .line 174
    if-nez p2, :cond_0

    .line 175
    sget v6, Lcom/smartisan/feedbackhelper/R$layout;->grid_view_item:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 178
    :cond_0
    sget v6, Lcom/smartisan/feedbackhelper/R$id;->grid_del:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 179
    .local v1, "del":Landroid/widget/ImageView;
    sget v6, Lcom/smartisan/feedbackhelper/R$id;->grid_item:I

    .line 180
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 183
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->isShotsEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->picAdd:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :goto_0
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v6, p1, :cond_4

    .line 190
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v6, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, "bit":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->imageCache:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->imageCache:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 196
    .local v5, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 197
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bit":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 200
    .end local v5    # "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    :cond_1
    if-nez v0, :cond_2

    .line 201
    invoke-direct {p0, v4}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->createSpecifyBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->imageCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v4    # "path":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 186
    :cond_3
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->picAdd:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    sget v6, Lcom/smartisan/feedbackhelper/R$drawable;->report_fragment_add:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public isShotsEmpty()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeShotsFile(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setFileList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->addShotsFile(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateShotsFile(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/ScreenShotsAdapter;->mScreenShots:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
