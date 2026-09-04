.class public Lcom/loc/db;
.super Ljava/lang/Object;


.field private static M:F

.field private static N:F

.field private static O:F

.field private static P:F

.field private static Q:I

.field private static R:I

.field private static S:I

.field private static T:I

.field private static U:I

.field private static V:I

.field private static W:I

.field protected static a:Z

.field protected static b:Z

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Ljava/lang/Object;

.field private static k:Lcom/loc/db;


.field private A:Lcom/loc/dw;

.field private volatile B:Landroid/os/Handler;

.field private C:Lcom/loc/dx;

.field private D:Landroid/location/LocationListener;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Landroid/location/GpsStatus;

.field private H:I

.field private I:I

.field private J:Ljava/util/HashMap;

.field private K:I

.field private L:I

.field c:Ljava/lang/Object;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/content/Context;

.field private q:Landroid/location/LocationManager;

.field private r:Lcom/loc/dl;

.field private s:Lcom/loc/dz;

.field private t:Lcom/loc/ef;

.field private u:Lcom/loc/di;

.field private v:Lcom/loc/ee;

.field private w:Lcom/loc/dy;

.field private x:Lcom/loc/dc;

.field private y:Ljava/lang/Thread;

.field private z:Landroid/os/Looper;


.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/16 v1, 0xa

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/db;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/db;->b:Z

    sput v1, Lcom/loc/db;->d:I

    sput v2, Lcom/loc/db;->e:I

    sput v1, Lcom/loc/db;->f:I

    sput v1, Lcom/loc/db;->g:I

    const/16 v0, 0x32

    sput v0, Lcom/loc/db;->h:I

    const/16 v0, 0xc8

    sput v0, Lcom/loc/db;->i:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/db;->j:Ljava/lang/Object;

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lcom/loc/db;->M:F

    const v0, 0x400ccccd    # 2.2f

    sput v0, Lcom/loc/db;->N:F

    const v0, 0x40133333    # 2.3f

    sput v0, Lcom/loc/db;->O:F

    const v0, 0x40733333    # 3.8f

    sput v0, Lcom/loc/db;->P:F

    const/4 v0, 0x3

    sput v0, Lcom/loc/db;->Q:I

    sput v1, Lcom/loc/db;->R:I

    sput v2, Lcom/loc/db;->S:I

    const/4 v0, 0x7

    sput v0, Lcom/loc/db;->T:I

    const/16 v0, 0x14

    sput v0, Lcom/loc/db;->U:I

    const/16 v0, 0x46

    sput v0, Lcom/loc/db;->V:I

    const/16 v0, 0x78

    sput v0, Lcom/loc/db;->W:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/db;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/db;->m:I

    iput v1, p0, Lcom/loc/db;->n:I

    iput v1, p0, Lcom/loc/db;->o:I

    iput-object v2, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    iput-object v2, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    iput-object v2, p0, Lcom/loc/db;->B:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/db;->c:Ljava/lang/Object;

    new-instance v0, Lcom/loc/dx;

    invoke-direct {v0, p0}, Lcom/loc/dx;-><init>(Lcom/loc/db;)V

    iput-object v0, p0, Lcom/loc/db;->C:Lcom/loc/dx;

    new-instance v0, Lcom/loc/dr;

    invoke-direct {v0, p0}, Lcom/loc/dr;-><init>(Lcom/loc/db;)V

    iput-object v0, p0, Lcom/loc/db;->D:Landroid/location/LocationListener;

    new-instance v0, Lcom/loc/ds;

    invoke-direct {v0, p0}, Lcom/loc/ds;-><init>(Lcom/loc/db;)V

    iput-object v0, p0, Lcom/loc/db;->E:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/loc/dt;

    invoke-direct {v0, p0}, Lcom/loc/dt;-><init>(Lcom/loc/db;)V

    iput-object v0, p0, Lcom/loc/db;->F:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/loc/db;->G:Landroid/location/GpsStatus;

    iput v1, p0, Lcom/loc/db;->H:I

    iput v1, p0, Lcom/loc/db;->I:I

    iput-object v2, p0, Lcom/loc/db;->J:Ljava/util/HashMap;

    iput v1, p0, Lcom/loc/db;->K:I

    iput v1, p0, Lcom/loc/db;->L:I

    iput-object p1, p0, Lcom/loc/db;->p:Landroid/content/Context;

    invoke-static {p1}, Lcom/loc/dl;->a(Landroid/content/Context;)Lcom/loc/dl;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    new-instance v0, Lcom/loc/dc;

    invoke-direct {v0}, Lcom/loc/dc;-><init>()V

    iput-object v0, p0, Lcom/loc/db;->x:Lcom/loc/dc;

    new-instance v0, Lcom/loc/dz;

    iget-object v2, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-direct {v0, v2}, Lcom/loc/dz;-><init>(Lcom/loc/dl;)V

    iput-object v0, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    new-instance v0, Lcom/loc/di;

    invoke-direct {v0, p1}, Lcom/loc/di;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/db;->u:Lcom/loc/di;

    new-instance v0, Lcom/loc/ef;

    iget-object v2, p0, Lcom/loc/db;->u:Lcom/loc/di;

    invoke-direct {v0, v2}, Lcom/loc/ef;-><init>(Lcom/loc/di;)V

    iput-object v0, p0, Lcom/loc/db;->t:Lcom/loc/ef;

    new-instance v0, Lcom/loc/ee;

    iget-object v2, p0, Lcom/loc/db;->u:Lcom/loc/di;

    invoke-direct {v0, v2}, Lcom/loc/ee;-><init>(Lcom/loc/di;)V

    iput-object v0, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dy;->a(Landroid/content/Context;)Lcom/loc/dy;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    iget-object v2, p0, Lcom/loc/db;->C:Lcom/loc/dx;

    invoke-virtual {v0, v2}, Lcom/loc/dy;->a(Lcom/loc/dx;)V

    invoke-direct {p0}, Lcom/loc/db;->o()V

    iget-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "passive"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/loc/db;->l:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/dl;->a:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/loc/dl;->a:Ljava/lang/String;

    const-string v1, "Error: No SD Card!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/db;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/db;->H:I

    return v0
.end method

.method static synthetic a(Lcom/loc/db;Lcom/loc/eh;I)I
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x1

    iget v2, p0, Lcom/loc/db;->K:I

    sget v3, Lcom/loc/db;->R:I

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/loc/db;->K:I

    sget v3, Lcom/loc/db;->Q:I

    if-gt v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/loc/eh;->c()D

    move-result-wide v2

    sget v4, Lcom/loc/db;->M:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    sget v4, Lcom/loc/db;->N:F

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/loc/eh;->b()D

    move-result-wide v2

    sget v4, Lcom/loc/db;->O:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    sget v4, Lcom/loc/db;->P:F

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget v2, Lcom/loc/db;->T:I

    if-ge p2, v2, :cond_0

    sget v0, Lcom/loc/db;->S:I

    if-gt p2, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/loc/db;->J:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/db;->J:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/loc/db;->a(Ljava/util/HashMap;)I

    move-result v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;)I
    .locals 12

    iget v0, p0, Lcom/loc/db;->H:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/loc/db;->a(Ljava/util/List;)[D

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    new-array v5, v0, [D

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [D

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    int-to-double v10, v0

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v7, 0x1

    aget-wide v8, v1, v7

    int-to-double v10, v0

    mul-double/2addr v8, v10

    aput-wide v8, v1, v7

    const/4 v0, 0x0

    aget-wide v8, v5, v0

    const/4 v7, 0x0

    aget-wide v10, v1, v7

    add-double/2addr v8, v10

    aput-wide v8, v5, v0

    const/4 v0, 0x1

    aget-wide v8, v5, v0

    const/4 v7, 0x1

    aget-wide v10, v1, v7

    add-double/2addr v8, v10

    aput-wide v8, v5, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    aget-wide v2, v5, v0

    int-to-double v8, v6

    div-double/2addr v2, v8

    aput-wide v2, v5, v0

    const/4 v0, 0x1

    aget-wide v2, v5, v0

    int-to-double v6, v6

    div-double/2addr v2, v6

    aput-wide v2, v5, v0

    const/4 v0, 0x0

    aget-wide v2, v5, v0

    const/4 v0, 0x1

    aget-wide v6, v5, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v8, 0x0

    mul-double/2addr v2, v2

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v4, v8

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d,%d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/loc/db;->V:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    div-double v0, v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    sget v2, Lcom/loc/db;->W:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_4

    :cond_6
    const/4 v0, 0x3

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/loc/db;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/loc/db;->G:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/db;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/loc/db;->B:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/db;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/db;
    .locals 2

    sget-object v0, Lcom/loc/db;->k:Lcom/loc/db;

    if-nez v0, :cond_1

    sget-object v1, Lcom/loc/db;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/db;->k:Lcom/loc/db;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/db;

    invoke-direct {v0, p0}, Lcom/loc/db;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/db;->k:Lcom/loc/db;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/loc/db;->k:Lcom/loc/db;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/loc/db;Lcom/loc/dw;)Lcom/loc/dw;
    .locals 0

    iput-object p1, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/db;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V1.0.0r"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "COL.15.0929r"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/db;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/loc/db;->J:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/loc/db;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/db;->o()V

    return-void
.end method

.method static synthetic a(Lcom/loc/db;Landroid/location/Location;IJ)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    invoke-virtual {v0, p1}, Lcom/loc/dz;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    iget-object v0, v0, Lcom/loc/dz;->b:Lcom/loc/ea;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, v0, Lcom/loc/ea;->b:Landroid/location/Location;

    :cond_0
    iget-object v0, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    invoke-virtual {v0, p1}, Lcom/loc/dz;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    iget-object v2, v2, Lcom/loc/dz;->a:Lcom/loc/ed;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, v2, Lcom/loc/ed;->b:Landroid/location/Location;

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/db;->x:Lcom/loc/dc;

    iget-object v1, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    iget v0, p0, Lcom/loc/db;->L:I

    int-to-byte v3, v0

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/loc/dc;->a(Landroid/location/Location;Lcom/loc/dl;IBJZ)Lcom/loc/da;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0}, Lcom/loc/dl;->m()Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_3
    invoke-virtual {v1}, Lcom/loc/da;->a()[B

    move-result-object v1

    iget-object v3, p0, Lcom/loc/db;->t:Lcom/loc/ef;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Lcom/loc/ef;->a(J[B)V

    :cond_4
    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/db;->x:Lcom/loc/dc;

    if-nez v0, :cond_7

    :cond_5
    :goto_2
    return-void

    :cond_6
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    const-string v1, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v0, "get_sensor"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/loc/db;->x:Lcom/loc/dc;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    iget v3, p0, Lcom/loc/db;->L:I

    int-to-byte v3, v3

    const/4 v6, 0x1

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/loc/dc;->a(Landroid/location/Location;Lcom/loc/dl;IBJZ)Lcom/loc/da;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0}, Lcom/loc/dl;->m()Ljava/util/List;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_8
    invoke-virtual {v1}, Lcom/loc/da;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/db;->t:Lcom/loc/ef;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Lcom/loc/ef;->a(J[B)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "get_sensor"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3
.end method

.method private a(Ljava/util/List;)[D
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-array v1, v12, [D

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    if-eqz v0, :cond_2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    float-to-double v6, v0

    new-array v0, v12, [D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v0, v11

    aget-wide v4, v1, v10

    aget-wide v6, v0, v10

    add-double/2addr v4, v6

    aput-wide v4, v1, v10

    aget-wide v4, v1, v11

    aget-wide v6, v0, v11

    add-double/2addr v4, v6

    aput-wide v4, v1, v11

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    aget-wide v2, v1, v10

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v10

    aget-wide v2, v1, v11

    int-to-double v4, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v11

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/db;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/db;->I:I

    return v0
.end method

.method static synthetic b(Lcom/loc/db;Ljava/util/HashMap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/db;->a(Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/loc/db;)Lcom/loc/dy;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/db;I)I
    .locals 0

    iput p1, p0, Lcom/loc/db;->m:I

    return p1
.end method

.method static synthetic c(Lcom/loc/db;)Lcom/loc/dw;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/db;I)I
    .locals 0

    iput p1, p0, Lcom/loc/db;->K:I

    return p1
.end method

.method static synthetic d(Lcom/loc/db;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/db;I)I
    .locals 0

    iput p1, p0, Lcom/loc/db;->L:I

    return p1
.end method

.method static synthetic e(Lcom/loc/db;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->D:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/db;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->G:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic g(Lcom/loc/db;)I
    .locals 2

    iget v0, p0, Lcom/loc/db;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/db;->I:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    sget v0, Lcom/loc/db;->f:I

    return v0
.end method

.method static synthetic h(Lcom/loc/db;)I
    .locals 1

    iget v0, p0, Lcom/loc/db;->m:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    sget v0, Lcom/loc/db;->i:I

    return v0
.end method

.method static synthetic i(Lcom/loc/db;)Lcom/loc/dl;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Lcom/loc/db;->e:I

    return v0
.end method

.method static synthetic j(Lcom/loc/db;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->J:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/loc/db;->h:I

    return v0
.end method

.method static synthetic k(Lcom/loc/db;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/loc/db;->g:I

    return v0
.end method

.method static synthetic l(Lcom/loc/db;)I
    .locals 1

    iget v0, p0, Lcom/loc/db;->I:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    sget v0, Lcom/loc/db;->d:I

    return v0
.end method

.method static synthetic m(Lcom/loc/db;)I
    .locals 1

    iget v0, p0, Lcom/loc/db;->L:I

    return v0
.end method

.method static synthetic n()I
    .locals 1

    sget v0, Lcom/loc/db;->U:I

    return v0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v0}, Lcom/loc/dy;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/loc/db;->n:I

    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v0}, Lcom/loc/dy;->c()I

    move-result v0

    iput v0, p0, Lcom/loc/db;->o:I

    iget-object v0, p0, Lcom/loc/db;->s:Lcom/loc/dz;

    iget v0, p0, Lcom/loc/db;->n:I

    iget v0, p0, Lcom/loc/db;->o:I

    invoke-static {}, Lcom/loc/dz;->a()V

    return-void
.end method


.method public a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/loc/dl;->b:Z

    iget-boolean v0, p0, Lcom/loc/db;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/loc/db;->a:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/loc/db;->a:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sput-boolean v2, Lcom/loc/db;->b:Z

    iget-object v1, p0, Lcom/loc/db;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/db;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/db;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/db;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, ""

    iget-object v1, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v1, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iput-object v3, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    iget-object v1, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->D:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    :cond_2
    iget-object v1, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    :cond_3
    new-instance v1, Lcom/loc/du;

    invoke-direct {v1, p0, v0}, Lcom/loc/du;-><init>(Lcom/loc/db;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0}, Lcom/loc/dl;->a()V

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2220

    if-eq p1, v0, :cond_0

    const/16 v0, 0x300

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE or COLLECTOR_MEDIUM_SIZE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/db;->u:Lcom/loc/di;

    invoke-virtual {v0, p1}, Lcom/loc/di;->a(I)V

    return-void
.end method

.method public a(Lcom/loc/dh;Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/loc/dl;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v0, p2}, Lcom/loc/dy;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/loc/dh;->a()[B

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    iget-object v3, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v3}, Lcom/loc/dy;->e()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/dy;->a(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/loc/dh;->a(Z)V

    iget-object v0, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    invoke-virtual {v0, p1}, Lcom/loc/ee;->a(Lcom/loc/dh;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    iget-object v3, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v3}, Lcom/loc/dy;->f()I

    move-result v3

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/loc/dy;->b(I)V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v1, Lcom/loc/dl;->b:Z

    iput-object v0, p0, Lcom/loc/db;->B:Landroid/os/Handler;

    sput-boolean v1, Lcom/loc/dl;->c:Z

    iget-boolean v0, p0, Lcom/loc/db;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/loc/db;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/db;->F:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/db;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/loc/db;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/db;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0}, Lcom/loc/dl;->v()V

    :cond_3
    iget-object v1, p0, Lcom/loc/db;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/loc/db;->a:Z

    iget-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/db;->A:Lcom/loc/dw;

    iget-object v0, p0, Lcom/loc/db;->q:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/loc/db;->D:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/db;->z:Landroid/os/Looper;

    :cond_4
    iget-object v0, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/db;->y:Ljava/lang/Thread;

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0}, Lcom/loc/dl;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v0, p1}, Lcom/loc/dl;->a(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/db;->l:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/loc/db;->b()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/loc/db;->a:Z

    return v0
.end method

.method public e()Lcom/loc/dh;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/loc/db;->f()Z

    iget-object v1, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v1}, Lcom/loc/dy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/loc/dl;->c:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    iget-object v1, p0, Lcom/loc/db;->w:Lcom/loc/dy;

    invoke-virtual {v1}, Lcom/loc/dy;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loc/ee;->a(I)Lcom/loc/dh;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/db;->r:Lcom/loc/dl;

    invoke-virtual {v1}, Lcom/loc/dl;->m()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/loc/db;->u:Lcom/loc/di;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/loc/di;->b(J)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/db;->v:Lcom/loc/ee;

    invoke-virtual {v0}, Lcom/loc/ee;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
