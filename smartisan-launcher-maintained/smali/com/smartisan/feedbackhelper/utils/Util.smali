.class public Lcom/smartisan/feedbackhelper/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat",
        "UseValueOf",
        "SdCardPath"
    }
.end annotation


.field private static final BYTE_SIZE:I = 0x400

.field private static VERSION_NAME:Ljava/lang/String;

.field private static errorTag:Ljava/lang/String;

.field public static sdf:Ljava/text/SimpleDateFormat;

.field private static systemPropertiesClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static tag:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "BugReportUtil"

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    .line 77
    sput-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    .line 78
    sput-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    .line 79
    sput-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->VERSION_NAME:Ljava/lang/String;

    .line 80
    const-string v0, "Failed to get system property : %s"

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 910
    .local v0, "hs":Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 911
    .local v3, "stmp":Ljava/lang/String;
    array-length v1, p0

    .line 912
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 913
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 915
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 912
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 917
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_1

    .line 920
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static compressPicture(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "dstFile"    # Ljava/lang/String;

    .prologue
    .line 615
    invoke-static {p0, p1}, Lcom/smartisan/feedbackhelper/utils/Util;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 616
    .local v3, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "_srcFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "targetPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "_dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x186a0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 620
    invoke-static {v4}, Lcom/smartisan/feedbackhelper/utils/Util;->createImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 621
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v4}, Lcom/smartisan/feedbackhelper/utils/Util;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 623
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return v3
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 665
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 666
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 667
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 669
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 671
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 679
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 667
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    .line 668
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 667
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 669
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    .line 670
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 669
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 674
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 675
    goto :goto_2

    .line 676
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 679
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 652
    invoke-static {p0, p1, p2}, Lcom/smartisan/feedbackhelper/utils/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 655
    .local v0, "initialSize":I
    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    .line 656
    const/4 v1, 0x3

    .line 660
    .local v1, "roundedSize":I
    :goto_0
    return v1

    .line 658
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v1, v2, 0x3

    .restart local v1    # "roundedSize":I
    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "srcFile"    # Ljava/lang/String;
    .param p1, "dstFile"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 583
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v6

    .line 586
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, "_srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 590
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "_dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 592
    new-instance v0, Ljava/io/File;

    .end local v0    # "_dstFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v0    # "_dstFile":Ljava/io/File;
    :cond_2
    const/4 v4, 0x0

    .line 596
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/smartisan/feedbackhelper/utils/Util;->saveDataToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    const/4 v6, 0x1

    .line 604
    if-eqz v5, :cond_0

    .line 605
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 599
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 600
    .local v3, "e1":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    if-eqz v4, :cond_0

    .line 605
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 606
    :catch_2
    move-exception v2

    .line 607
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 603
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 604
    :goto_2
    if-eqz v4, :cond_3

    .line 605
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 608
    :cond_3
    :goto_3
    throw v6

    .line 606
    :catch_3
    move-exception v2

    .line 607
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 603
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 599
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static createImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 642
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 643
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 644
    const/4 v2, -0x1

    const/16 v3, 0x4000

    invoke-static {v1, v2, v3}, Lcom/smartisan/feedbackhelper/utils/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 645
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 646
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    return-object v0
.end method

.method public static formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 238
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_0

    .line 239
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    .line 243
    :goto_0
    const/4 v1, 0x0

    .line 245
    .local v1, "formatTime":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_1
    return-object v1

    .line 241
    .end local v1    # "formatTime":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .restart local v1    # "formatTime":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 248
    .local v2, "tmpDate":Ljava/util/Date;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 684
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 685
    const-string v0, "%d bytes"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-int v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 686
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 687
    const-string v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 690
    const-string v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_2
    const-string v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    const/high16 v3, 0x4e800000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatShorterDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 255
    .local v1, "formatDate":Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, "endOfYesterday":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 259
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "MMMdd\u65e5"

    invoke-static {v2, p0}, Lcom/smartisan/feedbackhelper/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "ah:mm"

    invoke-static {v2, p0}, Lcom/smartisan/feedbackhelper/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    :try_start_0
    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Util;->VERSION_NAME:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 88
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/smartisan/feedbackhelper/utils/Util;->VERSION_NAME:Ljava/lang/String;

    .line 90
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Util;->VERSION_NAME:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 964
    const/4 v1, 0x1

    .line 967
    .local v1, "hasField":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 968
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 979
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v6

    .line 969
    :catch_0
    move-exception v4

    .line 970
    .local v4, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .line 979
    .end local v4    # "se":Ljava/lang/SecurityException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 971
    :catch_1
    move-exception v3

    .line 972
    .local v3, "ne":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    .line 977
    goto :goto_1

    .line 973
    .end local v3    # "ne":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 974
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 977
    goto :goto_1

    .line 975
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 976
    .local v0, "ce":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFileContent(Ljava/lang/String;)[B
    .locals 8
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    if-nez p0, :cond_0

    .line 699
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid file path"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 700
    :cond_0
    const/4 v0, 0x0

    .line 701
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 703
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 705
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v2, v6, [B

    .line 706
    .local v2, "buffer":[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 707
    .local v5, "read":I
    :goto_0
    if-ltz v5, :cond_1

    .line 708
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 709
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 713
    if-eqz v4, :cond_2

    .line 715
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 718
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 720
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 722
    :cond_3
    :goto_2
    return-object v6

    .line 713
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "read":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_4

    .line 715
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 718
    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 720
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 722
    :cond_5
    :goto_5
    throw v6

    .line 716
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "read":I
    :catch_0
    move-exception v7

    goto :goto_1

    .line 721
    :catch_1
    move-exception v7

    goto :goto_2

    .line 716
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "read":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 721
    :catch_3
    move-exception v7

    goto :goto_5

    .line 713
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static getFileSha1(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 889
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 891
    .local v4, "messagedigest":Ljava/security/MessageDigest;
    const/high16 v5, 0xa00000

    new-array v0, v5, [B

    .line 892
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 893
    .local v3, "len":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 894
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 897
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "messagedigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 905
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v5

    .line 896
    .restart local v0    # "buffer":[B
    .restart local v3    # "len":I
    .restart local v4    # "messagedigest":Ljava/security/MessageDigest;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/feedbackhelper/utils/Util;->byte2hex([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 903
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 899
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "messagedigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v1

    .line 900
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 901
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 903
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v1, "try to get Log path for report"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->isSpaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v1, "get external storage for log path!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_STORAGE_PATH:Ljava/lang/String;

    .line 329
    :goto_0
    return-object v0

    .line 325
    :cond_0
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->isSpaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v1, "get storage for log path!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_STORAGE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .prologue
    .line 944
    const/4 v1, 0x1

    .line 947
    .local v1, "hasMethod":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 948
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 960
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v6

    .line 950
    :catch_0
    move-exception v4

    .line 951
    .local v4, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .line 960
    .end local v4    # "se":Ljava/lang/SecurityException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 952
    :catch_1
    move-exception v3

    .line 953
    .local v3, "ne":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    .line 958
    goto :goto_1

    .line 954
    .end local v3    # "ne":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 955
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 958
    goto :goto_1

    .line 956
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 957
    .local v0, "ce":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getRealPathFromURI(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 727
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    .line 730
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 731
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 740
    :goto_0
    return-object v3

    .line 733
    :cond_0
    const-string v0, "_data"

    .line 734
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 735
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 736
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 737
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v8

    .line 740
    goto :goto_0
.end method

.method public static getRequestJson(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 748
    .local v2, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 750
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "i":I
    :goto_1
    return-object v3

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 99
    :try_start_0
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 100
    const-string v3, "android.os.SystemProperties"

    .line 101
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    .line 102
    :cond_0
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, "get":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/String;
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local v1    # "get":Ljava/lang/reflect/Method;
    .restart local v2    # "value":Ljava/lang/String;
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p1, v2

    .line 107
    goto :goto_0

    .line 108
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getTempPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->isSpaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_EXT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    .line 314
    :cond_0
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->isSpaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Constants;->BUGREPORT_SDCARD_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTypedReports(Ljava/util/List;Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/feedbackhelper/utils/ComplainReport;",
            ">;",
            "Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/feedbackhelper/utils/ComplainReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "mReports":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/feedbackhelper/utils/ComplainReport;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v0, "newReports":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/feedbackhelper/utils/ComplainReport;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 935
    .local v1, "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getType()Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 936
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    .end local v1    # "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    :cond_1
    return-object v0
.end method

.method public static is2GConnected(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    invoke-static {p0}, Lcom/smartisan/feedbackhelper/utils/Util;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v4

    .line 214
    :cond_1
    const-string v6, "connectivity"

    .line 215
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    const-string v6, "phone"

    .line 217
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 219
    .local v3, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 220
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 221
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 223
    .local v2, "netSubtype":I
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SUBTYPE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    const/4 v6, 0x7

    if-eq v2, v6, :cond_2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    const/16 v6, 0xb

    if-ne v2, v6, :cond_0

    :cond_2
    move v4, v5

    .line 230
    goto :goto_0
.end method

.method public static is3GConnected(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 177
    const-string v6, "connectivity"

    .line 178
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    const-string v6, "phone"

    .line 180
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 182
    .local v3, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 183
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    .line 184
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 186
    .local v2, "netSubtype":I
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SUBTYPE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    const/16 v6, 0xe

    if-eq v2, v6, :cond_0

    const/16 v6, 0x8

    if-eq v2, v6, :cond_0

    const/16 v6, 0xa

    if-eq v2, v6, :cond_0

    const/16 v6, 0xf

    if-eq v2, v6, :cond_0

    const/16 v6, 0x9

    if-eq v2, v6, :cond_0

    const/16 v6, 0xd

    if-eq v2, v6, :cond_0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    .line 195
    :cond_0
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "UMTS 3G connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v2    # "netSubtype":I
    :goto_0
    return v4

    .line 198
    .restart local v2    # "netSubtype":I
    :cond_1
    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_2

    const/16 v6, 0xc

    if-ne v2, v6, :cond_3

    .line 201
    :cond_2
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "CDMA 3G connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "netSubtype":I
    :cond_3
    move v4, v5

    .line 206
    goto :goto_0
.end method

.method public static isSpaceAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x3200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    const-string v4, "connectivity"

    .line 164
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 166
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 167
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v5, "TYPE_WIFI: %s, WIFI connected"

    new-array v6, v2, [Ljava/lang/Object;

    .line 170
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 169
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 271
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 272
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    .line 276
    :goto_0
    :try_start_0
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    :goto_1
    return-object v1

    .line 274
    :cond_0
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v2, "Invalid params : %s , %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static readDataFromFile(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "bArrayOut":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 546
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 548
    .end local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .local v1, "bArrayOut":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v2, v9, [B

    .line 549
    .local v2, "data":[B
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v7, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 550
    .local v8, "length":I
    :goto_0
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 551
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 552
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v7, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 558
    if-eqz v7, :cond_1

    .line 560
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 564
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 566
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v0, v1

    .line 571
    .end local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v8    # "length":I
    .restart local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    :goto_3
    return-object v9

    .line 561
    .end local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    :catch_0
    move-exception v4

    .line 562
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 567
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 568
    .local v5, "e2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 555
    .end local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .restart local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 556
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v9, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 558
    if-eqz v6, :cond_3

    .line 560
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 564
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    .line 566
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 571
    :cond_4
    :goto_6
    const/4 v9, 0x0

    goto :goto_3

    .line 561
    :catch_3
    move-exception v4

    .line 562
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 567
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 568
    .restart local v5    # "e2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 558
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v6, :cond_5

    .line 560
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 564
    :cond_5
    :goto_8
    if-eqz v0, :cond_6

    .line 566
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 569
    :cond_6
    :goto_9
    throw v9

    .line 561
    :catch_5
    move-exception v4

    .line 562
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 567
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 568
    .restart local v5    # "e2":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 558
    .end local v5    # "e2":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 555
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bArrayOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public static readPropertiesFromAsserts(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Properties;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v5, "readPropertiesFromAsserts %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 420
    .local v3, "properties":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 421
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-eqz v2, :cond_0

    .line 428
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :cond_0
    :goto_0
    return-object v3

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v5, "Error occured when parsing detect_bug.xml from assets"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    if-eqz v2, :cond_0

    .line 428
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 429
    :catch_2
    move-exception v1

    .line 430
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 427
    if-eqz v2, :cond_1

    .line 428
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 431
    :cond_1
    :goto_1
    throw v4

    .line 429
    :catch_3
    move-exception v1

    .line 430
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readPropertiesFromFile(Ljava/lang/String;)Ljava/util/Properties;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 381
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "readPropertiesFromFile %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 383
    .local v4, "properties":Ljava/util/Properties;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "Invalid file path"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    :goto_0
    return-object v4

    .line 387
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 403
    if-eqz v3, :cond_0

    .line 405
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "File not found %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 396
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 395
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    if-eqz v2, :cond_0

    .line 405
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 406
    :catch_2
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v6, "Error occured while loading properties file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 399
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 403
    if-eqz v2, :cond_0

    .line 405
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 406
    :catch_4
    move-exception v0

    .line 407
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 405
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 408
    :cond_2
    :goto_4
    throw v5

    .line 406
    :catch_5
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 403
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 398
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 394
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 356
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "removeFile() : %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-nez p0, :cond_0

    .line 377
    :goto_0
    return v4

    .line 359
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 361
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "File Not Exist : %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 366
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 369
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v0, :cond_4

    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFile(Ljava/lang/String;)Z

    move-result v3

    .line 372
    .local v3, "success":Z
    if-nez v3, :cond_3

    move v4, v5

    .line 373
    goto :goto_0

    .line 370
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 377
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "success":Z
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    goto :goto_0
.end method

.method public static removeFiles([Ljava/lang/String;)V
    .locals 3
    .param p0, "files"    # [Ljava/lang/String;

    .prologue
    .line 341
    if-nez p0, :cond_1

    .line 346
    :cond_0
    return-void

    .line 343
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 344
    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFile(Ljava/lang/String;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "_dstFile"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 631
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 632
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 633
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveDataToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 507
    sget-object v8, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v9, "saveDataToFile %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 509
    :cond_0
    sget-object v8, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v9, "Invalid data or file path"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    const/4 v4, 0x0

    .line 514
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 516
    .local v6, "parentFile":Ljava/io/File;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 517
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 518
    :cond_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 520
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 521
    .local v7, "read":I
    :goto_1
    if-ltz v7, :cond_4

    .line 522
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 523
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    goto :goto_1

    .line 525
    :cond_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    if-eqz v5, :cond_6

    .line 533
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 534
    const/4 v4, 0x0

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 536
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "ex":Ljava/io/IOException;
    sget-object v8, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v9, "Error closing Output Stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 539
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 526
    .end local v0    # "data":[B
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "parentFile":Ljava/io/File;
    .end local v7    # "read":I
    :catch_1
    move-exception v1

    .line 527
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    if-eqz v4, :cond_1

    .line 533
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 534
    const/4 v4, 0x0

    goto :goto_0

    .line 536
    :catch_2
    move-exception v2

    .line 537
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v8, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v9, "Error closing Output Stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 529
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    if-eqz v4, :cond_1

    .line 533
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 534
    const/4 v4, 0x0

    goto :goto_0

    .line 536
    :catch_4
    move-exception v2

    .line 537
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v8, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v9, "Error closing Output Stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 531
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 532
    :goto_4
    if-eqz v4, :cond_5

    .line 533
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 534
    const/4 v4, 0x0

    .line 538
    :cond_5
    :goto_5
    throw v8

    .line 536
    :catch_5
    move-exception v2

    .line 537
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v9, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v10, "Error closing Output Stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 531
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 528
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 526
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "data":[B
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_6
    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static saveDataToFile([BLjava/lang/String;)V
    .locals 10
    .param p0, "data"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 469
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "saveDataToFile %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-nez p0, :cond_1

    .line 471
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "The data to be saved is a null object"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const/4 v3, 0x0

    .line 476
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 478
    .local v5, "parentFile":Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 479
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 480
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 482
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 489
    if-eqz v4, :cond_4

    .line 490
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 491
    const/4 v3, 0x0

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 493
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Error closing Output Stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 496
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 483
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "parentFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Failed to save data to file %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 485
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 484
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    if-eqz v3, :cond_0

    .line 490
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 491
    const/4 v3, 0x0

    goto :goto_0

    .line 493
    :catch_2
    move-exception v1

    .line 494
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Error closing Output Stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 489
    :goto_2
    if-eqz v3, :cond_3

    .line 490
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 491
    const/4 v3, 0x0

    .line 495
    :cond_3
    :goto_3
    throw v6

    .line 493
    :catch_3
    move-exception v1

    .line 494
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v8, "Error closing Output Stream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 488
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 483
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static savePropertiesToFile(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 10
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 439
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "savePropertiesToFile %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-nez p0, :cond_1

    .line 441
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "The properties to be saved is a null object"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v3, 0x0

    .line 446
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 448
    .local v5, "parentFile":Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 449
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 450
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto-generated by BugReport at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 452
    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 451
    invoke-virtual {p0, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    if-eqz v4, :cond_4

    .line 459
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 460
    const/4 v3, 0x0

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 462
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 463
    .local v1, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Error closing Output Stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 465
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 453
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "parentFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Failed to save properties to file %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    if-eqz v3, :cond_0

    .line 459
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 460
    const/4 v3, 0x0

    goto :goto_0

    .line 462
    :catch_2
    move-exception v1

    .line 463
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v7, "Error closing Output Stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 458
    :goto_2
    if-eqz v3, :cond_3

    .line 459
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 460
    const/4 v3, 0x0

    .line 464
    :cond_3
    :goto_3
    throw v6

    .line 462
    :catch_3
    move-exception v1

    .line 463
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    const-string v8, "Error closing Output Stream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 457
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 453
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static sendGETRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 21
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ""

    .line 829
    .local v10, "result":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v12, "?"

    .line 831
    .local v12, "tmp1":Ljava/lang/String;
    const-string v13, "="

    .line 832
    .local v13, "tmp2":Ljava/lang/String;
    const-string v14, "&"

    .line 833
    .local v14, "tmp3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    if-eqz p1, :cond_0

    const/16 v17, 0x1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_1
    and-int v17, v17, v18

    if-eqz v17, :cond_3

    .line 835
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 837
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 838
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 839
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string v20, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 840
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 841
    :catch_0
    move-exception v3

    .line 842
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 834
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 845
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 847
    :cond_3
    const/4 v15, 0x0

    .line 848
    .local v15, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 850
    .local v2, "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v16, Ljava/net/URL;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 851
    .end local v15    # "url":Ljava/net/URL;
    .local v16, "url":Ljava/net/URL;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 852
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 854
    :try_start_3
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 858
    :goto_3
    const/16 v17, 0x1

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 859
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 860
    const-string v17, "accept"

    const-string v18, "*/*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 862
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 863
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 864
    .local v7, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 866
    .local v8, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 867
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 869
    .local v6, "inputLine":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 870
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 855
    .end local v6    # "inputLine":Ljava/lang/String;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 856
    .local v4, "e1":Ljava/net/ProtocolException;
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 874
    .end local v4    # "e1":Ljava/net/ProtocolException;
    :catch_2
    move-exception v3

    move-object/from16 v15, v16

    .line 875
    .end local v16    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v15    # "url":Ljava/net/URL;
    :goto_5
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 879
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 880
    return-object v10

    .line 872
    .end local v15    # "url":Ljava/net/URL;
    .restart local v6    # "inputLine":Ljava/lang/String;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "url":Ljava/net/URL;
    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v6    # "inputLine":Ljava/lang/String;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_5
    move-object/from16 v15, v16

    .line 878
    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto :goto_6

    .line 876
    :catch_3
    move-exception v3

    .line 877
    .local v3, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 876
    .end local v3    # "e":Ljava/io/IOException;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    :catch_4
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "url":Ljava/net/URL;
    .restart local v15    # "url":Ljava/net/URL;
    goto :goto_7

    .line 874
    :catch_5
    move-exception v3

    goto :goto_5
.end method

.method public static sendRequestFromHttpClient(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 792
    .local v10, "strResult":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v6, "paramPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 794
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 795
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 796
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v14, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p2

    invoke-direct {v3, v6, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 802
    .local v3, "entitydata":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 803
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v7, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 804
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 806
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 807
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_2

    .line 808
    const-string v11, "SNRetCode"

    invoke-interface {v8, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 810
    .local v5, "errorCode":Lorg/apache/http/Header;
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, "sign":Ljava/lang/String;
    const-string v11, "e"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 824
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "entitydata":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "errorCode":Lorg/apache/http/Header;
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "sign":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 815
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "entitydata":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v5    # "errorCode":Lorg/apache/http/Header;
    .restart local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "sign":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "entitydata":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5    # "errorCode":Lorg/apache/http/Header;
    .end local v7    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "sign":Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v9, v10

    .line 824
    goto :goto_1

    .line 817
    :catch_0
    move-exception v2

    .line 818
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 819
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 820
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 821
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v2

    .line 822
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    :try_start_0
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 129
    const-string v4, "android.os.SystemProperties"

    .line 130
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    .line 131
    :cond_0
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    const-string v5, "set"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    .local v1, "set":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->systemPropertiesClass:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    .end local v1    # "set":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 137
    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 140
    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 146
    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/smartisan/feedbackhelper/utils/Util;->tag:Ljava/lang/String;

    sget-object v5, Lcom/smartisan/feedbackhelper/utils/Util;->errorTag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 149
    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I

    .prologue
    .line 924
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    return-void
.end method

.method public static sizeToG(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "size1"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 778
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 779
    .local v1, "size":Ljava/lang/Double;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "###.#"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v2, v4, v6

    .line 782
    .local v2, "result":D
    cmpl-double v4, v2, v8

    if-ltz v4, :cond_0

    .line 783
    div-double/2addr v2, v8

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 786
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static sizeToM(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "size1"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x4e800000

    const/high16 v4, 0x49800000    # 1048576.0f

    .line 760
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 762
    .local v2, "size":Ljava/lang/Float;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###.##"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 765
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float v1, v3, v4

    .line 766
    .local v1, "f":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    :goto_0
    return-object v3

    .line 767
    .end local v1    # "f":F
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 768
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 769
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v1, v3, v5

    .line 770
    .restart local v1    # "f":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 772
    .end local v1    # "f":F
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v1, v3, v4

    .line 773
    .restart local v1    # "f":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
