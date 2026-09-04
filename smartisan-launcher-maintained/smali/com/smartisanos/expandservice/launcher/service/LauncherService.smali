.class public Lcom/smartisanos/expandservice/launcher/service/LauncherService;
.super Landroid/app/IntentService;
.source "LauncherService.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    }
.end annotation


.field private static final CATEGORY_SYNC_URI:Ljava/lang/String; = "http://api-app.smartisan.com/api/v1_4/getcidbypkg/"

.field private static DAY:J = 0x0L

.field private static HOUR:J = 0x0L

.field public static final LOST_SYNC_TYPE:Ljava/lang/String; = "-1000"

.field private static final PREDEFINED_CATEGORY_DATA_JSON:Ljava/lang/String; = "apps_category.json"

.field private static final PREDEFINED_CATEGORY_NAME_JSON:Ljava/lang/String; = "category_name_list_json.json"

.field private static final THREAD_NAME:Ljava/lang/String; = "LauncherService"

.field private static WEEK:J

.field public static final handler:Landroid/os/Handler;

.field private static lastChangTime:J

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LauncherService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->sWorkerThread:Landroid/os/HandlerThread;

    .line 39
    sget-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->HOUR:J

    .line 84
    const-wide/16 v0, 0x18

    sget-wide v2, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->HOUR:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->DAY:J

    .line 85
    const-wide/16 v0, 0x7

    sget-wide v2, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->DAY:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->WEEK:J

    .line 86
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->lastChangTime:J

    .line 104
    new-instance v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$1;

    sget-object v1, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "LauncherService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 447
    if-nez p0, :cond_0

    .line 448
    const/4 v1, 0x0

    .line 454
    :goto_0
    return-object v1

    .line 450
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 451
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 452
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    const/4 p0, 0x0

    .line 454
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handleAction(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private static handleAction(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "action"    # Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 179
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$2;->$SwitchMap$com$smartisanos$expandservice$launcher$service$LauncherService$Task:[I

    invoke-virtual {p0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-static {p1, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handle_INIT_CATEGORY_DATA(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-static {p1, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handle_INIT_CATEGORY_PREDEFINED_DATA(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-static {p1, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handle_SYNC_APP_CATEGORY_BY_PACKAGE(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 167
    :pswitch_4
    invoke-static {p1, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handle_SYNC_APP_CATEGORY_FOR_ALL(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static handle_INIT_CATEGORY_DATA(Landroid/content/Context;Ljava/util/List;)V
    .locals 38
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Ljava/util/List;

    .prologue
    .line 185
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "step 1"

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 187
    .local v20, "time1":J
    const-string v33, "category_name_list_json.json"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->readAssetsResource(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 188
    .local v9, "data":[B
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 189
    :cond_0
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "handle_INIT_CATEGORY_DATA return by open PREDEFINED_CATEGORY_NAME_JSON failed"

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {v9}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->parseCategoryNames([B)Ljava/util/List;

    move-result-object v6

    .line 193
    .local v6, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_2

    .line 194
    invoke-static {v6}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateCategoryNames(Ljava/util/List;)Z

    .line 196
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 197
    .local v22, "time2":J
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "step 2 ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v22, v20

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 199
    const-string v33, "apps_category.json"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->readAssetsResource(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 200
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v33, v0

    if-nez v33, :cond_4

    .line 201
    :cond_3
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "handle_INIT_CATEGORY_DATA return by open PREDEFINED_CATEGORY_DATA_JSON failed"

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 205
    .local v24, "time3":J
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "step 3 ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v24, v22

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 206
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v4, "categoryDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v16, "object":Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 210
    .local v13, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 211
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 212
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 213
    .local v32, "value":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-interface {v4, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    .end local v13    # "iterator":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "object":Lorg/json/JSONObject;
    .end local v32    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 216
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 219
    .local v26, "time4":J
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "step 4 ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v26, v24

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 220
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/Utils;->listInstalledPackage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 221
    .local v12, "installedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    .line 222
    .local v19, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 223
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 224
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 226
    .local v5, "categoryId":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 227
    const-string v5, "-1000"

    .line 229
    :cond_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v33, "pkg"

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v33, "category_id"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v33, "sync_time"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    invoke-static {v7}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateAppCategory(Landroid/content/ContentValues;)V

    .line 222
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 235
    .end local v5    # "categoryId":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 236
    .local v28, "time5":J
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "step 5 ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v28, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v8, "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v15, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_8
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 240
    .restart local v14    # "key":Ljava/lang/String;
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 241
    .restart local v32    # "value":Ljava/lang/String;
    if-eqz v14, :cond_8

    if-eqz v32, :cond_8

    .line 244
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v34, "pkg"

    move-object/from16 v0, v34

    invoke-virtual {v7, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v34, "category_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 249
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v14    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 250
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v17, "parameters":Ljava/util/List;
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_PREDEFINED_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->send(Landroid/content/Context;Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Ljava/util/List;)V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 254
    .local v30, "time6":J
    sget-object v33, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "step 6 ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v30, v28

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handle_INIT_CATEGORY_PREDEFINED_DATA(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Ljava/util/List;

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    if-nez v1, :cond_0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .restart local v1    # "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 268
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 274
    :goto_1
    return-void

    .line 261
    .end local v3    # "size":I
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "size":I
    :cond_1
    sget-object v4, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle_INIT_CATEGORY_PREDEFINED_DATA size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 272
    invoke-static {v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->initPredefinedCategoryData(Ljava/util/List;)V

    .line 273
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method private static handle_SYNC_APP_CATEGORY_BY_PACKAGE(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Ljava/util/List;

    .prologue
    .line 326
    const/4 v5, 0x0

    .line 328
    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    if-nez v5, :cond_1

    .line 345
    :cond_0
    :goto_1
    return-void

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v5, p0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->syncCategoryFromServer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "categoryId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 339
    sget-object v6, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handle_SYNC_APP_CATEGORY_BY_PACKAGE ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 340
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v6, "pkg"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v6, "category_id"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v6, "sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    invoke-static {v3}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateAppCategory(Landroid/content/ContentValues;)V

    goto :goto_1
.end method

.method private static handle_SYNC_APP_CATEGORY_FOR_ALL(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Ljava/util/List;

    .prologue
    .line 348
    invoke-static {p0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->verifyEnv(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 349
    sget-object v6, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "handle_SYNC_APP_CATEGORY_FOR_ALL return by env err"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void

    .line 352
    :cond_1
    const-string v5, "category_id=\'-1000\'"

    .line 353
    .local v5, "where":Ljava/lang/String;
    invoke-static {v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->listAppCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 354
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;

    .line 358
    .local v2, "info":Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;
    if-eqz v2, :cond_2

    .line 361
    iget-object v4, v2, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;->packageName:Ljava/lang/String;

    .line 362
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {v4, p0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->syncCategoryFromServer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "categoryId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 366
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "pkg"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v7, "category_id"

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v7, "sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    invoke-static {v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateAppCategory(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public static send(Landroid/content/Context;Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->sendMsg(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public static send(Landroid/content/Context;Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Ljava/util/List;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 62
    invoke-static {p1, p0, p2}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->sendMsg(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method private static sendMsg(Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "type"    # Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/List;

    .prologue
    .line 66
    sget-object v2, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object p1

    .line 70
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "objs":Ljava/util/List;
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    sget-object v2, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method private static syncCategoryFromServer(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "categoryId":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 322
    .end local v0    # "categoryId":Ljava/lang/String;
    .local v1, "categoryId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 301
    .end local v1    # "categoryId":Ljava/lang/String;
    .restart local v0    # "categoryId":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->verifyEnv(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v1, v0

    .line 302
    .end local v0    # "categoryId":Ljava/lang/String;
    .restart local v1    # "categoryId":Ljava/lang/String;
    goto :goto_0

    .line 304
    .end local v1    # "categoryId":Ljava/lang/String;
    .restart local v0    # "categoryId":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://api-app.smartisan.com/api/v1_4/getcidbypkg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "request":Ljava/lang/String;
    invoke-static {v6}, Lcom/smartisanos/launcher/data/Utils;->httpRequest(Ljava/lang/String;)[B

    move-result-object v3

    .line 306
    .local v3, "data":[B
    if-nez v3, :cond_2

    move-object v1, v0

    .line 307
    .end local v0    # "categoryId":Ljava/lang/String;
    .restart local v1    # "categoryId":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v1    # "categoryId":Ljava/lang/String;
    .restart local v0    # "categoryId":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v5, "object":Lorg/json/JSONObject;
    const-string v7, "body"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    const-string v7, "body"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 313
    .local v2, "categoryJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 314
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 315
    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2    # "categoryJson":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    move-object v1, v0

    .line 322
    .end local v0    # "categoryId":Ljava/lang/String;
    .restart local v1    # "categoryId":Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v1    # "categoryId":Ljava/lang/String;
    .restart local v0    # "categoryId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static verifyEnv(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    .line 282
    .local v0, "isNetConnected":Z
    if-nez v0, :cond_0

    .line 283
    sget-object v3, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "verifyEnv return, net is closed"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return v2

    .line 287
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->isWifiConnected()Z

    move-result v1

    .line 288
    .local v1, "isWifiConnected":Z
    if-nez v1, :cond_1

    .line 289
    sget-object v3, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "verifyEnv return, wifi is closed"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    return-void
.end method
