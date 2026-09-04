.class public Lsmartisanos/util/NameAvatarController;
.super Ljava/lang/Object;
.source "NameAvatarController.java"


.field private static FONT_CHINESE_NAME:Ljava/lang/String; = null

.field private static FONT_ENGLIST_NAME:Ljava/lang/String; = null

.field private static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "NameAvatarController"

.field private static mAvatarTextPaintLoader:Lsmartisanos/util/NameAvatarController;

.field private static sFilterResult:Ljava/lang/StringBuilder;


.field private mContext:Landroid/content/Context;

.field private mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

.field private mDefaultFontSize:F

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mRoundBG:Landroid/graphics/Bitmap;

.field private mTextPaint_Chinese:Landroid/graphics/Paint;

.field private mTextPaint_English:Landroid/graphics/Paint;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lsmartisanos/util/NameAvatarController;->mAvatarTextPaintLoader:Lsmartisanos/util/NameAvatarController;

    .line 57
    const-string v0, "FZCCHK.TTF"

    sput-object v0, Lsmartisanos/util/NameAvatarController;->FONT_CHINESE_NAME:Ljava/lang/String;

    .line 58
    const-string v0, "Gotham-Ultra.otf"

    sput-object v0, Lsmartisanos/util/NameAvatarController;->FONT_ENGLIST_NAME:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    .line 422
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsmartisanos/util/NameAvatarController;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lsmartisanos/util/NameAvatarController;->mOffsetTop:I

    .line 53
    iput v0, p0, Lsmartisanos/util/NameAvatarController;->mOffsetLeft:I

    .line 60
    iput-object v1, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    .line 61
    iput-object v1, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$dimen;->name_avatar_font_offset_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisanos/util/NameAvatarController;->mOffsetTop:I

    .line 74
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$dimen;->name_avatar_font_offset_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisanos/util/NameAvatarController;->mOffsetLeft:I

    .line 76
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$dimen;->name_avatar_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisanos/util/NameAvatarController;->mDefaultFontSize:F

    .line 78
    return-void
.end method

.method public static drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 191
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 193
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 194
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 196
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 197
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 198
    .local v4, "h":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 200
    .local v3, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v8, v8, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 204
    return-object v0

    .line 198
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 430
    sget-object v1, Lsmartisanos/util/NameAvatarController;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 432
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 435
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const-string p0, ""

    .line 351
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 345
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 348
    invoke-static {p0}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "recycleIncomingBitmap"    # Z

    .prologue
    const/4 v8, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 169
    .local v5, "x":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 171
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 172
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 173
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 178
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    const/4 p0, 0x0

    .line 183
    :cond_0
    return-object v2
.end method

.method public static getContactPhotoName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 220
    const-string v6, ""

    .line 221
    .local v6, "result":Ljava/lang/String;
    invoke-static {p0, p1}, Lsmartisanos/util/NameAvatarController;->isDefaultName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    .line 272
    :goto_0
    return-object v8

    .line 224
    :cond_0
    const/4 v7, 0x0

    .line 225
    .local v7, "tempStr":Ljava/lang/String;
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 226
    const-string v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->isMixName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 230
    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_3

    .line 231
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 233
    :cond_3
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 234
    :cond_4
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->isPhoneNumberWithWildWaitChar(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 235
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->numberFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 238
    :cond_5
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->onlyOneOrTwoNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, p1

    .line 239
    goto/16 :goto_0

    .line 240
    :cond_6
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->numberStartWithSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 241
    invoke-static {v7}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 243
    :cond_7
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v6

    .line 245
    goto/16 :goto_0

    .line 248
    :cond_8
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 249
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-static {v6}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 252
    :cond_9
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "nameArray":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v5, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 255
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_b

    aget-object v3, v0, v1

    .line 256
    .local v3, "n":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 257
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 261
    .end local v3    # "n":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_c

    .line 264
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lsmartisanos/util/NameAvatarController;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 266
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "nameArray":[Ljava/lang/String;
    .end local v5    # "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    move-object v8, v6

    .line 272
    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstances(Landroid/content/Context;)Lsmartisanos/util/NameAvatarController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v1, Lsmartisanos/util/NameAvatarController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsmartisanos/util/NameAvatarController;->mAvatarTextPaintLoader:Lsmartisanos/util/NameAvatarController;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lsmartisanos/util/NameAvatarController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lsmartisanos/util/NameAvatarController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsmartisanos/util/NameAvatarController;->mAvatarTextPaintLoader:Lsmartisanos/util/NameAvatarController;

    .line 67
    :cond_0
    sget-object v0, Lsmartisanos/util/NameAvatarController;->mAvatarTextPaintLoader:Lsmartisanos/util/NameAvatarController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRoundBG()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$drawable;->roundphotobg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    .line 213
    :cond_0
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static hasChinese(Ljava/lang/String;)Z
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    const-string v2, "[\u4e00-\u9fa5]"

    .line 414
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 415
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 416
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized initTextPaint()V
    .locals 6

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 150
    .local v0, "am":Landroid/content/res/AssetManager;
    sget-object v4, Lsmartisanos/util/NameAvatarController;->FONT_CHINESE_NAME:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 151
    .local v1, "chinese":Landroid/graphics/Typeface;
    sget-object v4, Lsmartisanos/util/NameAvatarController;->FONT_ENGLIST_NAME:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 153
    .local v2, "english":Landroid/graphics/Typeface;
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$dimen;->name_avatar_font_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    .local v3, "fontSize":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    .line 155
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    .line 161
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v4, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "chinese":Landroid/graphics/Typeface;
    .end local v2    # "english":Landroid/graphics/Typeface;
    .end local v3    # "fontSize":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static isDefaultName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lsmartisanos/widget/R$string;->missing_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const/4 v2, 0x0

    .line 452
    :goto_0
    return v2

    .line 450
    :cond_0
    invoke-static {p0}, Lsmartisanos/util/NameAvatarController;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 452
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private static isMixName(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v3

    .line 392
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 395
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v0

    .line 396
    .local v0, "firstIsChinese":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 397
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v2

    .line 398
    .local v2, "isChinese":Z
    if-eq v0, v2, :cond_2

    move v3, v4

    .line 399
    goto :goto_0

    .line 396
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 468
    :goto_0
    return v1

    .line 467
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 468
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private static isPhoneNumberWithWildWaitChar(Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 279
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    .line 278
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v4, 0x0

    .line 286
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static isSpecialChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 338
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized numberFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 373
    const-class v3, Lsmartisanos/util/NameAvatarController;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    monitor-exit v3

    return-object v2

    .line 376
    :cond_0
    :try_start_1
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 378
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 379
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    :cond_2
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 385
    .end local v0    # "c":C
    :cond_3
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 373
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static numberStartWithSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "findSpecialChar":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-char v1, v0, v3

    .line 316
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    .line 317
    .local v5, "num":Z
    if-eqz v5, :cond_0

    .line 318
    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v1}, Lsmartisanos/util/NameAvatarController;->isSpecialChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 324
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 325
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "findSpecialChar":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "num":Z
    :cond_1
    :goto_2
    return-object v7

    .line 327
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v2    # "findSpecialChar":Z
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "num":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "findSpecialChar":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "num":Z
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private static onlyOneOrTwoNumber(Ljava/lang/String;)Z
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-char v1, v0, v2

    .line 296
    .local v1, "c":C
    const/16 v7, 0x30

    if-lt v1, v7, :cond_1

    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    move v4, v6

    .line 297
    .local v4, "num":Z
    :goto_1
    if-nez v4, :cond_2

    .line 303
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "num":Z
    :cond_0
    :goto_2
    return v5

    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    move v4, v5

    .line 296
    goto :goto_1

    .line 295
    .restart local v4    # "num":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "c":C
    .end local v4    # "num":Z
    :cond_3
    move v5, v6

    .line 301
    goto :goto_2
.end method

.method public static saveBitmapToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 480
    if-nez p0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const-string v0, "/sdcard/avatar/"

    .line 484
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 486
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 489
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v2    # "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    const/4 v3, 0x0

    .line 497
    .local v3, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .local v4, "fOut":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 499
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    if-eqz v4, :cond_3

    .line 507
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v3, v4

    .line 511
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 492
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 509
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 510
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "NameAvatarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when fOut.close:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 512
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 500
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 501
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 506
    if-eqz v3, :cond_0

    .line 507
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 509
    :catch_3
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "NameAvatarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when fOut.close:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 503
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v5, "NameAvatarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when fOut.flush:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 506
    if-eqz v3, :cond_0

    .line 507
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 509
    :catch_5
    move-exception v1

    .line 510
    const-string v5, "NameAvatarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when fOut.close:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 505
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 506
    :goto_4
    if-eqz v3, :cond_4

    .line 507
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 511
    :cond_4
    :goto_5
    throw v5

    .line 509
    :catch_6
    move-exception v1

    .line 510
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "NameAvatarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when fOut.close:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 505
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 502
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 500
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static saveDrawableToSD(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 473
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 474
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    .local v1, "bm":Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lsmartisanos/util/NameAvatarController;->saveBitmapToSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private static declared-synchronized stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 358
    const-class v3, Lsmartisanos/util/NameAvatarController;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_0
    monitor-exit v3

    return-object v2

    .line 361
    :cond_0
    :try_start_1
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 363
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    :cond_1
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    .end local v0    # "c":C
    :cond_3
    sget-object v2, Lsmartisanos/util/NameAvatarController;->sFilterResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


.method public drawName(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "avatar"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 118
    invoke-direct {p0}, Lsmartisanos/util/NameAvatarController;->initTextPaint()V

    .line 119
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v1, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_Chinese:Landroid/graphics/Paint;

    .line 121
    .local v1, "paint":Landroid/graphics/Paint;
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    add-float/2addr v7, v8

    invoke-direct {p0}, Lsmartisanos/util/NameAvatarController;->getRoundBG()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 122
    .local v3, "scale":F
    iget v7, p0, Lsmartisanos/util/NameAvatarController;->mDefaultFontSize:F

    mul-float/2addr v7, v3

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 125
    .local v4, "width":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, p1, v9, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v5, v7

    .line 129
    .local v5, "x":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    .line 130
    .local v6, "y":F
    invoke-static {p1}, Lsmartisanos/util/NameAvatarController;->hasChinese(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    iget v7, p0, Lsmartisanos/util/NameAvatarController;->mOffsetLeft:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v5, v7

    .line 132
    iget v7, p0, Lsmartisanos/util/NameAvatarController;->mOffsetTop:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    .line 135
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "rect":Landroid/graphics/Rect;
    invoke-direct {v2, v9, v9, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .restart local v2    # "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0}, Lsmartisanos/util/NameAvatarController;->getRoundBG()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v0, p1, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    return-void

    .line 119
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "width":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    iget-object v1, p0, Lsmartisanos/util/NameAvatarController;->mTextPaint_English:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public getAvatarBitmapFromName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "useDeafaultAvatar"    # Z

    .prologue
    .line 104
    invoke-static {p1, p2}, Lsmartisanos/util/NameAvatarController;->getContactPhotoName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-static {p1, p2}, Lsmartisanos/util/NameAvatarController;->isDefaultName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lsmartisanos/util/NameAvatarController;->getDefaultCircleContactBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 114
    :goto_0
    return-object v3

    .line 106
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0}, Lsmartisanos/util/NameAvatarController;->getRoundBG()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 110
    .local v2, "roundBg":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2, v0}, Lsmartisanos/util/NameAvatarController;->drawName(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    invoke-static {v0}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "out":Landroid/graphics/Bitmap;
    move-object v3, v1

    .line 114
    goto :goto_0
.end method

.method public declared-synchronized getDefaultCircleContactBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lsmartisanos/util/NameAvatarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisanos/widget/R$drawable;->contact_picture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lsmartisanos/util/NameAvatarController;->drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lsmartisanos/util/NameAvatarController;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

    .line 100
    :cond_0
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reInitRoundBG()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    iput-object v1, p0, Lsmartisanos/util/NameAvatarController;->mRoundBG:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    iget-object v0, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 91
    iput-object v1, p0, Lsmartisanos/util/NameAvatarController;->mDefaultCircleContactBitmap:Landroid/graphics/Bitmap;

    .line 93
    :cond_1
    return-void
.end method
