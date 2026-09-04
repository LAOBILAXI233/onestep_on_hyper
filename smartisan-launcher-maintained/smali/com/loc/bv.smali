.class public Lcom/loc/bv;
.super Ljava/lang/Object;
.source "APS.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bv$a;,
        Lcom/loc/bv$b;
    }
.end annotation


.field private static ae:I

.field public static final c:Ljava/lang/StringBuilder;


.field private A:Z

.field private B:Z

.field private C:J

.field private D:J

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/loc/cs;

.field private I:Ljava/util/Timer;

.field private J:Ljava/util/TimerTask;

.field private K:I

.field private L:Lcom/loc/db;

.field private M:Lcom/loc/dh;

.field private N:[I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:J

.field private S:Ljava/lang/String;

.field private T:Lcom/loc/cd;

.field private U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private V:Ljava/lang/String;

.field private W:Ljava/util/Timer;

.field private X:Ljava/util/TimerTask;

.field private Y:Ljava/lang/String;

.field private Z:I

.field public a:Z

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:J

.field b:Lcom/loc/co;

.field d:Lcom/loc/bw;

.field e:I

.field f:Z

.field g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field h:Ljava/lang/Object;

.field public i:Z

.field j:I

.field k:Z

.field l:Lcom/loc/bv$a;

.field private m:Landroid/content/Context;

.field private n:Landroid/net/ConnectivityManager;

.field private o:Lcom/loc/cf;

.field private p:Lcom/loc/ce;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lcom/loc/bv$b;

.field private u:Landroid/net/wifi/WifiInfo;

.field private v:Lorg/json/JSONObject;

.field private w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private x:J

.field private y:J

.field private z:J


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    sput v0, Lcom/loc/bv;->ae:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/bv;->n:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/bv;->s:Ljava/util/HashMap;

    new-instance v0, Lcom/loc/bv$b;

    invoke-direct {v0, p0, v1}, Lcom/loc/bv$b;-><init>(Lcom/loc/bv;Lcom/loc/bv$1;)V

    iput-object v0, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    iput-object v1, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-wide v4, p0, Lcom/loc/bv;->x:J

    iput-wide v4, p0, Lcom/loc/bv;->y:J

    iput-wide v4, p0, Lcom/loc/bv;->z:J

    iput-boolean v2, p0, Lcom/loc/bv;->A:Z

    iput-boolean v2, p0, Lcom/loc/bv;->B:Z

    iput-wide v4, p0, Lcom/loc/bv;->C:J

    iput-wide v4, p0, Lcom/loc/bv;->D:J

    iput v2, p0, Lcom/loc/bv;->E:I

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bv;->G:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v1, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    iput-object v1, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    iput v2, p0, Lcom/loc/bv;->K:I

    iput-object v1, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    iput-object v1, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    iput-boolean v2, p0, Lcom/loc/bv;->a:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/loc/bv;->N:[I

    iput-object v1, p0, Lcom/loc/bv;->O:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    iput-wide v4, p0, Lcom/loc/bv;->Q:J

    iput-wide v4, p0, Lcom/loc/bv;->R:J

    iput-object v1, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    iput-object v1, p0, Lcom/loc/bv;->b:Lcom/loc/co;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bv;->e:I

    iput-boolean v2, p0, Lcom/loc/bv;->f:Z

    iput-object v1, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v1, p0, Lcom/loc/bv;->V:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    iput-object v1, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    iput-object v1, p0, Lcom/loc/bv;->Y:Ljava/lang/String;

    iput v2, p0, Lcom/loc/bv;->Z:I

    iput v2, p0, Lcom/loc/bv;->aa:I

    iput-object v1, p0, Lcom/loc/bv;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-boolean v3, p0, Lcom/loc/bv;->ab:Z

    iput-boolean v3, p0, Lcom/loc/bv;->ac:Z

    iput-wide v4, p0, Lcom/loc/bv;->ad:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/loc/bv;->i:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/bv;->j:I

    iput-boolean v3, p0, Lcom/loc/bv;->k:Z

    new-instance v0, Lcom/loc/bv$a;

    invoke-direct {v0, p0}, Lcom/loc/bv$a;-><init>(Lcom/loc/bv;)V

    iput-object v0, p0, Lcom/loc/bv;->l:Lcom/loc/bv$a;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->n:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/bv;->n:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/cf;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v1, "poiid"

    invoke-static {v0, v1}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v1, "poiid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->G:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setPoiid"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/loc/bv;->G:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/loc/bv;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method private C()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "version"

    invoke-static {v1}, Lcom/loc/db;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "getCollVer"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/bv;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    iget-boolean v1, p0, Lcom/loc/bv;->a:Z

    invoke-virtual {v0, v1}, Lcom/loc/cf;->a(Z)V

    goto :goto_0
.end method

.method private E()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "context is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/loc/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "src is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "license is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private F()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bv;->N:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/loc/bv;->N:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/loc/bv;->N:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->N:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "coluphist"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v4, "setColUpHist"

    invoke-static {v0, v2, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private G()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bv;->A:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->f()V

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->d()Landroid/telephony/CellLocation;

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->b()Lcom/loc/cd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/bv;->d()V

    iget-object v2, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/bv;->D:J

    iget-object v3, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v3}, Lcom/loc/cf;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/loc/bv;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    invoke-virtual {p0, v8}, Lcom/loc/bv;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_7

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    :goto_2
    iget v1, p0, Lcom/loc/bv;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    :goto_3
    move-object v6, v0

    :cond_3
    :goto_4
    return-object v6

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    :goto_5
    const-string v3, "APS"

    const-string v4, "doFirstLocate"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/bv;->ac:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/bv;->ab:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/loc/bv;->c(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->R:J

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iput-object v6, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/bv;->H()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/loc/bv;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8, v5}, Lcom/loc/bv;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "new"

    invoke-virtual {v6, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/bv;->x:J

    iput-object v6, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/loc/bv;->H()V

    move-object v0, v6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_5

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private H()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/bv;->V:Ljava/lang/String;

    return-void
.end method

.method private I()V
    .locals 6

    invoke-static {}, Lcom/loc/ct;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/loc/bv;->J()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/loc/cc;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lcom/loc/bv;->J()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Lcom/loc/bv$2;

    invoke-direct {v0, p0}, Lcom/loc/bv$2;-><init>(Lcom/loc/bv;)V

    iput-object v0, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-O"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private J()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/loc/bv;->X:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/loc/bv;->W:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private K()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bv;->Z:I

    iput v0, p0, Lcom/loc/bv;->aa:I

    return-void
.end method

.method private L()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/loc/cc;->a:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activityoffdl"

    move v0, v1

    :goto_1
    sget-object v5, Lcom/loc/cc;->a:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    sget-object v5, Lcom/loc/cc;->a:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v4, "setOffDlHist"

    invoke-static {v0, v2, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private M()[D
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/loc/bv;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/bv;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v1, p0, Lcom/loc/bv;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v5

    goto :goto_0

    :cond_1
    aput-wide v2, v0, v4

    aput-wide v2, v0, v5

    goto :goto_0
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->R:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->x:J

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bz;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "cleanCache"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/bv;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/bv;->a(ZI)I

    move-result v0

    return v0
.end method

.method private a(ZI)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/loc/bv;->y()V

    :goto_0
    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->g()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/bv;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/bv;J)J
    .locals 1

    iput-wide p1, p0, Lcom/loc/bv;->D:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/loc/ct;->i()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/loc/bv;->I()V

    invoke-static {}, Lcom/loc/cl;->a()Lcom/loc/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cl;->b()Ljava/util/ArrayList;

    move-result-object v9

    :try_start_0
    invoke-static {}, Lcom/loc/cc;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/loc/cc;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v8, v7

    :goto_1
    if-ge v8, v11, :cond_4

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/loc/bv;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "getPureOfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    if-ge v7, v8, :cond_2

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ck;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/loc/ck;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/loc/bv;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/bv;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/loc/cw;->k()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/loc/bv;->M()[D

    move-result-object p3

    :cond_2
    aget-wide v2, p3, v7

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    aget-wide v2, p3, v8

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    :cond_3
    move-object v0, p3

    invoke-static {}, Lcom/loc/cw;->b()J

    const/4 v1, 0x2

    new-array v6, v1, [I

    iget v1, p0, Lcom/loc/bv;->aa:I

    aput v1, v6, v7

    iget v1, p0, Lcom/loc/bv;->Z:I

    aput v1, v6, v8

    iget-object v5, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/cc;->a([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x6

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    new-instance v0, Lcom/loc/cq;

    invoke-direct {v0}, Lcom/loc/cq;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/loc/bv;->b:Lcom/loc/co;

    iget-object v2, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-static {}, Lcom/loc/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/loc/co;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/cs;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "getApsLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bv;->ad:J

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/loc/cq;->b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/loc/cg;->a([B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v1}, Lcom/loc/cq;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_6
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Lcom/loc/bv;->ac:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Z)V

    iget-boolean v0, p0, Lcom/loc/bv;->ab:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->O:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v2, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location faile retype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/bv;->O:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bv;->O:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v0, "null"

    goto :goto_2

    :cond_b
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "location is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/bv;)Lcom/loc/cf;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    return-object v0
.end method

.method private a(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/bv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/bv;->Y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 25

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    const-string v12, "0"

    const-string v13, "0"

    const-string v14, "0"

    const-string v15, "0"

    sget-object v16, Lcom/loc/e;->i:Ljava/lang/String;

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/loc/e;->d:Ljava/lang/String;

    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    invoke-static {v2, v3}, Lcom/loc/cw;->a(II)I

    move-result v17

    const-string v6, ""

    const-string v5, ""

    const-string v7, ""

    sget-object v3, Lcom/loc/e;->e:Ljava/lang/String;

    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/loc/bv;->ac:Z

    if-nez v4, :cond_1c

    const-string v3, "UC_nlp_20131029"

    const-string v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v4, v3

    move-object v3, v2

    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v2}, Lcom/loc/ce;->c()I

    move-result v21

    invoke-virtual {v2}, Lcom/loc/ce;->e()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v2}, Lcom/loc/ce;->a()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    const-string v2, "1"

    move-object v10, v2

    :goto_1
    if-eqz v9, :cond_3

    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/q;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_3
    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/bv;->n:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/loc/cw;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_c

    invoke-static {v9}, Lcom/loc/cw;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->p()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "2"

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->p()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->n()V

    move-object v6, v5

    move-object v5, v2

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->B()V

    const-string v2, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GBK"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\"?>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" gtype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\" gmock=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bv;->B:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_7
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "\" glong=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" glat=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" precision=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"><src>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</src><license>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</license><key>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</key><clientid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</clientid><imei>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</imei><imsi>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</imsi><reqid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</reqid><smac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/bv;->F:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</smac><sdkv>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/loc/bv;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</sdkv><corv>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->C()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</corv><poiid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/bv;->G:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</poiid></HDR><DRR phnum=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" nettype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" inftype=\""

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\">"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v21, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->K()V

    move-object v2, v7

    :goto_8
    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v7, v2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->p()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v8, -0x80

    if-ge v2, v8, :cond_11

    const/4 v2, 0x0

    :cond_6
    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x20

    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :goto_a
    const/16 v9, 0x20

    if-lt v8, v9, :cond_7

    const-string v2, "unkwn"

    :cond_7
    const-string v8, "*"

    const-string v9, "."

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/16 v22, 0xf

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move v8, v2

    :goto_b
    move/from16 v0, v22

    if-ge v8, v0, :cond_13

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_b

    :catch_0
    move-exception v2

    const-string v8, "APS"

    const-string v23, "getApsReq part4"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v2, "888888888888888"

    sget-object v8, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/q;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string v8, "APS"

    const-string v23, "getApsReq part3"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const-string v8, "APS"

    const-string v23, "getApsReq part2"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "888888888888888"

    sget-object v8, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    :try_start_5
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v2

    const-string v8, "APS"

    const-string v23, "getApsReq part1"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v8

    const-string v23, "APS"

    const-string v24, "getApsReq part"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v8, v0, v1}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v2, "1"

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    goto/16 :goto_6

    :cond_d
    const-string v2, "0"

    goto/16 :goto_7

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->K()V

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cd;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/cd;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<mnc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/cd;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lac>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "</cellid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/cd;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_f

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cd;

    iget v0, v2, Lcom/loc/cd;->c:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/cd;->d:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/cd;->j:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_e

    const-string v2, "*"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_c

    :cond_f
    move-object v2, v8

    goto/16 :goto_8

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/cd;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/cd;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<sid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<nid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<bid>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/loc/cd;->f:I

    if-lez v7, :cond_10

    iget v7, v2, Lcom/loc/cd;->e:I

    if-lez v7, :cond_10

    iget v7, v2, Lcom/loc/cd;->f:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/bv;->Z:I

    iget v7, v2, Lcom/loc/cd;->e:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/bv;->aa:I

    const-string v7, "<lon>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lat>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/cd;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const-string v7, "<signal>"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/cd;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->K()V

    goto :goto_d

    :cond_11
    const/16 v8, 0x7f

    if-le v2, v8, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_9

    :catch_5
    move-exception v8

    const-string v22, "APS"

    const-string v23, "getApsReq"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto/16 :goto_a

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->n()V

    :cond_13
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<nb>%s</nb>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v18, v9, v22

    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "<macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v20, v9, v22

    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    const-string v2, "<mmac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v20, v9, v22

    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</mmac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "</DRR></Cell_Req>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/loc/bv;->a(Ljava/lang/StringBuilder;)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v9, "reversegeo"

    invoke-static {v2, v9}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v9, "reversegeo"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    :goto_f
    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    const/4 v8, 0x2

    iput-short v8, v2, Lcom/loc/cs;->b:S

    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v8, "multi"

    invoke-static {v2, v8}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v8, "multi"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    const/4 v8, 0x1

    iput-short v8, v2, Lcom/loc/cs;->b:S
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    :cond_14
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v4, v2, Lcom/loc/cs;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v3, v2, Lcom/loc/cs;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-static {}, Lcom/loc/cw;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/loc/cw;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->g:Ljava/lang/String;

    sget-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/cw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    sget-object v3, Lcom/loc/e;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v10, v2, Lcom/loc/cs;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v12, v2, Lcom/loc/cs;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/bv;->B:Z

    if-eqz v2, :cond_19

    const-string v2, "1"

    :goto_12
    iput-object v2, v3, Lcom/loc/cs;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v13, v2, Lcom/loc/cs;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v14, v2, Lcom/loc/cs;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v15, v2, Lcom/loc/cs;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/loc/cs;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    sget-object v3, Lcom/loc/e;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    sget-object v3, Lcom/loc/e;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bv;->F:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-virtual/range {p0 .. p0}, Lcom/loc/bv;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-direct/range {p0 .. p0}, Lcom/loc/bv;->C()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bv;->G:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->F:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    sget-object v3, Lcom/loc/e;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/cs;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v6, v2, Lcom/loc/cs;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v5, v2, Lcom/loc/cs;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iput-object v7, v2, Lcom/loc/cs;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->B:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->D:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/bv;->D:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->E:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/cs;->C:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v11

    :cond_16
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v2, "<macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<![CDATA[%s]]>"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v19, v9, v22

    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</macs>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<macsage>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/loc/bv;->D:J

    move-wide/from16 v22, v0

    sub-long v8, v8, v22

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "</macsage>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :catch_6
    move-exception v2

    const-string v9, "APS"

    const-string v22, "getApsReq part"

    move-object/from16 v0, v22

    invoke-static {v2, v9, v0}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move v2, v8

    goto/16 :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bv;->H:Lcom/loc/cs;

    const/4 v8, 0x0

    iput-short v8, v2, Lcom/loc/cs;->b:S

    goto/16 :goto_10

    :catch_7
    move-exception v2

    const-string v8, "APS"

    const-string v9, "getApsReq"

    invoke-static {v2, v8, v9}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_19
    const-string v2, "0"

    goto/16 :goto_12

    :cond_1a
    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_6

    :cond_1b
    move-object v10, v8

    goto/16 :goto_1

    :cond_1c
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bv;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string v2, "smac"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "APS"

    const-string v4, "getSmac"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/bv;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bv;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " phnum=\"\""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, " nettype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " nettype=\"UNKWN\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, " inftype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "<nb></nb>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, " gtype=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, " gmock=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, " glong=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, " glat=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, " precision=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "<key></key>"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "<poiid></poiid>"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "<poiid>null</poiid>"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    const-string v0, "*<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private a(I)Z
    .locals 5

    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v3, "APS"

    const-string v4, "wifiSigFine"

    invoke-static {v2, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/bv;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    const v1, 0x282fffff

    const v0, 0x42fffff

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/loc/bv;->z()V

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/loc/bv;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loc/db;->a(Lcom/loc/dh;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v1}, Lcom/loc/db;->e()Lcom/loc/dh;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    iget-object v1, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    invoke-virtual {v1}, Lcom/loc/dh;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bv;->b:Lcom/loc/co;

    iget-object v3, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/loc/co;->a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    iget-object v3, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/loc/bv;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loc/db;->a(Lcom/loc/dh;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-string v0, "yyyyMMdd"

    invoke-static {v2, v3, v0}, Lcom/loc/cw;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bv;->N:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    array-length v1, v1

    add-int/2addr v1, v3

    aput v1, v0, v2

    :goto_2
    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/loc/bv;->N:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    invoke-direct {p0}, Lcom/loc/bv;->F()V

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/loc/bv;->t()V

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->g()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/loc/bv;->y()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    goto/16 :goto_1

    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/loc/bv;->A()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto/16 :goto_1

    :cond_3
    const v0, 0x7c2fffff

    goto/16 :goto_1

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/loc/bv;->N:[I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v2, 0x1

    array-length v1, v1

    aput v1, v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "APS"

    const-string v3, "up part"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/loc/bv;->N:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/loc/bv;->K:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/bv;->K:I

    iget-object v1, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    iget-object v2, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/loc/bv;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/loc/db;->a(Lcom/loc/dh;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/loc/bv;->K:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/loc/bv;->y()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v2, "pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "coluphist"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "coluphist"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/loc/bv;->N:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "getColUpHist"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coluphist"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    const-wide/16 v2, 0x7d0

    invoke-direct {p0}, Lcom/loc/bv;->t()V

    iget-object v0, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bv$1;

    invoke-direct {v0, p0, p1}, Lcom/loc/bv$1;-><init>(Lcom/loc/bv;I)V

    iput-object v0, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/SharedPreferences;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "activityoffdl"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/loc/cc;->a:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "getOffDlHist"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bv;->n()V

    return-void
.end method

.method static synthetic d(Lcom/loc/bv;)Lcom/loc/db;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bv;->u()V

    return-void
.end method

.method static synthetic f(Lcom/loc/bv;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/bv;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/loc/bv;)J
    .locals 2

    iget-wide v0, p0, Lcom/loc/bv;->z:J

    return-wide v0
.end method

.method static synthetic h(Lcom/loc/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bv;->y()V

    return-void
.end method

.method private i()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/loc/cf;

    iget-object v2, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v0, v3}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0, v3}, Lcom/loc/cf;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    const-string v0, "connectivity"

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/bv;->n:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/bv;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bv;->J()V

    return-void
.end method

.method static synthetic j(Lcom/loc/bv;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    return-object v0
.end method

.method private j()V
    .locals 3

    new-instance v0, Lcom/loc/ce;

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/loc/ce;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->h()V

    return-void
.end method

.method static synthetic k(Lcom/loc/bv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 8

    const-wide/16 v6, 0x2710

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/loc/bv;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/loc/bv;->y:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/loc/bv;->o()V

    iget-wide v4, p0, Lcom/loc/bv;->y:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    move v1, v2

    :goto_0
    if-lez v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0xbb8

    int-to-long v6, v2

    :try_start_1
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v4, "APS"

    const-string v5, "mayWaitForWifi"

    invoke-static {v0, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0}, Lcom/loc/cf;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic l(Lcom/loc/bv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    return-object v0
.end method

.method private l()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loc/bv;->G:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/loc/bv;->p()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/loc/bv;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bv;->C:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bv;->D:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method static synthetic m(Lcom/loc/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bv;->L()V

    return-void
.end method

.method private m()Z
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/loc/bv;->x:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bv;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->D:J

    iget-object v0, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/loc/bv;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/bv;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    invoke-static {}, Lcom/loc/cw;->c()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v2, "wifiactivescan"

    invoke-static {v0, v2}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "1"

    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v3, "wifiactivescan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0}, Lcom/loc/cf;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bv;->C:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    if-nez v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0}, Lcom/loc/cf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->C:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "APS"

    const-string v3, "updateWifi part1"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "APS"

    const-string v3, "updateWifi part"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0}, Lcom/loc/cf;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v1}, Lcom/loc/db;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()V
    .locals 4

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v2, "coll"

    invoke-static {v1, v2}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v2, "coll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/bv;->u()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "start3rdCM"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/loc/bv;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    sget v1, Lcom/loc/e;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/db;->b(I)V

    invoke-direct {p0}, Lcom/loc/bv;->z()V

    invoke-direct {p0}, Lcom/loc/bv;->t()V

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private t()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->g()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->f()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "collFileSwitch"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/bv;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x14

    sput v0, Lcom/loc/e;->m:I

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    invoke-virtual {v0}, Lcom/loc/db;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smac"

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "APS"

    const-string v4, "setSmac"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private w()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    return-void
.end method

.method private x()V
    .locals 8

    iget-object v3, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v2, "wait1stwifi"

    invoke-static {v1, v2}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v1, "wait1stwifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/loc/bv;->o()V

    const/16 v2, 0x14

    move v1, v2

    :goto_1
    if-lez v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0xbb8

    int-to-long v6, v2

    :try_start_2
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "wait1StWifi part"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    const-string v4, "APS"

    const-string v5, "wait1StWifi"

    invoke-static {v0, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0}, Lcom/loc/cf;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private y()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/loc/bv;->J:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/loc/bv;->I:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private z()V
    .locals 3

    invoke-direct {p0}, Lcom/loc/bv;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/loc/db;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setCollSize"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


.method public varargs a(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bz;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bz;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bz;->b(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object p1

    goto :goto_0
.end method

.method public declared-synchronized a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x4

    const-wide/16 v12, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget-object v5, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0}, Lcom/loc/bv;->E()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v3, "reversegeo"

    invoke-static {v2, v3}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v3, "reversegeo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v3, v2

    :goto_1
    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v5, "isOffset"

    invoke-static {v2, v5}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v5, "isOffset"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    iget-boolean v5, p0, Lcom/loc/bv;->ac:Z

    if-ne v2, v5, :cond_2

    iget-boolean v5, p0, Lcom/loc/bv;->ab:Z

    if-eq v3, v5, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/loc/bv;->N()V

    :cond_3
    iput-boolean v2, p0, Lcom/loc/bv;->ac:Z

    iput-boolean v3, p0, Lcom/loc/bv;->ab:Z

    iget v2, p0, Lcom/loc/bv;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loc/bv;->E:I

    iget-object v2, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/cw;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bv;->A:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/loc/bv;->G()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/loc/bv;->E:I

    if-ne v2, v6, :cond_6

    invoke-direct {p0}, Lcom/loc/bv;->t()V

    invoke-direct {p0}, Lcom/loc/bv;->D()V

    iget-object v2, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const-string v3, "pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/bv;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v2}, Lcom/loc/bv;->c(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, v2}, Lcom/loc/bv;->a(Landroid/content/SharedPreferences;)V

    :cond_5
    invoke-direct {p0}, Lcom/loc/bv;->I()V

    :cond_6
    iget v2, p0, Lcom/loc/bv;->E:I

    if-ne v2, v0, :cond_9

    invoke-direct {p0}, Lcom/loc/bv;->p()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bv;->D:J

    iget-object v2, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v2}, Lcom/loc/cf;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    invoke-direct {p0}, Lcom/loc/bv;->x()V

    :cond_9
    iget-wide v2, p0, Lcom/loc/bv;->x:J

    invoke-direct {p0, v2, v3}, Lcom/loc/bv;->a(J)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v2}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_6
    iget-object v2, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v2}, Lcom/loc/ce;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez p1, :cond_b

    :try_start_7
    invoke-direct {p0}, Lcom/loc/bv;->k()V

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bv;->y:J

    :cond_b
    invoke-virtual {p0}, Lcom/loc/bv;->d()V

    invoke-virtual {p0}, Lcom/loc/bv;->e()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p0, v2}, Lcom/loc/bv;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/loc/bv;->c(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/loc/bv;->A:Z

    if-nez v5, :cond_24

    iget-object v4, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v4}, Lcom/loc/ce;->b()Lcom/loc/cd;

    move-result-object v4

    move-object v7, v4

    :goto_4
    if-nez v7, :cond_c

    iget-object v4, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    if-eqz v4, :cond_15

    :cond_c
    iget-object v4, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    invoke-virtual {v4, v7}, Lcom/loc/cd;->a(Lcom/loc/cd;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_d
    move v5, v0

    :goto_5
    invoke-direct {p0}, Lcom/loc/bv;->m()Z

    move-result v8

    iget-object v4, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v6

    const v9, 0x43958000    # 299.0f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_16

    const/4 v6, 0x5

    if-le v4, v6, :cond_16

    :goto_6
    move v4, v0

    :goto_7
    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    if-eqz v0, :cond_17

    if-nez v4, :cond_17

    if-nez v5, :cond_17

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loc/ci;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-wide v10, p0, Lcom/loc/bv;->R:J

    cmp-long v0, v10, v12

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/bv;->R:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v0, v10, v12

    if-gez v0, :cond_17

    :cond_e
    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    iget-boolean v5, p0, Lcom/loc/bv;->A:Z

    invoke-virtual {v0, v5}, Lcom/loc/ce;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->h()V

    :cond_f
    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "APS"

    const-string v5, "getLocation"

    invoke-static {v2, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    iget-boolean v0, p0, Lcom/loc/bv;->f:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/loc/bv;->g()V

    :cond_11
    move v0, v4

    :goto_8
    if-lez v0, :cond_12

    iget v1, p0, Lcom/loc/bv;->e:I

    if-nez v1, :cond_13

    :cond_12
    iget v0, p0, Lcom/loc/bv;->e:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->d()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    :cond_13
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_14
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iget v1, p0, Lcom/loc/bv;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    move v5, v1

    goto/16 :goto_5

    :cond_16
    move v0, v1

    goto/16 :goto_6

    :cond_17
    if-nez v1, :cond_1d

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->R:J

    :goto_9
    iget-object v0, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/loc/bv;->Q:J

    sub-long/2addr v0, v10

    const-wide/16 v10, 0xbb8

    cmp-long v0, v0, v10

    if-gez v0, :cond_1e

    iget-object v0, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    move-object v6, v0

    :goto_a
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/loc/bv;->ac:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/loc/bv;->ab:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v4, :cond_18

    if-nez v8, :cond_18

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    :cond_18
    if-nez v8, :cond_19

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    if-eqz v4, :cond_21

    :cond_1a
    invoke-virtual {p0}, Lcom/loc/bv;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/loc/bv;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v3, "new"

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    iput-object v7, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/bv;->x:J

    invoke-direct {p0}, Lcom/loc/bv;->H()V

    :cond_1b
    :goto_b
    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ci;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/loc/cl;->a()Lcom/loc/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v1, v6, v3}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto/16 :goto_0

    :cond_1d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->R:J

    goto/16 :goto_9

    :cond_1e
    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->Q:J

    iput-object v3, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    move-object v6, v3

    goto/16 :goto_a

    :cond_1f
    iget-object v0, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    if-nez v0, :cond_20

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->Q:J

    iput-object v3, p0, Lcom/loc/bv;->P:Ljava/lang/String;

    move-object v6, v3

    goto/16 :goto_a

    :cond_20
    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->Q:J

    move-object v6, v3

    goto/16 :goto_a

    :cond_21
    if-eqz v8, :cond_22

    invoke-virtual {p0}, Lcom/loc/bv;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/loc/bv;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    iput-object v7, p0, Lcom/loc/bv;->T:Lcom/loc/cd;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/bv;->x:J

    invoke-direct {p0}, Lcom/loc/bv;->H()V

    goto/16 :goto_b

    :cond_22
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/loc/bv;->R:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {p0}, Lcom/loc/bv;->H()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_b

    :cond_23
    move v4, v1

    goto/16 :goto_7

    :cond_24
    move-object v7, v4

    goto/16 :goto_4

    :cond_25
    move v2, v0

    goto/16 :goto_2

    :cond_26
    move v3, v0

    goto/16 :goto_1
.end method

.method public a()V
    .locals 4

    invoke-static {}, Lcom/loc/ct;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/loc/ct;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/loc/ct;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/loc/bv;->b(Z)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/bv;->c(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/loc/bv;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/bv;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "fusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/loc/cw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/e;->k:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/loc/co;->a(Landroid/content/Context;)Lcom/loc/co;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->b:Lcom/loc/co;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/db;->a(Landroid/content/Context;)Lcom/loc/db;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bv;->z:J

    invoke-direct {p0}, Lcom/loc/bv;->i()V

    invoke-direct {p0}, Lcom/loc/bv;->j()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/e;->n:Z

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0}, Lcom/loc/cs;-><init>()V

    iput-object v0, p0, Lcom/loc/bv;->H:Lcom/loc/cs;

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->d()Landroid/telephony/CellLocation;

    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/ci;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/cl;->a()Lcom/loc/cl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/cl;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bv;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "APS"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/loc/bv;->w()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcom/loc/bv;->w()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/e;->e:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/e;->f:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/e;->h:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/loc/e;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iput-object p1, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v0, "collwifiscan"

    invoke-static {p1, v0}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "collwifiscan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x14

    sput v0, Lcom/loc/e;->m:I

    :goto_0
    invoke-direct {p0}, Lcom/loc/bv;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    sget v1, Lcom/loc/e;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/db;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0, p1}, Lcom/loc/ce;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v0, p1}, Lcom/loc/cf;->a(Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/e;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized b(Z)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bv;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->g()V

    :goto_0
    const-string v0, ""

    const-string v2, ""

    const-string v4, "network"

    invoke-direct {p0}, Lcom/loc/bv;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/bv;->o:Lcom/loc/cf;

    invoke-virtual {v2}, Lcom/loc/cf;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    :goto_1
    const-string v2, ""

    iget-object v2, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v2}, Lcom/loc/ce;->c()I

    move-result v2

    iget-object v5, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v5}, Lcom/loc/ce;->a()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    iput v1, p0, Lcom/loc/bv;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/loc/bv;->n()V

    goto :goto_1

    :cond_5
    sparse-switch v2, :sswitch_data_0

    const/16 v1, 0xb

    iput v1, p0, Lcom/loc/bv;->j:I

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/cw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/cd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/cd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cd;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/cd;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "cgiwifi"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    const-string v0, "cgi"

    goto :goto_4

    :sswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/loc/cd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/loc/cd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cd;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/loc/cd;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/loc/cd;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    const-string v0, "cgi"

    goto :goto_5

    :sswitch_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    move v2, v3

    :goto_6
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bv;->j:I

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_10

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bv;->j:I

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "same access wifi & around wifi 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    const-string v1, "network"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/bv;->j:I

    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_10
    move v1, v2

    goto :goto_7

    :cond_11
    move v2, v1

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/bv;->i:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->n:Z

    invoke-direct {p0}, Lcom/loc/bv;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->L:Lcom/loc/db;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->M:Lcom/loc/dh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->S:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/bv;->H()V

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bv;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bv;->e:I

    :cond_0
    invoke-direct {p0}, Lcom/loc/bv;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/cj;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/loc/bz;->a()Lcom/loc/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bz;->b()V

    invoke-static {}, Lcom/loc/cw;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    :goto_1
    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->i()V

    :cond_2
    invoke-static {}, Lcom/loc/ci;->a()Lcom/loc/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/ci;->c()V

    invoke-static {}, Lcom/loc/cl;->a()Lcom/loc/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cl;->c()V

    invoke-static {}, Lcom/loc/cc;->a()V

    invoke-direct {p0}, Lcom/loc/bv;->J()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->x:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bv;->Q:J

    invoke-direct {p0}, Lcom/loc/bv;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    const/4 v0, -0x1

    sput v0, Lcom/loc/bv;->ae:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "APS"

    const-string v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bv;->t:Lcom/loc/bv$b;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/loc/bv;->ae:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/loc/bv;->ae:I

    const-string v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;)Z

    invoke-static {p1}, Lcom/loc/ct;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4.0"

    return-object v0
.end method

.method public declared-synchronized c(Z)Ljava/lang/StringBuilder;
    .locals 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    iget-boolean v3, p0, Lcom/loc/bv;->A:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/loc/ce;->g()V

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x2bc

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/loc/ce;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/loc/ce;->a()Ljava/util/ArrayList;

    move-result-object v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/bv;->v()V

    iget-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/loc/bv;->F:Ljava/lang/String;

    :cond_4
    invoke-direct {p0}, Lcom/loc/bv;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    iget-object v3, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/loc/bv;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/loc/bv;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_0
    iget-object v6, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v0, "nb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v0, "access"

    move v1, v2

    :cond_5
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "#%s,%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v0, v11, v8

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :pswitch_0
    move v3, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    iget v0, v0, Lcom/loc/cd;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cd;

    iget v0, v0, Lcom/loc/cd;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",access"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-object v5

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/loc/bv;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    move-object v4, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/loc/bv;->r:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/loc/bv;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 10

    const/16 v3, 0x20

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bv;->D:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/bv;->n()V

    :cond_2
    invoke-static {}, Lcom/loc/cw;->h()Z

    move-result v0

    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-static {v2, v4}, Lcom/loc/cw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v4, v0

    :goto_2
    :try_start_3
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iget-object v6, p0, Lcom/loc/bv;->q:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v1

    :goto_3
    if-ge v2, v7, :cond_c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/loc/cw;->a(Landroid/net/wifi/ScanResult;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/loc/bv;->v:Lorg/json/JSONObject;

    const-string v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    const-string v4, "APS"

    const-string v5, "setWifiOrder part"

    invoke-static {v2, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v4, v0

    goto :goto_2

    :cond_7
    const/16 v1, 0x14

    if-le v7, v1, :cond_8

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v1}, Lcom/loc/bv;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_8
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v4, :cond_a

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "*"

    const-string v9, "."

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    if-lt v1, v3, :cond_9

    :try_start_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_9
    :goto_6
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_8
    const-string v8, "APS"

    const-string v9, "setWifiOrder"

    invoke-static {v1, v8, v9}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_5

    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    iget-boolean v2, p0, Lcom/loc/bv;->A:Z

    invoke-virtual {v1, v2}, Lcom/loc/ce;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/bv;->p:Lcom/loc/ce;

    invoke-virtual {v1}, Lcom/loc/ce;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/loc/bv;->a(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "APS"

    const-string v3, "getApsReq"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get parames error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    sget-object v1, Lcom/loc/bv;->c:Ljava/lang/StringBuilder;

    const-string v2, "get parames is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized g()V
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/loc/bv;->E:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/loc/bv;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bw;

    iget-object v1, p0, Lcom/loc/bv;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    iget-object v1, p0, Lcom/loc/bv;->l:Lcom/loc/bv$a;

    invoke-virtual {v0, v1}, Lcom/loc/bw;->a(Lcom/loc/bw$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv;->d:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->b()Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bv;->f:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "APS"

    const-string v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bv;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/bv;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bv;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/bv;->s()V

    :cond_0
    return-void
.end method
