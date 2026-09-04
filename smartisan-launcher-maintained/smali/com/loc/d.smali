.class public Lcom/loc/d;
.super Ljava/lang/Object;
.source "APSServiceCore.java"

.implements Lcom/amap/api/location/APSServiceBase;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/d$c;,
        Lcom/loc/d$a;,
        Lcom/loc/d$b;
    }
.end annotation


.field private A:Z

.field private B:Lcom/loc/bv;

.field private C:Z

.field private D:Ljava/lang/String;

.field a:Landroid/content/Context;

.field b:Z

.field c:Landroid/os/Messenger;

.field d:Ljava/lang/String;

.field e:Lcom/loc/d$b;

.field f:Lcom/loc/d$a;

.field g:Z

.field h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Ljava/lang/Object;

.field m:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field n:J

.field o:Lorg/json/JSONObject;

.field p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field q:Ljava/net/ServerSocket;

.field r:Z

.field s:Ljava/net/Socket;

.field t:Z

.field u:Lcom/loc/d$c;

.field private volatile v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/d;->b:Z

    iput-object v3, p0, Lcom/loc/d;->c:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/loc/d;->v:Z

    iput-boolean v2, p0, Lcom/loc/d;->w:Z

    iput-boolean v2, p0, Lcom/loc/d;->x:Z

    iput-object v3, p0, Lcom/loc/d;->d:Ljava/lang/String;

    new-instance v0, Lcom/loc/d$b;

    invoke-direct {v0, p0, p0}, Lcom/loc/d$b;-><init>(Lcom/loc/d;Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    iput-object v3, p0, Lcom/loc/d;->f:Lcom/loc/d$a;

    iput-boolean v2, p0, Lcom/loc/d;->g:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->i:Ljava/util/Vector;

    iput v2, p0, Lcom/loc/d;->y:I

    iput-boolean v2, p0, Lcom/loc/d;->z:Z

    iput-boolean v2, p0, Lcom/loc/d;->A:Z

    iput-object v3, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    iput-boolean v2, p0, Lcom/loc/d;->j:Z

    iput-boolean v2, p0, Lcom/loc/d;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->n:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/d;->D:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/d;->r:Z

    iput-object v3, p0, Lcom/loc/d;->s:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/d;->t:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/loc/d;)I
    .locals 1

    iget v0, p0, Lcom/loc/d;->y:I

    return v0
.end method

.method private a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    invoke-virtual {v0, p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/loc/d;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0, p1}, Lcom/loc/bv;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/loc/d;->D:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/loc/ct;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-static {v0}, Lcom/loc/ct;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/d;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->c:Landroid/os/Messenger;

    :cond_1
    invoke-static {}, Lcom/loc/ct;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/bv;->a()V

    :cond_2
    invoke-static {}, Lcom/loc/ct;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/loc/d;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->z:Z

    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->sendEmptyMessage(I)Z

    :cond_3
    invoke-static {}, Lcom/loc/ct;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/loc/d;->A:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->A:Z

    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/d;Landroid/os/Messenger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7530

    :try_start_0
    const-string v1, "jsonp1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    if-le v6, v9, :cond_5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v6, :cond_5

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    :try_start_3
    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v6, v5, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-le v7, v9, :cond_3

    const-string v7, "to"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    const-string v7, "callback"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    aget-object v0, v6, v7

    :cond_2
    const-string v7, "_"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :cond_5
    :try_start_4
    sget v4, Lcom/loc/e;->j:I

    sput v0, Lcom/loc/e;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cw;->d(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    :try_start_5
    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/loc/bv;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "({\'package\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\',\'error_code\':"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\'error\':\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'})"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :cond_7
    :try_start_6
    sput v4, Lcom/loc/e;->j:I

    :cond_8
    :goto_2
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cw;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    :cond_9
    :try_start_7
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_9
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    const-string v5, "APSServiceCore"

    const-string v6, "invoke part1"

    invoke-static {v0, v5, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    sput v4, Lcom/loc/e;->j:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "({\'package\':\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/loc/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "APSServiceCore"

    const-string v4, "invoke part2"

    invoke-static {v0, v1, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_f
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_10
    sput v4, Lcom/loc/e;->j:I

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    :try_start_11
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-direct {v1, v4, v5, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v4, "HTTP/1.0 200 OK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :goto_6
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    :cond_a
    :try_start_14
    iget-object v0, p0, Lcom/loc/d;->p:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'precision\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'x\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "},\'version_code\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "2.4.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'version\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "2.4.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v3

    goto/16 :goto_3

    :catch_5
    move-exception v1

    :try_start_15
    const-string v3, "APSServiceCore"

    const-string v4, "invoke part3"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :try_start_17
    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    :goto_7
    :try_start_19
    throw v0

    :catch_7
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_8
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_6

    :catch_9
    move-exception v0

    :try_start_1a
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_1c
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_8
    :try_start_1e
    throw v0

    :catch_b
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1

    goto :goto_8

    :catch_c
    move-exception v0

    :try_start_1f
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_21
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    :goto_9
    :try_start_23
    throw v0

    :catch_e
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4

    :catch_10
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0, p1}, Lcom/loc/bv;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/d;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/loc/d;)I
    .locals 2

    iget v0, p0, Lcom/loc/d;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/d;->y:I

    return v0
.end method

.method static synthetic b(Lcom/loc/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/d;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/loc/d;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/loc/d;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->i()V

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v1, p0, Lcom/loc/d;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->j:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/bv;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "bindService"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->w:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->w:Z

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    iget-object v1, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/bv;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/loc/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/d;->C:Z

    return v0
.end method

.method static synthetic f(Lcom/loc/d;)Lcom/loc/bv;
    .locals 1

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    return-object v0
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->v:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/loc/d;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/d;->C:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/d;->D:Ljava/lang/String;

    const-string v1, "APSServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/loc/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/d;->D:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/e;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    iget-object v2, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/loc/bv;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/bv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/d;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v2, "key"

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v2, "X-INFO"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "User-Agent"

    const-string v2, "AMAP_Location_SDK_Android 2.4.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "netloc"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "gpsstatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "nbssid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "reversegeo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "isOffset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "isOffset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "wait1stwifi"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "autoup"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    const-string v1, "wifiactivescan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/loc/d;->v:Z

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    iget-object v1, p0, Lcom/loc/d;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/loc/bv;->a(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/d;->D:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/d;->C:Z

    const-string v2, "APSServiceCore"

    const-string v3, "doInit part1"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/d;->D:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/d;->C:Z

    const-string v1, "APSServiceCore"

    const-string v2, "doInit part2"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/d;->D:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/loc/d;->C:Z

    const-string v1, "APSServiceCore"

    const-string v2, "doInit part3"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private h()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/d;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->x:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->A:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/d;->y:I

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/bv;->b()V

    iget-object v0, p0, Lcom/loc/d;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {}, Lcom/loc/ab;->a()V

    iget-boolean v0, p0, Lcom/loc/d;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/d;)Z
    .locals 1

    invoke-direct {p0}, Lcom/loc/d;->c()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/bv;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/d;->x:Z

    return v0
.end method

.method static synthetic j(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->e()V

    return-void
.end method

.method static synthetic k(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->d()V

    return-void
.end method

.method static synthetic l(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->h()V

    return-void
.end method

.method static synthetic m(Lcom/loc/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/d;->v:Z

    return v0
.end method

.method static synthetic n(Lcom/loc/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/d;->g()V

    return-void
.end method


.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/d$c;

    invoke-direct {v0, p0}, Lcom/loc/d$c;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->u:Lcom/loc/d$c;

    iget-object v0, p0, Lcom/loc/d;->u:Lcom/loc/d$c;

    invoke-virtual {v0}, Lcom/loc/d$c;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->t:Z
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
    const-string v1, "APSServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iget-object v0, p0, Lcom/loc/d;->s:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/d;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/loc/d;->q:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/d;->u:Lcom/loc/d$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "APSServiceCore"

    const-string v2, "stopScocket"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$b;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/bv;

    invoke-direct {v0}, Lcom/loc/bv;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->B:Lcom/loc/bv;

    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->j:Z

    new-instance v0, Lcom/loc/d$a;

    invoke-direct {v0, p0}, Lcom/loc/d$a;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->f:Lcom/loc/d$a;

    iget-object v0, p0, Lcom/loc/d;->f:Lcom/loc/d$a;

    const-string v1, "serviceThread"

    invoke-virtual {v0, v1}, Lcom/loc/d$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/d;->f:Lcom/loc/d$a;

    invoke-virtual {v0}, Lcom/loc/d$a;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/loc/d;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/d;->j:Z

    iget-object v0, p0, Lcom/loc/d;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
