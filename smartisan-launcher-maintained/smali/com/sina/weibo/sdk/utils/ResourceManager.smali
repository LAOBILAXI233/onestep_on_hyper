.class public Lcom/sina/weibo/sdk/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final DRAWABLE_HDPI:Ljava/lang/String; = "drawable-hdpi"

.field private static final DRAWABLE_LDPI:Ljava/lang/String; = "drawable-ldpi"

.field private static final DRAWABLE_MDPI:Ljava/lang/String; = "drawable-mdpi"

.field private static final DRAWABLE_XHDPI:Ljava/lang/String; = "drawable-xhdpi"

.field private static final DRAWABLE_XXHDPI:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/sina/weibo/sdk/utils/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 64
    const-string v2, "drawable-xxhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string v2, "drawable-xhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string v2, "drawable-hdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string v2, "drawable-mdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string v2, "drawable-ldpi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string v2, "drawable"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    new-array v0, v1, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p1, v0, v6

    aput p0, v0, v7

    .line 335
    new-array v1, v1, [[I

    .line 336
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 337
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 338
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v6

    .line 339
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v2, v1, v7

    .line 340
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 344
    .line 345
    const-string v0, ".9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 346
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 351
    :goto_0
    const-string v1, ".9"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v2, :cond_1

    .line 352
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 356
    :goto_1
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 357
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 358
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 359
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 360
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 361
    return-object v2

    .line 348
    :cond_0
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public static createStateListDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 366
    .line 367
    const-string v0, ".9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    .line 368
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    :goto_0
    const-string v1, ".9"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 374
    invoke-static {p0, p3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 379
    :goto_1
    const-string v2, ".9"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v3, :cond_2

    .line 380
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 384
    :goto_2
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 385
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 386
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 387
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 388
    new-array v2, v7, [I

    const v4, 0x101000e

    aput v4, v2, v6

    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 389
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 390
    return-object v3

    .line 370
    :cond_0
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {p0, p3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 382
    :cond_2
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 329
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 330
    return v0
.end method

.method private static extractDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 311
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 313
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v2, Landroid/util/TypedValue;->density:I

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 315
    invoke-static {v1, v2, v0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 317
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 318
    return-object v1
.end method

.method private static extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 303
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Landroid/view/LayoutInflater;

    .line 304
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "id is NOT correct!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 189
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 150
    sget-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "find Appropriate path..."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    :goto_1
    sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_3

    move v0, v2

    .line 173
    :cond_1
    if-lez v3, :cond_7

    if-lez v0, :cond_7

    .line 174
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v2, v1, :cond_2

    move v3, v0

    .line 184
    :cond_2
    :goto_2
    if-gez v3, :cond_a

    .line 186
    sget-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "Not find the appropriate path for drawable"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 187
    goto :goto_0

    .line 156
    :cond_3
    sget-object v5, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v0

    .line 159
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {p0, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 161
    if-ne v1, v0, :cond_5

    move-object v0, v5

    .line 162
    goto :goto_0

    .line 163
    :cond_5
    if-gez v1, :cond_1

    move v3, v0

    .line 155
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_7
    if-lez v3, :cond_8

    if-ltz v0, :cond_2

    .line 177
    :cond_8
    if-gez v3, :cond_9

    if-lez v0, :cond_9

    move v3, v0

    .line 179
    goto :goto_2

    .line 181
    :cond_9
    sget-object v0, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    const-string v1, "Not find the appropriate path for drawable"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto :goto_2

    .line 189
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sina/weibo/sdk/utils/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xf0

    const/16 v2, 0xa0

    const/16 v1, 0x78

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 284
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 285
    if-gt v0, v1, :cond_0

    .line 286
    const-string v0, "drawable-ldpi"

    .line 294
    :goto_0
    return-object v0

    .line 287
    :cond_0
    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 288
    const-string v0, "drawable-mdpi"

    goto :goto_0

    .line 289
    :cond_1
    if-le v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    .line 290
    const-string v0, "drawable-hdpi"

    goto :goto_0

    .line 291
    :cond_2
    if-le v0, v3, :cond_3

    const/16 v1, 0x140

    if-gt v0, v1, :cond_3

    .line 292
    const-string v0, "drawable-xhdpi"

    goto :goto_0

    .line 294
    :cond_3
    const-string v0, "drawable-xxhdpi"

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 209
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 210
    if-eqz v7, :cond_4

    .line 211
    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    if-eqz p2, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 215
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v1, v4, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 216
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 217
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    .line 216
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    :goto_0
    if-eqz v7, :cond_0

    .line 228
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 237
    :cond_0
    :goto_1
    return-object v0

    .line 219
    :cond_1
    :try_start_3
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 220
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 224
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    if-eqz v1, :cond_3

    .line 228
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v0, v6

    .line 233
    goto :goto_1

    .line 229
    :catch_1
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 225
    :catchall_0
    move-exception v0

    move-object v7, v6

    .line 226
    :goto_4
    if-eqz v7, :cond_2

    .line 228
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 235
    :cond_2
    :goto_5
    throw v0

    .line 229
    :catch_2
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 229
    :catch_3
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 225
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 223
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static getLanguage()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 124
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static getNinePatchDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 82
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-object p2

    .line 84
    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, p3

    .line 85
    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 87
    goto :goto_0
.end method

.method private static isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 248
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 253
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 256
    sget-object v2, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v1, :cond_2

    .line 264
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 258
    :catch_1
    move-exception v2

    .line 260
    :try_start_2
    sget-object v2, Lcom/sina/weibo/sdk/utils/ResourceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] NOT existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    if-eqz v1, :cond_0

    .line 264
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 266
    :catch_2
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    .line 263
    if-eqz v1, :cond_3

    .line 264
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 270
    :cond_3
    :goto_2
    throw v0

    .line 266
    :catch_3
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static readCountryFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    const-string v0, ""

    .line 396
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v3

    .line 400
    new-array v3, v3, [B

    .line 401
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->read([B)I

    .line 402
    const-string v2, "UTF-8"

    invoke-static {v3, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
