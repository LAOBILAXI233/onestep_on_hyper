.class public Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;
.super Ljava/lang/Object;
.source "LogManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;,
        Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;
    }
.end annotation


.field private static a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

.field private static b:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;


.field private A:J

.field private B:Z

.field private C:Z

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:J

.field private z:J


.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 35
    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->c:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->e:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->f:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g:Ljava/lang/String;

    .line 42
    const-string v0, "http://m.beacon.sina.com.cn/mstat"

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->h:Ljava/lang/String;

    .line 43
    const-string v0, "Android OS"

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->i:Ljava/lang/String;

    .line 44
    const-string v0, "3.0.1"

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->j:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->k:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->l:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->m:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->n:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->o:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->p:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->q:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->r:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->s:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->t:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->u:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    .line 58
    iput v4, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    .line 60
    iput v4, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->x:I

    .line 62
    iput-wide v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->y:J

    .line 63
    iput-wide v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->z:J

    .line 64
    iput-wide v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->A:J

    .line 65
    iput-boolean v5, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->B:Z

    .line 66
    iput-boolean v5, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->C:Z

    .line 68
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->k:Landroid/content/Context;

    .line 69
    invoke-static {p1, p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    .line 71
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->h()V

    .line 72
    return-void
.end method

.method static synthetic a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    return v0
.end method

.method static synthetic a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    return p1
.end method

.method private a(Ljava/lang/Boolean;)J
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->y:J

    .line 168
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 170
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 171
    const-string v1, "%01d%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->s:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 172
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 171
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g()V

    .line 180
    :cond_0
    return-wide v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    const-string v0, ""

    .line 313
    :try_start_0
    const-string v2, "body"

    invoke-direct {p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v2, "header"

    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->j()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0

    .line 316
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-direct {v0, p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 87
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->f:Ljava/lang/String;

    .line 89
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->e:Ljava/lang/String;

    .line 90
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g:Ljava/lang/String;

    .line 91
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d:Ljava/lang/String;

    .line 92
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/b;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->B:Z

    .line 94
    :cond_0
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a()Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->x:I

    return v0
.end method

.method static synthetic b(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->x:I

    return p1
.end method

.method private b(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 354
    :try_start_0
    const-string v1, "terminate"

    .line 355
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v1, "event"

    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string v1, "launch"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    .line 358
    invoke-static {p1, v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 357
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->f()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 116
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->e()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->k:Landroid/content/Context;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->l:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->m:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->n:Ljava/lang/String;

    .line 141
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->o:Ljava/lang/String;

    .line 142
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->p:Ljava/lang/String;

    .line 143
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->u:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->q:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->r:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->q:Ljava/lang/String;

    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->s:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->t:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->y:J

    .line 200
    iput-wide v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->z:J

    .line 201
    iput-wide v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->A:J

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    .line 203
    iput v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    .line 204
    iput v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->x:I

    .line 205
    return-void
.end method

.method private j()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 328
    :try_start_0
    const-string v1, "resolution"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v1, "carrier"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v1, "access"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v1, "chwm"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "os"

    const-string v2, "Android OS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "os_version"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v1, "from"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v1, "stat_version"

    const-string v2, "3.0.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v1, "appkey"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v1, "mac"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v1, "device_id"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v1, "wm"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "imei"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v1, "uid"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v1, "new_uid"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v1, "model"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-object v0

    .line 344
    :catch_0
    move-exception v1

    goto :goto_0
.end method


.method public a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 250
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    .line 251
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    const-string v1, "useraction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->w:I

    .line 246
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->B:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ljava/lang/Boolean;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->C:Z

    .line 192
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->v:Ljava/lang/String;

    iget-wide v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->y:J

    invoke-static {v0, v2, v3}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 193
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->i()V

    .line 194
    const/4 v2, 0x0

    sput-object v2, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 195
    return-wide v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;-><init>(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)V

    .line 305
    new-instance v1, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;

    invoke-direct {v1, p0, v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;-><init>(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method
