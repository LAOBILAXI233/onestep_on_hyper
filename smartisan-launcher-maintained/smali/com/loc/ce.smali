.class public Lcom/loc/ce;
.super Ljava/lang/Object;
.source "CgiManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ce$a;
    }
.end annotation


.field a:Landroid/os/Looper;

.field b:Lcom/loc/ce$a;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/cd;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/telephony/TelephonyManager;

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:Lorg/json/JSONObject;

.field private k:Landroid/telephony/PhoneStateListener;

.field private l:Landroid/telephony/CellLocation;

.field private m:Z

.field private n:Ljava/lang/Object;


.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/loc/ce;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/ce;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ce;->i:J

    iput-object v2, p0, Lcom/loc/ce;->a:Landroid/os/Looper;

    iput-object v2, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ce;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/Object;

    if-nez p1, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/loc/ce;->p()V

    const-string v0, "phone"

    invoke-static {p1, v0}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/loc/ce;->j:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/loc/cw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/loc/ce;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/ce$a;

    invoke-direct {v0, p0}, Lcom/loc/ce$a;-><init>(Lcom/loc/ce;)V

    iput-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    iget-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    const-string v1, "listener"

    invoke-virtual {v0, v1}, Lcom/loc/ce$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    invoke-virtual {v0}, Lcom/loc/ce$a;->start()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/loc/ce;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ce;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_10

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v3, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    if-lez v7, :cond_f

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-ne v7, v11, :cond_9

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    :goto_4
    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_c

    move v0, v7

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    const/4 v7, 0x4

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x2

    if-ne v7, v3, :cond_a

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_b
    const/4 v3, 0x4

    if-ne v7, v3, :cond_4

    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x4

    if-ne v7, v0, :cond_d

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v6

    :goto_5
    const/4 v2, 0x4

    if-eq v7, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x3

    if-ne v7, v0, :cond_e

    :try_start_5
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_e
    :try_start_7
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_f
    move v0, v7

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :goto_6
    const-string v3, "CgiManager"

    const-string v4, "getCgi"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v7

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move v0, v7

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto :goto_6

    :cond_10
    move v7, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5
.end method

.method static synthetic a(Lcom/loc/ce;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loc/ce;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/loc/ce;->f:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/loc/ce;->f:I

    iget v0, p0, Lcom/loc/ce;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    iget v1, p0, Lcom/loc/ce;->f:I

    iput v1, v0, Lcom/loc/cd;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "hdlCgiSigStrenChange"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/ce;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/ce;->a(I)V

    return-void
.end method

.method private b(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/cd;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/loc/cd;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/loc/cd;-><init>(I)V

    iget-object v2, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/loc/cw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/loc/cd;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/loc/cd;->b:Ljava/lang/String;

    const-string v2, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/loc/cd;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/loc/cd;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cw;->a(I)I

    move-result v2

    iput v2, v1, Lcom/loc/cd;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getGsm"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/telephony/CellLocation;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/ce;->d:I

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/loc/ce;->d(Landroid/telephony/CellLocation;)Lcom/loc/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/NeighboringCellInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/ce;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/ce;->m:Z

    return v0
.end method

.method private c(Landroid/telephony/CellLocation;)V
    .locals 6

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mGsmCellLoc"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/ce;->d:I

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/cw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/loc/cd;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/loc/cd;-><init>(I)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/loc/cd;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/loc/cd;->b:Ljava/lang/String;

    const-string v0, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/cd;->g:I

    const-string v0, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/cd;->h:I

    const-string v0, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/cd;->i:I

    iget v0, p0, Lcom/loc/ce;->f:I

    iput v0, v3, Lcom/loc/cd;->j:I

    const-string v0, "getBaseStationLatitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/cd;->e:I

    const-string v0, "getBaseStationLongitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/cd;->f:I

    iget v0, v3, Lcom/loc/cd;->e:I

    if-ltz v0, :cond_4

    iget v0, v3, Lcom/loc/cd;->f:I

    if-gez v0, :cond_7

    :cond_4
    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->e:I

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->f:I

    :goto_2
    if-nez v2, :cond_5

    :cond_5
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "hdlCdmaLocChange"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v3, "CgiManager"

    const-string v4, "hdlCdmaLocChange1"

    invoke-static {v0, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    iget v0, v3, Lcom/loc/cd;->e:I

    if-ne v0, v5, :cond_8

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->e:I

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->f:I

    goto :goto_2

    :cond_8
    iget v0, v3, Lcom/loc/cd;->f:I

    if-ne v0, v5, :cond_9

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->e:I

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->f:I

    goto :goto_2

    :cond_9
    iget v0, v3, Lcom/loc/cd;->e:I

    iget v4, v3, Lcom/loc/cd;->f:I

    if-ne v0, v4, :cond_a

    iget v0, v3, Lcom/loc/cd;->e:I

    if-lez v0, :cond_a

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->e:I

    const/4 v0, 0x0

    iput v0, v3, Lcom/loc/cd;->f:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_a
    move v2, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/loc/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->q()V

    return-void
.end method

.method static synthetic d(Lcom/loc/ce;)I
    .locals 1

    iget v0, p0, Lcom/loc/ce;->d:I

    return v0
.end method

.method private d(Landroid/telephony/CellLocation;)Lcom/loc/cd;
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v0, Lcom/loc/cd;

    invoke-direct {v0, v3}, Lcom/loc/cd;-><init>(I)V

    iget-object v1, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/cw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/loc/cd;->a:Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/loc/cd;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/loc/cd;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/cd;->d:I

    iget v1, p0, Lcom/loc/ce;->f:I

    iput v1, v0, Lcom/loc/cd;->j:I

    return-object v0
.end method

.method static synthetic e(Lcom/loc/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->r()V

    return-void
.end method

.method static synthetic f(Lcom/loc/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->p()V

    return-void
.end method

.method public static k()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "android.telephony.TelephonyManager2"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x2

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cw;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/ce;->m()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/loc/ce;->n()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    :cond_1
    iget-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/cw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/ce;->b(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/ce;->c(Landroid/telephony/CellLocation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private m()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "getAllCellInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/loc/ce;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_2
    const-string v0, "getCellLocationExt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_3
    const-string v0, "getCellLocationGemini"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    move-object v1, v0

    :goto_6
    invoke-virtual {p0, v1}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CgiManager"

    const-string v4, "getSim1Cgi4"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "CgiManager"

    const-string v4, "getSim1Cgi2"

    invoke-static {v0, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "CgiManager"

    const-string v4, "getSim1Cgi1"

    invoke-static {v0, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim1Cgi"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_5

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private n()Landroid/telephony/CellLocation;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/ce;->o()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getCellLocation"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v3, v4, v0}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :cond_1
    :goto_2
    if-nez v2, :cond_4

    :try_start_3
    const-string v0, "getCellLocationGemini"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v4}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    :try_start_5
    const-string v0, "getAllCellInfo"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v2, 0x0

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/loc/cu;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    :goto_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/loc/ce;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    :goto_5
    if-eqz v0, :cond_3

    check-cast v0, Landroid/telephony/CellLocation;

    :goto_6
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "CgiManager"

    const-string v5, "getSim2Cgi15"

    invoke-static {v0, v2, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v4, "CgiManager"

    const-string v5, "getSim2Cgi14"

    invoke-static {v0, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :catch_5
    move-exception v0

    :try_start_8
    const-string v4, "CgiManager"

    const-string v5, "getSim2Cgi13"

    invoke-static {v0, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    goto :goto_3

    :catch_6
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi12"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi1"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v1

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_5
.end method

.method private o()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {}, Lcom/loc/ce;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private p()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/ce;->j:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "cellupdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cellupdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ce;->i:J

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "updateCgi1"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "updateCgi"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private q()V
    .locals 5

    const/16 v4, 0x10

    new-instance v0, Lcom/loc/ce$1;

    invoke-direct {v0, p0}, Lcom/loc/ce$1;-><init>(Lcom/loc/ce;)V

    iput-object v0, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    const-string v1, "android.telephony.PhoneStateListener"

    const-string v0, ""

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    const-string v2, "LISTEN_SIGNAL_STRENGTH"

    :try_start_0
    invoke-static {v1, v2}, Lcom/loc/cu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/loc/ce;->k()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "initPhoneStateListener3"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "LISTEN_SIGNAL_STRENGTHS"

    :try_start_2
    invoke-static {v1, v2}, Lcom/loc/cu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "initPhoneStateListener2"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    or-int/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    :try_start_4
    iget-object v0, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "initPhoneStateListener"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ce;->h:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;

    const/16 v0, 0x9

    iput v0, p0, Lcom/loc/ce;->d:I

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/cd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ce;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Landroid/telephony/CellLocation;)Z
    .locals 5

    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/loc/ce;->c:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/loc/cw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_0

    const/16 v1, 0x9

    iput v1, p0, Lcom/loc/ce;->d:I

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-lt v2, v3, :cond_2

    goto :goto_1

    :pswitch_1
    :try_start_0
    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/cu;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/telephony/NeighboringCellInfo;)Z
    .locals 5

    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/loc/ce;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/ce;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()Lcom/loc/cd;
    .locals 3

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/loc/ce;->d:I

    return v0
.end method

.method public d()Landroid/telephony/CellLocation;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/ce;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/loc/ce;->l:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->l()V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->r()V

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ce;->p()V

    return-void
.end method

.method public i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/loc/ce;->k:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/loc/ce;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/ce;->m:Z

    iget-object v0, p0, Lcom/loc/ce;->a:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ce;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ce;->a:Landroid/os/Looper;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/loc/ce;->b:Lcom/loc/ce$a;

    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/ce;->f:I

    iput-object v3, p0, Lcom/loc/ce;->g:Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/loc/ce;->h:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 2

    const/16 v1, 0x9

    iget v0, p0, Lcom/loc/ce;->d:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/loc/ce;->d:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/ce;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/loc/ce;->d:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
