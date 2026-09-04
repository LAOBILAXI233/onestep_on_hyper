.class public Lcom/sina/weibo/sdk/utils/AidTask;
.super Ljava/lang/Object;
.source "AidTask.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;,
        Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;,
        Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    }
.end annotation


.field private static final AID_FILE_NAME:Ljava/lang/String; = "weibo_sdk_aid"

.field private static final MAX_RETRY_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AidTask"

.field private static final VERSION:I = 0x1

.field public static final WHAT_LOAD_AID_ERR:I = 0x3ea

.field public static final WHAT_LOAD_AID_SUC:I = 0x3e9

.field private static sInstance:Lcom/sina/weibo/sdk/utils/AidTask;


.field private mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

.field private volatile mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/utils/AidTask$1;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/utils/AidTask;I)Ljava/io/File;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mTaskLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/utils/AidTask;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->loadAidFromNet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/utils/AidTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->cacheAidInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    return-void
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/utils/AidTask;)Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mHandler:Lcom/sina/weibo/sdk/utils/AidTask$CallbackHandler;

    return-object v0
.end method

.method private declared-synchronized cacheAidInfo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :cond_1
    const/4 v1, 0x0

    .line 379
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v2

    .line 380
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 384
    if-eqz v0, :cond_0

    .line 386
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 384
    :goto_1
    if-eqz v0, :cond_0

    .line 386
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 387
    :catch_2
    move-exception v0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    .line 384
    :goto_2
    if-eqz v1, :cond_2

    .line 386
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    :cond_2
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 373
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 387
    :catch_3
    move-exception v1

    goto :goto_3

    .line 383
    :catchall_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 382
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 505
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/AidTask;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 506
    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 508
    const/4 v2, 0x0

    .line 509
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 511
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    const/4 v0, 0x0

    .line 514
    :goto_0
    const/16 v2, 0x75

    :try_start_1
    invoke-static {v4, v0, v2}, Lcom/sina/weibo/sdk/utils/AidTask;->splite([BII)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 521
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 522
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 523
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total enBytes len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Base64;->encodebyte([B)[B

    move-result-object v0

    .line 526
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total base64byte len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "01"

    .line 529
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string v2, "AidTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encryptRsa total base64string : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    if-eqz v1, :cond_0

    .line 539
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    :cond_0
    :goto_1
    return-object v0

    .line 515
    :cond_1
    :try_start_3
    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 516
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 517
    const-string v6, "AidTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "encryptRsa offset = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 518
    const-string v8, "     enBytes len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v5, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-static {v6, v5}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    add-int/2addr v0, v2

    goto/16 :goto_0

    .line 536
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 537
    :goto_2
    if-eqz v1, :cond_2

    .line 539
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 543
    :cond_2
    :goto_3
    throw v0

    .line 540
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    .line 536
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static genMfpString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 422
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 424
    :try_start_0
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getOS()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    const-string v2, "1"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    const-string v2, "2"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    :cond_1
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 434
    const-string v2, "3"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    :cond_2
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 438
    const-string v2, "4"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    :cond_3
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 442
    const-string v2, "5"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_4
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 446
    const-string v2, "6"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    :cond_5
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getSerialNo()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 450
    const-string v2, "7"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    :cond_6
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 454
    const-string v2, "10"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    :cond_7
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getCpu()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 458
    const-string v2, "13"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_8
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 462
    const-string v2, "14"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    :cond_9
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getSdSize()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 466
    const-string v2, "15"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_a
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 470
    const-string v2, "16"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    :cond_b
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 474
    const-string v2, "17"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :cond_c
    invoke-static {}, Lcom/sina/weibo/sdk/utils/AidTask;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 478
    const-string v2, "18"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    :cond_d
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 482
    const-string v2, "19"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_e
    const-string v0, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :try_start_1
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/Utility;->generateUAAid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 492
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 493
    const-string v2, "20"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    :cond_f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_1
    return-object v0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 498
    :catch_1
    move-exception v0

    .line 500
    const-string v0, ""

    goto :goto_1
.end method

.method private generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 2

    .prologue
    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$3;

    invoke-direct {v1, p0, p2}, Lcom/sina/weibo/sdk/utils/AidTask$3;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private getAidInfoFile(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weibo_sdk_aid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    return-object v1
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 631
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 635
    :goto_0
    return-object v0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    const-string v0, ""

    goto :goto_0
.end method

.method private static getConnectType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 696
    const-string v1, "none"

    .line 699
    :try_start_0
    const-string v0, "connectivity"

    .line 698
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 700
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 707
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 739
    const-string v0, "none"

    .line 748
    :goto_0
    return-object v0

    .line 716
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 731
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 735
    :pswitch_2
    const-string v0, "4G"

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 743
    const-string v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getCpu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-object v0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    const-string v0, ""

    goto :goto_0
.end method

.method private static getIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    .line 612
    :try_start_0
    const-string v0, "phone"

    .line 611
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 613
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    const-string v0, ""

    goto :goto_0
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    .line 573
    :try_start_0
    const-string v0, "phone"

    .line 572
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 574
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    const-string v0, ""

    goto :goto_0
.end method

.method private static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    .line 591
    :try_start_0
    const-string v0, "phone"

    .line 590
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 592
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/AidTask;
    .locals 2

    .prologue
    .line 168
    const-class v1, Lcom/sina/weibo/sdk/utils/AidTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/sina/weibo/sdk/utils/AidTask;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/utils/AidTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;

    .line 171
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/utils/AidTask;->sInstance:Lcom/sina/weibo/sdk/utils/AidTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    if-nez v0, :cond_0

    .line 601
    const-string v0, ""

    .line 606
    :goto_0
    return-object v0

    .line 603
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    const-string v0, ""

    goto :goto_0
.end method

.method private static getMeid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    .line 582
    :try_start_0
    const-string v0, "phone"

    .line 581
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 583
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v0, ""

    goto :goto_0
.end method

.method private static getMfp(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 400
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    .line 404
    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->genMfpString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v1, ""

    .line 407
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "genMfpString() utf-8 string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :try_start_1
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->encryptRsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encryptRsa() string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_1
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    .line 416
    const-string v1, "AidTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, ""

    goto :goto_1
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-object v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-string v0, ""

    goto :goto_0
.end method

.method private static getOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Base64;->decode([B)[B

    move-result-object v0

    .line 557
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 558
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 559
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 665
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 667
    const-string v0, "window"

    .line 666
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 668
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    const-string v0, ""

    goto :goto_0
.end method

.method private static getSdSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 654
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 655
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 657
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 658
    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 660
    :goto_0
    return-object v0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    const-string v0, ""

    goto :goto_0
.end method

.method private static getSerialNo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 619
    const-string v1, ""

    .line 621
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 622
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 623
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-object v0

    .line 624
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static getSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    .line 679
    :try_start_0
    const-string v0, "wifi"

    .line 678
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 680
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initAidInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/utils/AidTask$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/utils/AidTask$2;-><init>(Lcom/sina/weibo/sdk/utils/AidTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private loadAidFromNet()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v0, "https://api.weibo.com/oauth2/getaid.json"

    .line 348
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sina/weibo/sdk/utils/AidTask;->getMfp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 352
    new-instance v3, Lcom/sina/weibo/sdk/net/WeiboParameters;

    iget-object v4, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    .line 353
    const-string v4, "appkey"

    iget-object v5, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "mfp"

    invoke-virtual {v3, v4, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v2, "packagename"

    invoke-virtual {v3, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "key_hash"

    invoke-virtual {v3, v0, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mContext:Landroid/content/Context;

    const-string v1, "https://api.weibo.com/oauth2/getaid.json"

    const-string v2, "GET"

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v1, "AidTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAidFromNet WeiboException Msg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    throw v0
.end method

.method private declared-synchronized loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 306
    monitor-enter p0

    .line 308
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sina/weibo/sdk/utils/AidTask;->getAidInfoFile(I)Ljava/io/File;

    move-result-object v2

    .line 309
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 311
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 312
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->parseJson(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 315
    if-eqz v1, :cond_0

    .line 317
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 313
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 315
    :goto_1
    if-eqz v1, :cond_0

    .line 317
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 318
    :catch_1
    move-exception v1

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 315
    :goto_2
    if-eqz v1, :cond_1

    .line 317
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 318
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 314
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 313
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private static splite([BII)I
    .locals 1

    .prologue
    .line 547
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 548
    const/4 v0, -0x1

    .line 551
    :goto_0
    return v0

    .line 550
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 551
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


.method public aidTaskInit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "AidTask"

    const-string v1, "aidTaskInit "

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->initAidInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAidAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V
    .locals 1

    .prologue
    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 249
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->cloneAidInfo()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;->onAidGenSuccessed(Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/utils/AidTask;->generateAid(Ljava/lang/String;Lcom/sina/weibo/sdk/utils/AidTask$AidResultCallBack;)V

    goto :goto_0
.end method

.method public getAidSync(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v0, "AidTask"

    const-string v1, "getAidSync "

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/utils/AidTask;->aidTaskInit(Ljava/lang/String;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask;->mAidInfo:Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    goto :goto_0
.end method

.method public declared-synchronized loadAidFromCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/utils/AidTask;->loadAidInfoFromCache()Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :goto_0
    monitor-exit p0

    return-object v0

    .line 330
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/utils/AidTask$AidInfo;->getAid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
