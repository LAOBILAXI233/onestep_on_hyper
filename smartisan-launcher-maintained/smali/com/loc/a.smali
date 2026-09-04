.class public Lcom/loc/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

.implements Lcom/amap/api/location/LocationManagerBase;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/a$a;,
        Lcom/loc/a$c;,
        Lcom/loc/a$b;
    }
.end annotation


.field static t:Z


.field private A:Landroid/content/ServiceConnection;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Lcom/amap/api/location/AMapLocation;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field b:Lcom/loc/a$c;

.field c:Lcom/loc/g;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/loc/f;

.field f:Z

.field g:Lcom/loc/i;

.field h:Landroid/os/Messenger;

.field i:Landroid/os/Messenger;

.field j:Lcom/loc/a$b;

.field k:Landroid/content/Intent;

.field l:I

.field m:I

.field n:Z

.field o:J

.field p:J

.field q:Lcom/amap/api/location/AMapLocation;

.field r:J

.field s:J

.field private u:Landroid/content/Context;

.field private v:Z

.field private w:Z

.field private x:J

.field private y:Z

.field private z:Z


.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/a;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/a;->c:Lcom/loc/g;

    iput-boolean v1, p0, Lcom/loc/a;->v:Z

    iput-boolean v3, p0, Lcom/loc/a;->w:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/loc/a;->f:Z

    iput-wide v4, p0, Lcom/loc/a;->x:J

    iput-boolean v3, p0, Lcom/loc/a;->y:Z

    iput-boolean v1, p0, Lcom/loc/a;->z:Z

    iput-object v2, p0, Lcom/loc/a;->h:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    iput v1, p0, Lcom/loc/a;->l:I

    iput v1, p0, Lcom/loc/a;->m:I

    iput-boolean v1, p0, Lcom/loc/a;->n:Z

    iput-wide v4, p0, Lcom/loc/a;->o:J

    iput-wide v4, p0, Lcom/loc/a;->p:J

    iput-object v2, p0, Lcom/loc/a;->q:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/a;->r:J

    iput-wide v4, p0, Lcom/loc/a;->s:J

    new-instance v0, Lcom/loc/b;

    invoke-direct {v0, p0}, Lcom/loc/b;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->A:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->B:Ljava/util/ArrayList;

    iput v1, p0, Lcom/loc/a;->C:I

    iput-object v2, p0, Lcom/loc/a;->D:Lcom/amap/api/location/AMapLocation;

    iput-object p1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/a;->b()V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 10

    iput-object p2, p0, Lcom/loc/a;->D:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget-wide v2, p0, Lcom/loc/a;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const v4, 0x453b8000    # 3000.0f

    const/4 v5, 0x4

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    invoke-static {v5}, Lcom/loc/cw;->a([D)F

    move-result v5

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/loc/a;->s:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/a;->s:J

    :cond_2
    iget-wide v2, p0, Lcom/loc/a;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/a;->C:I

    move-object p2, p1

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    goto/16 :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/a;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/a;->C:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$a;
    .locals 1

    new-instance v0, Lcom/loc/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/a$a;-><init>(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$a;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/a$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->u:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v0, "apiKey"

    sget-object v1, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sha1AndPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->A:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startService"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/loc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/a;->v:Z

    return p1
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/loc/a;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/i;->a(Landroid/content/Context;)Lcom/loc/i;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->g:Lcom/loc/i;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/a$c;

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/a$c;-><init>(Lcom/loc/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    :goto_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/a$c;)V

    iput-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    :try_start_0
    new-instance v0, Lcom/loc/f;

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/loc/a$c;

    invoke-direct {v0, p0}, Lcom/loc/a$c;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/loc/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/loc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/a;->y:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/a$b;

    const-string v1, "locationThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/a$b;-><init>(Lcom/loc/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    invoke-virtual {v0}, Lcom/loc/a$b;->start()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/loc/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/a;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->f()V

    return-void
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/a;->p:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v4, p0, Lcom/loc/a;->p:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/loc/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/a;->w:Z

    return v0
.end method

.method static synthetic f(Lcom/loc/a;)I
    .locals 1

    iget v0, p0, Lcom/loc/a;->C:I

    return v0
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/a;->u:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/ct;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/loc/ct;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/loc/ct;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/ct;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$1;

    invoke-direct {v3, p0}, Lcom/loc/a$1;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/loc/ct;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$2;

    invoke-direct {v3, p0}, Lcom/loc/a$2;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/loc/a;->u:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/a;->g()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/loc/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/ct;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/ct;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/ct;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/a;->u:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/a;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->D:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic i(Lcom/loc/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/a;->g()V

    return-void
.end method


.method a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/a$b;->a:Z

    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    invoke-virtual {v0}, Lcom/loc/a$b;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$b;

    return-void
.end method

.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    new-instance v0, Lcom/amap/api/fence/Fence;

    invoke-direct {v0}, Lcom/amap/api/fence/Fence;-><init>()V

    iput-object p1, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide p2, v0, Lcom/amap/api/fence/Fence;->d:D

    iput-wide p4, v0, Lcom/amap/api/fence/Fence;->c:D

    iput p6, v0, Lcom/amap/api/fence/Fence;->e:F

    iput-object p9, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, p7, p8}, Lcom/amap/api/fence/Fence;->a(J)V

    iget-object v1, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/a;->e:Lcom/loc/f;

    iget-object v2, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z

    :cond_0
    return-void
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/a;->g:Lcom/loc/i;

    invoke-virtual {v1}, Lcom/loc/i;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4.0"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/a;->v:Z

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->y:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/a;->t:Z

    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0}, Lcom/loc/f;->a()V

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->A:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->A:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    :cond_2
    iput-object v2, p0, Lcom/loc/a;->A:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    invoke-virtual {v0, v2}, Lcom/loc/a$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0, p1}, Lcom/loc/f;->a(Landroid/app/PendingIntent;)Z

    :cond_0
    return-void
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0, p1, p2}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    return-void
.end method

.method public startAssistantLocation()V
    .locals 2

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/loc/a$c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iput-boolean v2, p0, Lcom/loc/a;->w:Z

    invoke-direct {p0}, Lcom/loc/a;->c()V

    sget-object v0, Lcom/loc/c;->a:[I

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    iput-boolean v2, p0, Lcom/loc/a;->z:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/loc/a;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->z:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stopAssistantLocation()V
    .locals 2

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$c;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/loc/a$c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopLocation()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/loc/a;->a()V

    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    iput-boolean v1, p0, Lcom/loc/a;->z:Z

    iput-boolean v1, p0, Lcom/loc/a;->n:Z

    iput-boolean v1, p0, Lcom/loc/a;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->w:Z

    iput-wide v2, p0, Lcom/loc/a;->p:J

    iput-wide v2, p0, Lcom/loc/a;->o:J

    iput v1, p0, Lcom/loc/a;->m:I

    iput v1, p0, Lcom/loc/a;->l:I

    iput-object v4, p0, Lcom/loc/a;->q:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/loc/a;->r:J

    iget-object v0, p0, Lcom/loc/a;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/loc/a;->C:I

    iput-object v4, p0, Lcom/loc/a;->D:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V

    :cond_1
    return-void
.end method
