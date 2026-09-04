.class public Lcom/loc/ci;
.super Ljava/lang/Object;
.source "Cache.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ci$a;
    }
.end annotation


.field private static a:Lcom/loc/ci;


.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ci$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z


.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/ci;->a:Lcom/loc/ci;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ci;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ci;->d:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/ci$a;
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    :goto_1
    if-ltz v7, :cond_e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/loc/ci$a;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/loc/ci$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    add-int/lit8 v3, v7, -0x1

    move v7, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/loc/ci$a;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/loc/ci;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v3, 0x1

    invoke-virtual {v4}, Lcom/loc/ci$a;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/loc/ci;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v3

    :goto_2
    invoke-virtual {v4}, Lcom/loc/ci$a;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v13, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    move-object v2, v4

    :goto_4
    :try_start_2
    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v13, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-virtual {v13}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    new-array v15, v3, [D

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    new-array v0, v3, [D

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v10, v3

    :goto_6
    if-eqz v17, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_7
    aput-wide v8, v15, v10

    invoke-virtual {v12, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_8
    aput-wide v8, v16, v10

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_6

    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_7

    :cond_9
    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/loc/ci;->a([D[D)[D

    move-result-object v3

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const-wide v14, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v8, v8, v14

    if-ltz v8, :cond_b

    move-object v2, v4

    goto/16 :goto_4

    :cond_b
    const/4 v8, 0x1

    aget-wide v8, v3, v8

    const-wide v14, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v8, v8, v14

    if-ltz v8, :cond_c

    move-object v2, v4

    goto/16 :goto_4

    :cond_c
    if-eqz v6, :cond_3

    const/4 v6, 0x0

    aget-wide v8, v3, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v14, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v3, v8, v14

    if-ltz v3, :cond_3

    move-object v2, v4

    goto/16 :goto_4

    :cond_d
    move v6, v3

    goto/16 :goto_2

    :cond_e
    move-object v2, v5

    goto/16 :goto_4
.end method

.method public static declared-synchronized a()Lcom/loc/ci;
    .locals 2

    const-class v1, Lcom/loc/ci;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/ci;->a:Lcom/loc/ci;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ci;

    invoke-direct {v0}, Lcom/loc/ci;-><init>()V

    sput-object v0, Lcom/loc/ci;->a:Lcom/loc/ci;

    :cond_0
    sget-object v0, Lcom/loc/ci;->a:Lcom/loc/ci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->clear()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a([D[D)[D
    .locals 14

    const/4 v0, 0x3

    new-array v3, v0, [D

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v10, p1

    if-ge v0, v10, :cond_1

    aget-wide v10, p1, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    aget-wide v10, p2, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    aget-wide v10, p1, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p2, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, p1, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    aput-wide v4, v3, v0

    const/4 v0, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    const/4 v0, 0x2

    int-to-double v4, v1

    aput-wide v4, v3, v0

    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    aget-wide v4, v3, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    :cond_2
    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "#.00"

    invoke-static {v1, v2}, Lcom/loc/cw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private c(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ",access"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v1

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, v0, v1

    aget-object v0, v0, v1

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    aget-object v0, v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",access"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/ci;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/ci;->c()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "found#\u2297"

    const-string v0, "cgiwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p1}, Lcom/loc/ci;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/ci$a;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "found#cgiwifi"

    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/loc/ci$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/loc/ci$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    const-string v2, "mem"

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/loc/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/loc/ci$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/loc/e;->g:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Lcom/loc/ci$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p2, p1}, Lcom/loc/ci;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/ci$a;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "found#wifi"

    goto :goto_1

    :cond_6
    const-string v0, "cgi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ci$a;

    :goto_2
    if-eqz v0, :cond_3

    const-string v2, "found#cgi"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/loc/ci;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/loc/cw;->b()J

    :try_start_0
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/cj;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ci;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cache"

    const-string v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/loc/ci;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/loc/ci;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/loc/ci;->c()V

    :cond_2
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "offpct"

    invoke-static {v1, v2}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "offpct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Lorg/json/JSONObject;)V

    :cond_3
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :cond_6
    const-string v0, "cgiwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cgiwifi"

    const-string v1, "cgi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ci;->c:J

    new-instance v1, Lcom/loc/ci$a;

    invoke-direct {v1, p0}, Lcom/loc/ci$a;-><init>(Lcom/loc/ci;)V

    invoke-virtual {v1, p3}, Lcom/loc/ci$a;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/loc/ci$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz p5, :cond_0

    :try_start_2
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/loc/cj;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Cache"

    const-string v2, "add"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    :try_start_4
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    goto/16 :goto_0

    :cond_a
    const-string v0, "cgi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/ci;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/ci;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/16 v5, 0x168

    if-le v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x2255100

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8

    const/4 v1, 0x0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    const-string v5, ",nb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    const-string v5, ",access"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    aget-object v6, v5, v0

    const-string v7, ",nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, v5, v0

    const-string v7, ",access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ci;->c:J

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ci;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ci;->d:Z

    return-void
.end method
