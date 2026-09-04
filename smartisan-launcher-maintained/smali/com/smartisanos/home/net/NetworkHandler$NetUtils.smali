.class final Lcom/smartisanos/home/net/NetworkHandler$NetUtils;
.super Ljava/lang/Object;
.source "NetworkHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/NetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetUtils"
.end annotation


.field private static final TAG_LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field private static final TAG_MD5:Ljava/lang/String; = "md5"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final sHexDigits:[C


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 476
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->sHexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/data/ItemInfo;)[B
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 475
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getIconDataFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method private static readAllBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 637
    if-nez p0, :cond_0

    move-object v4, v3

    .line 657
    .local v4, "data":[B
    :goto_0
    return-object v4

    .line 641
    .end local v4    # "data":[B
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 642
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 643
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 644
    .local v2, "count":I
    if-lez v2, :cond_1

    .line 645
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 649
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 654
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    :goto_2
    move-object v4, v3

    .line 657
    .restart local v4    # "data":[B
    goto :goto_0

    .line 650
    .end local v4    # "data":[B
    :catch_0
    move-exception v4

    .line 651
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    if-eqz p0, :goto_2

    .line 653
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 654
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 636
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [C

    .line 637
    .local v2, "str":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 638
    aget-byte v0, p0, v1

    .line 639
    .local v0, "b":B
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->sHexDigits:[C

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    .line 640
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->sHexDigits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "b":B
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static getBytesFromUrl(Ljava/lang/String;)[B
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 659
    if-nez p0, :cond_0

    move-object v2, v1

    .line 671
    .local v2, "data":[B
    :goto_0
    return-object v2

    .line 663
    .end local v2    # "data":[B
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "link":Ljava/net/URL;
    invoke-static {v0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    .line 665
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 666
    invoke-static {v2}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->readAllBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    .end local v0    # "link":Ljava/net/URL;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    move-object v2, v1

    .restart local v2    # "data":[B
    goto :goto_0

    .line 668
    .end local v2    # "data":[B
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPackageIconUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 673
    if-nez p0, :cond_0

    move-object v14, v0

    .line 762
    .local v14, "result":Ljava/lang/String;
    :goto_0
    return-object v14

    .line 677
    .end local v14    # "result":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 678
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 679
    .local v2, "requestObj":Lorg/json/JSONObject;
    const-string v3, "package"

    move-object/from16 v6, p0

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 681
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://setting.smartisan.com/app/icon"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 682
    .local v3, "requestUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 683
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    .line 684
    .local v5, "timeout":I
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 685
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 686
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 687
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 688
    const-string v7, "POST"

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 689
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 690
    const-string v7, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 693
    .local v7, "os":Ljava/io/OutputStream;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 694
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 695
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 696
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_1

    move-object v14, v0

    .line 697
    .restart local v14    # "result":Ljava/lang/String;
    goto :goto_0

    .line 699
    .end local v14    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 700
    .local v8, "inputStream":Ljava/io/InputStream;
    if-eqz v8, :cond_7

    .line 701
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, "contentEncoding":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v10, "gzip"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 703
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v10

    .line 705
    :cond_2
    invoke-static {v8}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v10

    .line 706
    .local v10, "responseData":[B
    if-eqz v10, :cond_7

    .line 707
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 708
    .local v11, "json":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    .local v12, "responseObj":Lorg/json/JSONObject;
    const-string v13, "body"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 710
    if-eqz v12, :cond_7

    .line 711
    const-string v13, "app_icon"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 712
    .local v12, "appIconObj":Ljava/lang/Object;
    if-eqz v12, :cond_7

    instance-of v13, v12, Lorg/json/JSONObject;

    if-eqz v13, :cond_7

    .line 713
    check-cast v12, Lorg/json/JSONObject;

    .line 714
    .local v12, "appIconJson":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 715
    .local v13, "keys":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 716
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 717
    .local v15, "icons":Lorg/json/JSONArray;
    if-eqz v15, :cond_3

    .line 718
    const/4 v14, 0x0

    .line 719
    .local v14, "index":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v14, v6, :cond_3

    .line 720
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 721
    .local v6, "iconJson":Lorg/json/JSONObject;
    if-eqz v6, :cond_6

    .line 722
    const-string v0, "logo"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "logoUrl":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_6

    move-object v14, v0

    .line 724
    .local v14, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 726
    .end local v0    # "logoUrl":Ljava/lang/String;
    .local v14, "index":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "requestObj":Lorg/json/JSONObject;
    .end local v3    # "requestUrl":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "timeout":I
    .end local v6    # "iconJson":Lorg/json/JSONObject;
    .end local v7    # "os":Ljava/io/OutputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "contentEncoding":Ljava/lang/String;
    .end local v10    # "responseData":[B
    .end local v11    # "json":Ljava/lang/String;
    .end local v12    # "appIconJson":Lorg/json/JSONObject;
    .end local v13    # "keys":Ljava/util/Iterator;
    .end local v14    # "index":I
    .end local v15    # "icons":Lorg/json/JSONArray;
    :cond_7
    const/4 v14, 0x0

    .line 762
    .local v14, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 757
    .end local v14    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 760
    const/4 v14, 0x0

    .restart local v14    # "result":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static getIconDataFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)[B
    .locals 10
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, "data":[B
    if-nez p0, :cond_0

    move-object v4, v3

    .line 536
    .end local v3    # "data":[B
    .local v4, "data":[B
    :goto_0
    return-object v4

    .line 518
    .end local v4    # "data":[B
    .restart local v3    # "data":[B
    :cond_0
    iget-object v8, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 519
    .local v8, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 520
    .local v5, "drawableName":Ljava/lang/String;
    invoke-static {v8, v5}, Lcom/smartisanos/home/net/NetworkHandler;->access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v7

    .line 521
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_1

    move-object v4, v3

    .line 522
    .end local v3    # "data":[B
    .restart local v4    # "data":[B
    goto :goto_0

    .line 524
    .end local v4    # "data":[B
    .restart local v3    # "data":[B
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 526
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    :try_start_0
    new-array v1, v9, [B

    .line 527
    .local v1, "buf":[B
    const/4 v2, -0x1

    .line 528
    .local v2, "count":I
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 529
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 533
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v6

    .line 534
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v3

    .line 536
    .end local v3    # "data":[B
    .restart local v4    # "data":[B
    goto :goto_0

    .line 531
    .end local v4    # "data":[B
    .restart local v1    # "buf":[B
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 532
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method private static getIconInfoFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)[B
    .locals 13
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 540
    iget-object v8, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 541
    .local v8, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 542
    .local v5, "drawableName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 543
    .local v3, "data":[B
    invoke-static {v8, v5}, Lcom/smartisanos/home/net/NetworkHandler;->getInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v7

    .line 544
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_0

    move-object v4, v3

    .line 561
    .end local v3    # "data":[B
    .local v4, "data":[B
    :goto_0
    return-object v4

    .line 548
    .end local v4    # "data":[B
    .restart local v3    # "data":[B
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 550
    .local v1, "buf":[B
    const/4 v2, -0x1

    .line 551
    .local v2, "count":I
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 552
    sget-object v9, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getIconInfoFromServer read byte count --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 558
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v6

    .line 559
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v4, v3

    .line 561
    .end local v3    # "data":[B
    .restart local v4    # "data":[B
    goto :goto_0

    .line 555
    .end local v4    # "data":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 556
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 557
    sget-object v9, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "return data ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getInfoFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .locals 4
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 501
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getIconInfoFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)[B

    move-result-object v0

    .line 502
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 503
    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "getIconInfoFromServer return null, by can\'t get data from server"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v1, 0x0

    .line 506
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->parseData([B)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 6
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 482
    if-nez p0, :cond_1

    .line 483
    sget-object v3, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "getInputStreamByUrl url is null !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v2, 0x0

    .line 497
    :cond_0
    :goto_0
    return-object v2

    .line 486
    :cond_1
    const/4 v2, 0x0

    .line 488
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 489
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 490
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 491
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 492
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_0

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMd5([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 620
    if-nez p0, :cond_0

    .line 621
    const/4 v2, 0x0

    .line 632
    :goto_0
    return-object v2

    .line 624
    :cond_0
    const/4 v2, 0x0

    .line 626
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 627
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 628
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 629
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseData([B)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .locals 14
    .param p0, "data"    # [B

    .prologue
    .line 565
    const/4 v3, 0x0

    .line 566
    .local v3, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz p0, :cond_0

    array-length v10, p0

    if-nez v10, :cond_1

    .line 567
    :cond_0
    sget-object v10, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "A140"

    const-string v12, "parseData by data is empty"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 616
    .end local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .local v4, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :goto_0
    return-object v4

    .line 570
    .end local v4    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 571
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 572
    .local v8, "reader":Ljava/io/InputStreamReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 573
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .end local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-direct {v3}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 574
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    const/4 v6, 0x0

    .line 576
    .local v6, "parseException":Ljava/lang/Exception;
    :try_start_0
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 577
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 578
    .local v9, "type":I
    const/4 v2, 0x0

    .line 579
    .local v2, "handleTag":Ljava/lang/String;
    :goto_1
    const/4 v10, 0x1

    if-eq v9, v10, :cond_a

    .line 580
    if-nez v9, :cond_3

    .line 601
    :cond_2
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_1

    .line 581
    :cond_3
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 582
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "name":Ljava/lang/String;
    const-string v10, "package"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "md5"

    .line 584
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "last_update_time"

    .line 585
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 586
    :cond_4
    move-object v2, v5

    goto :goto_2

    .line 588
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 589
    const/4 v2, 0x0

    goto :goto_2

    .line 590
    :cond_6
    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 591
    if-eqz v2, :cond_2

    .line 592
    const-string v10, "package"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 593
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 605
    .end local v2    # "handleTag":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v1

    .line 612
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    if-eqz v6, :cond_7

    .line 613
    const/4 v3, 0x0

    .line 614
    sget-object v10, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RedirectIconInfo parseData error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v4, v3

    .line 616
    .end local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v4    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    goto/16 :goto_0

    .line 594
    .end local v4    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v2    # "handleTag":Ljava/lang/String;
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v9    # "type":I
    :cond_8
    :try_start_1
    const-string v10, "md5"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 595
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    goto :goto_2

    .line 607
    .end local v2    # "handleTag":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_1
    move-exception v1

    .line 608
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    .line 611
    goto :goto_3

    .line 596
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "handleTag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_9
    const-string v10, "last_update_time"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 597
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->lastUpdateTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 609
    .end local v2    # "handleTag":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_2
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    move-object v6, v1

    goto :goto_3

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "handleTag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 604
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3
.end method
