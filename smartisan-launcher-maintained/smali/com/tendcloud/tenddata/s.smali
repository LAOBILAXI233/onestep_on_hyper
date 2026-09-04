.class public final Lcom/tendcloud/tenddata/s;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/ao;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/s$b;,
        Lcom/tendcloud/tenddata/s$a;
    }
.end annotation


.field private static final A:Ljava/lang/String; = "TDpref.apps_send_time.key"

.field private static final B:Ljava/lang/String; = "TDpref.ip"

.field private static final C:Ljava/lang/String; = "TDpref.last.sdk.check"

.field private static final D:Ljava/lang/String; = "TD_APP_ID"

.field private static final E:Ljava/lang/String; = "TD_CHANNEL_ID"

.field private static final F:Ljava/lang/String; = "pref_longtime"

.field private static final G:Ljava/lang/String; = "pref_shorttime"

.field private static final H:J = 0x7530L

.field private static final I:I = 0x64

.field private static final J:I = 0x1388

.field private static final K:I = 0x0

.field private static final L:I = 0x1

.field private static final M:I = 0x2

.field private static final N:I = 0x3

.field private static final O:I = 0x4

.field private static final P:I = 0x5

.field private static volatile Q:Z = false

.field private static R:Ljava/lang/String; = null

.field private static S:Landroid/content/Context; = null

.field private static T:Ljava/lang/String; = null

.field private static U:J = 0x0L

.field private static V:Z = false

.field private static W:Z = false

.field protected static final a:I = 0x1d4c0

.field protected static final b:I = 0x6

.field protected static final c:I = 0x7

.field protected static final d:I = 0x8

.field static e:[[Ljava/lang/Long; = null

.field static f:Z = false

.field static g:Landroid/app/Application; = null

.field static volatile h:Z = false

.field static i:Z = false

.field static j:Ljava/lang/Object; = null

.field static k:Ljava/lang/Object; = null

.field static l:Ljava/nio/channels/FileChannel; = null

.field static m:Lcom/tendcloud/tenddata/n; = null

.field static n:Lcom/tendcloud/tenddata/al; = null

.field static o:Z = false

.field static p:Z = false

.field static q:Ljava/util/Random; = null

.field private static final r:Ljava/lang/String; = "+V1.2.61"

.field private static final s:Ljava/lang/String; = "Android+TD+V1.2.61"

.field private static final t:Ljava/lang/String; = "TDpref.profile.key"

.field private static final u:Ljava/lang/String; = "TDpref.session.key"

.field private static final v:Ljava/lang/String; = "TDpref.lastactivity.key"

.field private static final w:Ljava/lang/String; = "TDpref.start.key"

.field private static final x:Ljava/lang/String; = "TDpref.init.key"

.field private static final y:Ljava/lang/String; = "TDpref.actstart.key"

.field private static final z:Ljava/lang/String; = "TDpref.end.key"


.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->Q:Z

    const-string v0, "TalkingData"

    sput-object v0, Lcom/tendcloud/tenddata/s;->R:Ljava/lang/String;

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->V:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->W:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->h:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->i:Z

    invoke-static {}, Lcom/tendcloud/tenddata/s;->u()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->o:Z

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->p:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/s;->q:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A()V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v2, "pref_longtime"

    const-string v3, "TDpref.apps_send_time.key"

    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static B()V
    .locals 8

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bc;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    :cond_0
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/g;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/g;-><init>()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/g;->b:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/g;->a:D

    :cond_2
    sget-object v1, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    iput-object v0, v1, Lcom/tendcloud/tenddata/al;->c:Lcom/tendcloud/tenddata/g;

    sget-object v1, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bb;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iput v0, v1, Lcom/tendcloud/tenddata/al;->k:I

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bb;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->l:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bb;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->o:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bb;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->n:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/bc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tendcloud/tenddata/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->p:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bb;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->t:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/bc;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->k()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tendcloud/tenddata/s;->q:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_3
    sget-object v1, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/tendcloud/tenddata/al;->u:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static C()V
    .locals 5

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/bb;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "imeis"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveImeisInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/tendcloud/tenddata/ae;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, "__tx.env"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static D()V
    .locals 4

    invoke-static {}, Lcom/tendcloud/tenddata/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "SerialNo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, "__tx.env"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v1, v3

    if-le v1, v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/tendcloud/tenddata/s;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(IJ)V
    .locals 3

    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static a(J)V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.start.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static a(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/tendcloud/tenddata/s;->c(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/s;->c(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/s;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p2

    move-wide v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tendcloud/tenddata/s;->U:J

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x6

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(IJ)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/s;->e(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/bi;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/bi;-><init>(Lcom/tendcloud/tenddata/s;ILjava/lang/String;ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/os/Message;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x1

    :try_start_0
    iget v0, p0, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->o:Z

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/e;->a(Landroid/content/Context;)V

    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    :goto_0
    sget-boolean v4, Lcom/tendcloud/tenddata/s;->i:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1

    :cond_1
    :pswitch_1
    move v2, v0

    move v0, v3

    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/e;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/s;->l:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tendcloud/tenddata/s;->l:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/d;->c()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tendcloud/tenddata/s;->o:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    :try_start_4
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->i:Z

    if-nez v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->i:Z

    if-nez v0, :cond_5

    iget v0, p0, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_5

    invoke-static {}, Lcom/tendcloud/tenddata/s;->v()V

    :cond_5
    const/16 v0, 0x8

    const v1, 0x1d4c0

    sget-object v2, Lcom/tendcloud/tenddata/s;->q:Ljava/util/Random;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7530

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(IJ)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->o:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->p:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(IJ)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :pswitch_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/s;->d(Landroid/os/Message;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/s$a;

    iget-wide v4, v0, Lcom/tendcloud/tenddata/s$a;->c:J

    iget-object v6, v0, Lcom/tendcloud/tenddata/s$a;->d:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tendcloud/tenddata/e;->a(JLjava/lang/String;)J

    iget-wide v4, v0, Lcom/tendcloud/tenddata/s$a;->c:J

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/s;->d(J)V

    move v0, v3

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/s;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tendcloud/tenddata/s;->d(J)V

    :cond_8
    move v0, v2

    move v3, v2

    goto/16 :goto_0

    :pswitch_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    sget-object v4, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v4}, Lcom/tendcloud/tenddata/s;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tendcloud/tenddata/s;->b(Landroid/os/Message;)V

    move v8, v0

    move v0, v2

    move v2, v8

    goto/16 :goto_1

    :pswitch_6
    invoke-static {p0}, Lcom/tendcloud/tenddata/s;->b(Landroid/os/Message;)V

    move v2, v0

    move v0, v3

    goto/16 :goto_1

    :pswitch_7
    invoke-static {p0}, Lcom/tendcloud/tenddata/s;->c(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move v2, v0

    move v0, v3

    goto/16 :goto_1

    :pswitch_8
    move v0, v2

    goto/16 :goto_1

    :pswitch_9
    move v8, v0

    move v0, v2

    move v2, v8

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_9
    :goto_7
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/s;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/s;->d(Landroid/content/Context;)V

    return-void
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V
    .locals 7

    const/16 v0, 0x32

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v1, v4

    add-int/lit8 v2, v1, -0x1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    move v1, v2

    move v2, v6

    :goto_0
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    aget-object v3, v4, v1

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caused by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    if-gt v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-lt p3, v0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v4, p2, v0}, Lcom/tendcloud/tenddata/s;->a(Ljava/lang/StringBuilder;[Ljava/lang/StackTraceElement;Ljava/lang/Throwable;I)V

    goto :goto_3
.end method

.method static synthetic a(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/s;->b(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/tendcloud/tenddata/s;->f:Z

    return-void
.end method

.method static b(J)V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.init.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget v2, p0, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/s;->n()J

    move-result-wide v4

    invoke-static {}, Lcom/tendcloud/tenddata/s;->q()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :goto_0
    if-nez p0, :cond_2

    const/4 v0, 0x0

    :goto_1
    sub-long v2, v6, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {v6, v7}, Lcom/tendcloud/tenddata/s;->e(J)V

    const-string v2, ""

    invoke-static {v6, v7, v0, v2, v1}, Lcom/tendcloud/tenddata/s;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    move-wide v2, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tendcloud/tenddata/s;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v0, v2, v1}, Lcom/tendcloud/tenddata/s;->a(JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.session.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;Z)V
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tendcloud/tenddata/s;->Q:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/tendcloud/tenddata/s$a;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/s$a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tendcloud/tenddata/s$a;->c:J

    invoke-static {p0}, Lcom/tendcloud/tenddata/s;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tendcloud/tenddata/s$a;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    :goto_2
    const/4 v6, 0x3

    if-ge v0, v6, :cond_7

    array-length v6, v3

    if-ge v1, v6, :cond_7

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "java."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string v7, "javax."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "javax."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_4
    const-string v7, "android."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_5
    const-string v7, "com.android."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "com.android."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_6
    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tendcloud/tenddata/s$a;->e:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/e;->a(Landroid/content/Context;)V

    iget-wide v0, v2, Lcom/tendcloud/tenddata/s$a;->c:J

    iget-object v3, v2, Lcom/tendcloud/tenddata/s$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/tendcloud/tenddata/e;->a(JLjava/lang/String;)J

    iget-wide v0, v2, Lcom/tendcloud/tenddata/s$a;->c:J

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/s;->d(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/e;->b()V

    goto/16 :goto_0
.end method

.method static b(Z)V
    .locals 5

    sget-object v2, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v3, "pref_longtime"

    const-string v4, "TDpref.profile.key"

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v0, v1}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static c(J)V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.actstart.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static c(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tendcloud/tenddata/s;->U:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/tendcloud/tenddata/s;->U:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/tendcloud/tenddata/e;->a(JJ)V

    :cond_0
    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/s;->d(J)V

    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x7

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/tendcloud/tenddata/s;->a(IJ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/tendcloud/tenddata/s;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static d(J)V
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.end.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/s;->g:Landroid/app/Application;

    :cond_0
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/s;->g:Landroid/app/Application;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->V:Z

    if-nez v0, :cond_1

    const-string v0, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/s;->g:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerActivityLifecycleCallbacks"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/v;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/v;-><init>(Lcom/tendcloud/tenddata/s;)V

    sget-object v2, Lcom/tendcloud/tenddata/s;->g:Landroid/app/Application;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->V:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    sput-object p1, Lcom/tendcloud/tenddata/s;->g:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static d(Landroid/os/Message;)V
    .locals 7

    invoke-static {}, Lcom/tendcloud/tenddata/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/s$a;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tendcloud/tenddata/s$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/tendcloud/tenddata/s$a;->b:Ljava/lang/String;

    iget-wide v4, v0, Lcom/tendcloud/tenddata/s$a;->f:J

    iget-object v6, v0, Lcom/tendcloud/tenddata/s$a;->g:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Z

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.ip"

    invoke-static {v0, v1, v2, p0}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(J)V
    .locals 8

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/s;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tendcloud/tenddata/s;->q()J

    move-result-wide v6

    sub-long v2, p0, v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/s;->b(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/s;->a(J)V

    move-wide v2, p0

    invoke-static/range {v1 .. v6}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;JJI)J

    return-void

    :cond_0
    move-wide v4, v2

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private e(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v0, "com.baidu.location.LocationClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.baidu.location.BDLocationListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerLocationListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v1, Lcom/tendcloud/tenddata/bh;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/bh;-><init>(Lcom/tendcloud/tenddata/s;)V

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isStarted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "requestLocation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/tendcloud/tenddata/s;->n()J

    move-result-wide v0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->q()J

    move-result-wide v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x3e8

    :cond_0
    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/e;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method static f()V
    .locals 1

    invoke-static {}, Lcom/tendcloud/tenddata/s;->A()V

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Long;

    sput-object v0, Lcom/tendcloud/tenddata/s;->e:[[Ljava/lang/Long;

    return-void
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static g()I
    .locals 8

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.apps_send_time.key"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    const-wide/16 v4, 0x64

    div-long v4, v0, v4

    div-int/lit8 v3, v2, 0x64

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected static h()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/s;->T:Ljava/lang/String;

    return-object v0
.end method

.method static j()Ljava/lang/String;
    .locals 27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string v2, "com.baidu.location.BDLocation"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v2, "getLocType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v2, 0x0

    sparse-switch v3, :sswitch_data_0

    move-object v3, v2

    :goto_0
    const-string v2, "getLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v6, "getLongitude"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "hasAltitude"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "getAltitude"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v9, "getTime"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "hasRadius"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sget-object v11, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "getRadius"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v12, "com.baidu.location.LocationClient"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getLocOption"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sget-object v14, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "com.baidu.location.LocationClientOption"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getCoorType"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const-string v15, "hasSpeed"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v16, "getSpeed"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    const-string v17, "getDirection"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const-string v18, "hasAddr"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sget-object v19, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const-string v19, "getAddrStr"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    const-string v20, "getProvince"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const-string v21, "getCity"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    const-string v22, "getCityCode"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    const-string v23, "getDistrict"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    const-string v24, "getStreet"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    const-string v25, "getStreetNumber"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v3, :cond_0

    sget-object v25, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v25, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v7, :cond_3

    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v10, :cond_4

    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v11, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v14, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v15, :cond_5

    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/16 v2, 0x2c

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v18, :cond_6

    sget-object v2, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/tendcloud/tenddata/s;->k:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "requestLocation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/tendcloud/tenddata/s;->j:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_0
    :try_start_3
    const-string v2, "baidu-gps"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "baidu-network"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "baidu-offline"

    move-object v3, v2

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "baidu-cached"

    move-object v3, v2

    goto/16 :goto_0

    :cond_3
    const-string v2, ""

    goto/16 :goto_1

    :cond_4
    const-string v2, ""

    goto/16 :goto_2

    :cond_5
    const-string v2, ""

    goto/16 :goto_3

    :cond_6
    const-string v2, ",,,,,,,"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x41 -> :sswitch_3
        0x42 -> :sswitch_2
        0xa1 -> :sswitch_1
    .end sparse-switch
.end method

.method static k()Z
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.profile.key"

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static l()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.session.key"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.lastactivity.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n()J
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.start.key"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static o()J
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.init.key"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static p()J
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.actstart.key"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static q()J
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_shorttime"

    const-string v2, "TDpref.end.key"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static r()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.ip"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static s()Lcom/tendcloud/tenddata/n;
    .locals 4

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/n;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/n;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/n;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/n;->b:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/r;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/n;->c:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    invoke-static {}, Lcom/tendcloud/tenddata/s;->o()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/n;->d:J

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    const-string v1, "Android+TD+V1.2.61"

    iput-object v1, v0, Lcom/tendcloud/tenddata/n;->e:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->R:Ljava/lang/String;

    iput-object v1, v0, Lcom/tendcloud/tenddata/n;->f:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/r;->e(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/n;->h:J

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/r;->f(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/n;->i:J

    sget-object v0, Lcom/tendcloud/tenddata/s;->m:Lcom/tendcloud/tenddata/n;

    goto :goto_0
.end method

.method static t()Lcom/tendcloud/tenddata/al;
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/al;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/al;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->s:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    invoke-static {}, Lcom/tendcloud/tenddata/w;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->a:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    invoke-static {}, Lcom/tendcloud/tenddata/w;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->b:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->d:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->e:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    invoke-static {}, Lcom/tendcloud/tenddata/w;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->f:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/bb;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->g:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    invoke-static {}, Lcom/tendcloud/tenddata/w;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->h:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/tendcloud/tenddata/al;->i:I

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/al;->j:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/s;->B()V

    sget-object v0, Lcom/tendcloud/tenddata/s;->n:Lcom/tendcloud/tenddata/al;

    goto :goto_0
.end method

.method public static u()V
    .locals 1

    new-instance v0, Lcom/tendcloud/tenddata/s$b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/s$b;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static v()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v0, 0x3b6

    if-lt v1, v5, :cond_0

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/16 v0, 0xc8

    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/s;->q:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "loc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/bc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tendcloud/tenddata/s;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "net"

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/bb;->r(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/bc;->f(Landroid/content/Context;)[[Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ruas"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ras"

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    const-string v2, "__tx.env"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic w()V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->C()V

    return-void
.end method

.method static synthetic x()V
    .locals 0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->D()V

    return-void
.end method

.method static synthetic y()Z
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z

    return v0
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/s;->T:Ljava/lang/String;

    return-object v0
.end method


.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "+V1.2.61"

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tendcloud/tenddata/s;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->V:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/s;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "TDLog"

    const-string v1, "onResume# APP ID not allow empty. Please check it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "TDLog"

    const-string v1, "onResume# SDK initialize failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tendcloud/tenddata/s;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->V:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/s;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->W:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->W:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TD_APP_ID"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/s;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TD_CHANNEL_ID"

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/s;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "TDLog"

    const-string v1, "TD_APP_ID not found in AndroidManifest.xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_2

    :try_start_2
    const-string v0, "TalkingData"

    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-boolean v1, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "TDLog"

    const-string v2, "init# Failed to load meta-data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/tendcloud/tenddata/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    sput-object p1, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "TDLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TalkingData Analytics init# APPID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SDK Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Android+TD+V1.2.61"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type:Android_Native_SDK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/an;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "TDLog"

    const-string v1, "init# stop working...application do not have permission to send data, you must add <uses-permission android:name=\"android.permission.INTERNET\"/> to your AndroidManifest.xml."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sput-object p2, Lcom/tendcloud/tenddata/s;->T:Ljava/lang/String;

    sput-object p3, Lcom/tendcloud/tenddata/s;->R:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/s;->e(Landroid/content/Context;)V

    new-instance v0, Lcom/tendcloud/tenddata/bj;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/bj;-><init>(Lcom/tendcloud/tenddata/s;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lcom/tendcloud/tenddata/s$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/s$a;-><init>()V

    iput-object p2, v0, Lcom/tendcloud/tenddata/s$a;->a:Ljava/lang/String;

    iput-object p3, v0, Lcom/tendcloud/tenddata/s$a;->b:Ljava/lang/String;

    iput-object p4, v0, Lcom/tendcloud/tenddata/s$a;->g:Ljava/util/Map;

    new-instance v1, Lcom/tendcloud/tenddata/bf;

    invoke-direct {v1, p0, v0}, Lcom/tendcloud/tenddata/bf;-><init>(Lcom/tendcloud/tenddata/s;Lcom/tendcloud/tenddata/s$a;)V

    invoke-static {v1}, Lcom/tendcloud/tenddata/an;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/bk;

    invoke-direct {v0, p0, p2}, Lcom/tendcloud/tenddata/bk;-><init>(Lcom/tendcloud/tenddata/s;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.last.sdk.check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/a;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tendcloud/tenddata/s;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/tendcloud/tenddata/s;->V:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/s;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method b(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/s;->W:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public b()Z
    .locals 6

    sget-object v0, Lcom/tendcloud/tenddata/s;->S:Landroid/content/Context;

    const-string v1, "pref_longtime"

    const-string v2, "TDpref.last.sdk.check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tendcloud/tenddata/aw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/tendcloud/tenddata/s;->q:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    long-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "https://u.talkingdata.net/ota/a/TD/android/ver"

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tendcloud/tenddata/s;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    sput-boolean p1, Lcom/tendcloud/tenddata/TCAgent;->d:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "https://u.talkingdata.net/ota/a/TD/android/sdk.zip"

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method
