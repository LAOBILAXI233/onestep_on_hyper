.class public Lcom/smartisan/trackerlib/task/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


.field private static final MAX_UPLOAD_ITEMS:I = 0x96

.field private static final POST_URL:Ljava/lang/String; = "https://dc.smartisan.com/v1/tracker/app"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.smartisan.LibTracker"

.field private static final UID:Ljava/lang/String; = "track_uid"

.field private static final UID_URL:Ljava/lang/String; = "https://dc.smartisan.com/v1/tracker/android_uid"

.field private static mFiveUploadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUid:Ljava/lang/String;

.field private static mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;


.field private isSuperFive:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mTimeIndex:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    .line 55
    return-void
.end method

.method private convertDB2Transport(II)Ljava/util/List;
    .locals 19
    .param p1, "wifiType"    # I
    .param p2, "maxItems"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    const/16 v18, 0x0

    .line 360
    :goto_0
    return-object v18

    .line 339
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifionly <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "where":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisan/trackerlib/db/TrackerProvider;->query(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 343
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    :cond_1
    const-string v2, "eventid"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "eventid":Ljava/lang/String;
    const-string v2, "time_stamp"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 347
    .local v10, "time":J
    const-string v2, "eventdata"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "eventdata":Ljava/lang/String;
    const-string v2, "wifionly"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 349
    .local v17, "iswifi":I
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 350
    .local v16, "id":I
    const-string v2, "upload_time"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 351
    .local v13, "uploadtime":I
    new-instance v7, Lcom/smartisan/trackerlib/TransportEntity;

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-direct/range {v7 .. v13}, Lcom/smartisan/trackerlib/TransportEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZI)V

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move/from16 v0, p2

    if-lt v2, v0, :cond_1

    .line 358
    .end local v8    # "eventid":Ljava/lang/String;
    .end local v9    # "eventdata":Ljava/lang/String;
    .end local v10    # "time":J
    .end local v13    # "uploadtime":I
    .end local v16    # "id":I
    .end local v17    # "iswifi":I
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 340
    .end local v5    # "where":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_3
    const-string v2, "0"

    goto/16 :goto_1

    .line 351
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v8    # "eventid":Ljava/lang/String;
    .restart local v9    # "eventdata":Ljava/lang/String;
    .restart local v10    # "time":J
    .restart local v13    # "uploadtime":I
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v16    # "id":I
    .restart local v17    # "iswifi":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 355
    .end local v8    # "eventid":Ljava/lang/String;
    .end local v9    # "eventdata":Ljava/lang/String;
    .end local v10    # "time":J
    .end local v13    # "uploadtime":I
    .end local v16    # "id":I
    .end local v17    # "iswifi":I
    :catch_0
    move-exception v15

    .line 356
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private dealResult(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    const/16 v10, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 282
    const/4 v5, 0x0

    .line 284
    .local v5, "success":Z
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "code":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v6, "time":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    move v5, v7

    .line 288
    :goto_0
    if-ne v0, v10, :cond_2

    .line 289
    sget-object v7, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    .line 310
    .end local v0    # "code":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "time":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return v5

    .restart local v0    # "code":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "time":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move v5, v8

    .line 287
    goto :goto_0

    .line 291
    :cond_2
    if-nez v0, :cond_0

    .line 292
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 293
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 294
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 295
    .local v2, "js":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x190

    if-ne v7, v8, :cond_4

    .line 296
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisan/trackerlib/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 293
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :cond_4
    const-string v7, "code"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 298
    const-string v7, "timestamp"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    .end local v0    # "code":I
    .end local v1    # "i":I
    .end local v2    # "js":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "time":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    goto :goto_1

    .line 301
    .restart local v0    # "code":I
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "time":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v7, Lcom/smartisan/trackerlib/task/UploadTask;->mTimeIndex:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x32

    if-le v7, v8, :cond_6

    .line 303
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    goto :goto_1

    .line 305
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private getEntities(Ljava/util/List;)[Lcom/smartisan/trackerlib/TransportEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;)[",
            "Lcom/smartisan/trackerlib/TransportEntity;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/smartisan/trackerlib/TransportEntity;

    .line 159
    .local v0, "ts":[Lcom/smartisan/trackerlib/TransportEntity;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/smartisan/trackerlib/task/UploadTask;
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/smartisan/trackerlib/task/UploadTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/task/UploadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    .line 49
    :cond_0
    new-instance v0, Lcom/smartisan/trackerlib/task/UploadTask;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/task/UploadTask;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    .line 51
    :cond_1
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUid()Ljava/lang/String;
    .locals 13

    .prologue
    .line 375
    const-string v9, ""

    .line 376
    .local v9, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 377
    .local v2, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    .line 379
    .local v4, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    const-string v11, "https://dc.smartisan.com/v1/tracker/android_uid"

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 380
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 381
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 382
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 383
    const-string v11, "POST"

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 384
    const/16 v11, 0x2710

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 385
    const/16 v11, 0x2710

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 386
    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 388
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 391
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .local v5, "out":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/smartisan/trackerlib/task/UploadTask;->getUidParama()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 393
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 394
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 395
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    .line 396
    .local v8, "responseCode":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get uid code   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 397
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_0

    .line 398
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/smartisan/trackerlib/task/UploadTask;->readAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "response":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get uid response   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 400
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    .local v6, "rJson":Lorg/json/JSONObject;
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 402
    .local v1, "code":I
    if-nez v1, :cond_0

    .line 403
    const-string v11, "data"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 409
    .end local v1    # "code":I
    .end local v6    # "rJson":Lorg/json/JSONObject;
    .end local v7    # "response":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_3

    .line 410
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v4, v5

    .line 413
    .end local v5    # "out":Ljava/io/DataOutputStream;
    .end local v8    # "responseCode":I
    .end local v10    # "url":Ljava/net/URL;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_0
    return-object v9

    .line 406
    :catch_0
    move-exception v3

    .line 407
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connection is error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_0

    .line 409
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    throw v11

    .line 409
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 406
    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v4    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v8    # "responseCode":I
    :cond_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private getUidParama()Ljava/lang/String;
    .locals 7

    .prologue
    .line 417
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "imei":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "mac":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getMarkId()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "markid":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "androidid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imei="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mark_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 428
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get uid param   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 429
    return-object v4
.end method

.method public static readAsBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 325
    .local v1, "buf":[B
    const/4 v3, -0x1

    .line 326
    .local v3, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 330
    .local v2, "data":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 331
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 332
    return-object v2
.end method

.method private readAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p1}, Lcom/smartisan/trackerlib/task/UploadTask;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 314
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 315
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveFiveData(Ljava/util/List;I)V
    .locals 6
    .param p2, "wifitype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisan/trackerlib/TransportEntity;

    .line 218
    .local v1, "ts":Lcom/smartisan/trackerlib/TransportEntity;
    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mTimeIndex:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/TransportEntity;->getmTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v1    # "ts":Lcom/smartisan/trackerlib/TransportEntity;
    :cond_3
    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x96

    if-le v2, v3, :cond_4

    .line 223
    invoke-direct {p0, p2}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadFiveData(I)V

    .line 225
    :cond_4
    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mTimeIndex:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private uploadData(Ljava/util/List;I)Z
    .locals 16
    .param p2, "wifitype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisan/trackerlib/utils/CommonUtil;->isConnected(Landroid/content/Context;)I

    move-result v14

    move/from16 v0, p2

    if-eq v14, v0, :cond_1

    .line 230
    const/4 v5, 0x0

    .line 278
    :cond_0
    :goto_0
    return v5

    .line 232
    :cond_1
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/smartisan/trackerlib/task/UploadTask;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "uid":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 234
    const/4 v5, 0x0

    goto :goto_0

    .line 236
    :cond_2
    const/4 v5, 0x0

    .line 237
    .local v5, "isSuccess":Z
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 238
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisan/trackerlib/TransportEntity;

    .line 239
    .local v11, "te":Lcom/smartisan/trackerlib/TransportEntity;
    invoke-virtual {v11, v12}, Lcom/smartisan/trackerlib/TransportEntity;->setmUid(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v11}, Lcom/smartisan/trackerlib/TransportEntity;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v6, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 242
    .end local v11    # "te":Lcom/smartisan/trackerlib/TransportEntity;
    :cond_3
    const/4 v1, 0x0

    .line 243
    .local v1, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v7, 0x0

    .line 245
    .local v7, "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://dc.smartisan.com/v1/tracker/app"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 247
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 248
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 249
    const-string v14, "POST"

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 250
    const/16 v14, 0x2710

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 251
    const/16 v14, 0x2710

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 252
    const-string v14, "Content-Type"

    const-string v15, "application/json;charset=UTF-8"

    invoke-virtual {v1, v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v14, "Content-Encoding"

    const-string v15, "application/gzip"

    invoke-virtual {v1, v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 255
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 258
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    .local v8, "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 260
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 261
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 262
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9

    .line 263
    .local v9, "responseCode":I
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_4

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v3, "fData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/smartisan/trackerlib/task/UploadTask;->readAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "result":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadtask  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/smartisan/trackerlib/task/UploadTask;->dealResult(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    const/4 v5, 0x1

    .line 274
    .end local v3    # "fData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    .end local v10    # "result":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_6

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v7, v8

    .end local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_0

    .line 271
    .end local v9    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "connection is error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisan/trackerlib/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v1, :cond_5

    .line 275
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    throw v14

    .line 274
    .end local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 271
    .end local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .end local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "responseCode":I
    :cond_6
    move-object v7, v8

    .end local v8    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "out":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_0
.end method

.method private uploadDatabase(Ljava/util/List;I)V
    .locals 10
    .param p2, "wifitype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "db":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, "sData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    if-eqz p1, :cond_1

    .line 167
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time_stamp <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, -0x7

    invoke-static {v6, v8, v8, v8}, Lcom/smartisan/trackerlib/utils/CommonUtil;->getTimeStampSecond(IIII)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "deleteString":Ljava/lang/String;
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v2, v6}, Lcom/smartisan/trackerlib/db/TrackerProvider;->delete(ILjava/lang/String;[Ljava/lang/String;)I

    .line 174
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rsub-int v3, v5, 0x96

    .line 175
    .local v3, "maxItems":I
    invoke-direct {p0, p2, v3}, Lcom/smartisan/trackerlib/task/UploadTask;->convertDB2Transport(II)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v9, :cond_0

    iget-boolean v5, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    if-eqz v5, :cond_2

    .line 178
    :cond_0
    iput-boolean v8, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    .line 199
    :goto_2
    return-void

    .line 169
    .end local v2    # "deleteString":Ljava/lang/String;
    .end local v3    # "maxItems":I
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .restart local p1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    goto :goto_0

    .line 181
    .restart local v2    # "deleteString":Ljava/lang/String;
    .restart local v3    # "maxItems":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadData(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 183
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/smartisan/trackerlib/task/UploadTask;->getEntities(Ljava/util/List;)[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/smartisan/trackerlib/db/TrackerProvider;->insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z

    .line 185
    :cond_3
    sget-object v5, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 188
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/task/UploadTask;->saveFiveData(Ljava/util/List;I)V

    .line 190
    sget-object v5, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 191
    sget-object v5, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 192
    .local v1, "delete":[Ljava/lang/String;
    sget-object v5, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v5

    invoke-virtual {v5, v9, v1}, Lcom/smartisan/trackerlib/db/TrackerProvider;->deleteMultiIDs(I[Ljava/lang/String;)V

    .line 194
    sget-object v5, Lcom/smartisan/trackerlib/task/UploadTask;->mIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 196
    .end local v1    # "delete":[Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method private uploadFiveData(I)V
    .locals 6
    .param p1, "wifitype"    # I

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "time":I
    const/4 v1, 0x0

    .line 135
    .local v1, "num":I
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    :cond_0
    :goto_0
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 138
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    mul-int/lit16 v4, v1, 0x3e8

    add-int/2addr v3, v4

    .line 142
    invoke-direct {p0, v2, p1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadData(Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_3

    .line 152
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    :cond_1
    :goto_1
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 153
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 155
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    .line 156
    return-void

    .line 145
    .restart local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    :cond_3
    :try_start_1
    sget-object v4, Lcom/smartisan/trackerlib/task/UploadTask;->mFiveUploadData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 146
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private uploadOrInsertData(Ljava/util/List;I)Z
    .locals 3
    .param p2, "wifitype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/trackerlib/TransportEntity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadData(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/smartisan/trackerlib/task/UploadTask;->getEntities(Ljava/util/List;)[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/smartisan/trackerlib/db/TrackerProvider;->insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z

    .line 204
    const/4 v0, 0x0

    .line 210
    .local v0, "result":Z
    :goto_0
    return v0

    .line 206
    .end local v0    # "result":Z
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/task/UploadTask;->saveFiveData(Ljava/util/List;I)V

    .line 207
    iget-boolean v2, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    if-nez v2, :cond_1

    .line 208
    .restart local v0    # "result":Z
    :goto_1
    iput-boolean v1, p0, Lcom/smartisan/trackerlib/task/UploadTask;->isSuperFive:Z

    goto :goto_0

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 207
    goto :goto_1
.end method


.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/trackerlib/task/UploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 77
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v12, "listWifi":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v11, "listMob":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/trackerlib/TransportEntity;>;"
    const/4 v5, 0x0

    check-cast v5, [[Lcom/smartisan/trackerlib/TransportEntity;

    .line 80
    .local v5, "data":[[Lcom/smartisan/trackerlib/TransportEntity;
    const/4 v8, 0x1

    .line 81
    .local v8, "isExecute":Z
    :goto_0
    if-eqz v8, :cond_7

    .line 82
    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 84
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/smartisan/trackerlib/utils/CommonUtil;->isConnected(Landroid/content/Context;)I

    move-result v13

    .line 85
    .local v13, "net":I
    :cond_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisan/trackerlib/task/UploadTask;->saveOrGetData(I[Lcom/smartisan/trackerlib/TransportEntity;)[[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 86
    move-object v3, v5

    .local v3, "arr$":[[Lcom/smartisan/trackerlib/TransportEntity;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v3    # "arr$":[[Lcom/smartisan/trackerlib/TransportEntity;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v15, v3, v7

    .line 87
    .local v15, "trandata":[Lcom/smartisan/trackerlib/TransportEntity;
    move-object v4, v15

    .local v4, "arr$":[Lcom/smartisan/trackerlib/TransportEntity;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v10, :cond_2

    aget-object v14, v4, v6

    .line 88
    .local v14, "te":Lcom/smartisan/trackerlib/TransportEntity;
    invoke-virtual {v14}, Lcom/smartisan/trackerlib/TransportEntity;->getmIsWifiOnly()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 89
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 91
    :cond_1
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 86
    .end local v14    # "te":Lcom/smartisan/trackerlib/TransportEntity;
    :cond_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_1

    .line 96
    .end local v4    # "arr$":[Lcom/smartisan/trackerlib/TransportEntity;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v15    # "trandata":[Lcom/smartisan/trackerlib/TransportEntity;
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_4

    .line 97
    const/4 v8, 0x0

    .line 99
    :cond_4
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/smartisan/trackerlib/utils/CommonUtil;->isConnected(Landroid/content/Context;)I

    move-result v13

    .line 100
    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-interface {v12, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisan/trackerlib/task/UploadTask;->getEntities(Ljava/util/List;)[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/smartisan/trackerlib/db/TrackerProvider;->insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z

    goto :goto_0

    .line 106
    :pswitch_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadOrInsertData(Ljava/util/List;I)Z

    .line 107
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisan/trackerlib/task/UploadTask;->getEntities(Ljava/util/List;)[Lcom/smartisan/trackerlib/TransportEntity;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/smartisan/trackerlib/db/TrackerProvider;->insert(I[Lcom/smartisan/trackerlib/TransportEntity;)Z

    .line 108
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadFiveData(I)V

    goto/16 :goto_0

    .line 111
    :pswitch_2
    invoke-interface {v12, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    const/16 v16, 0x1

    .line 113
    .local v16, "wifi":Z
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x96

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 114
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadOrInsertData(Ljava/util/List;I)Z

    move-result v16

    .line 115
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 117
    :cond_5
    if-eqz v16, :cond_6

    .line 118
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadDatabase(Ljava/util/List;I)V

    .line 120
    :cond_6
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->uploadFiveData(I)V

    goto/16 :goto_0

    .line 126
    .end local v13    # "net":I
    .end local v16    # "wifi":Z
    :cond_7
    invoke-static {}, Lcom/smartisan/trackerlib/db/TrackerProvider;->getInstance()Lcom/smartisan/trackerlib/db/TrackerProvider;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisan/trackerlib/db/TrackerProvider;->closeDatabase()V

    .line 127
    const/16 v17, 0x0

    sput-object v17, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    .line 128
    const/16 v17, 0x0

    return-object v17

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public executeTask()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    invoke-virtual {v0}, Lcom/smartisan/trackerlib/task/UploadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 59
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUploadTask:Lcom/smartisan/trackerlib/task/UploadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/smartisan/trackerlib/task/UploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :cond_0
    return-void
.end method

.method public getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    .line 372
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v0

    const-string v1, "track_uid"

    const-string v2, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    .line 368
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/smartisan/trackerlib/task/UploadTask;->getUid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    .line 370
    invoke-static {}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    move-result-object v0

    const-string v1, "track_uid"

    sget-object v2, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    const-string v3, "com.smartisan.LibTracker"

    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisan/trackerlib/Agent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 372
    :cond_1
    sget-object v0, Lcom/smartisan/trackerlib/task/UploadTask;->mUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized saveOrGetData(I[Lcom/smartisan/trackerlib/TransportEntity;)[[Lcom/smartisan/trackerlib/TransportEntity;
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # [Lcom/smartisan/trackerlib/TransportEntity;

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [[Lcom/smartisan/trackerlib/TransportEntity;

    .line 64
    .local v0, "result":[[Lcom/smartisan/trackerlib/TransportEntity;
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 65
    sget-object v1, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {}, Lcom/smartisan/trackerlib/task/UploadTask;->getInstance()Lcom/smartisan/trackerlib/task/UploadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/task/UploadTask;->executeTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 67
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    sget-object v1, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [[Lcom/smartisan/trackerlib/TransportEntity;

    .line 69
    sget-object v1, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/smartisan/trackerlib/task/UploadTask;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "result":[[Lcom/smartisan/trackerlib/TransportEntity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
