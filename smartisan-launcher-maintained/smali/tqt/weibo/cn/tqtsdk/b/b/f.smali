.class public Ltqt/weibo/cn/tqtsdk/b/b/f;
.super Ljava/lang/Object;
.source "NetworkManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltqt/weibo/cn/tqtsdk/b/b/f$a;
    }
.end annotation


.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:[B

.field public static c:I

.field public static d:Z

.field public static e:Ljava/io/File;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    sput-object v1, Ltqt/weibo/cn/tqtsdk/b/b/f;->a:Ljava/util/HashMap;

    .line 14
    sput-object v1, Ltqt/weibo/cn/tqtsdk/b/b/f;->b:[B

    .line 15
    const/4 v0, -0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/b/b/f;->c:I

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Ltqt/weibo/cn/tqtsdk/b/b/f;->d:Z

    .line 17
    sput-object v1, Ltqt/weibo/cn/tqtsdk/b/b/f;->e:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ltqt/weibo/cn/tqtsdk/b/b/f$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/b/b/f;-><init>()V

    return-void
.end method

.method public static a()Ltqt/weibo/cn/tqtsdk/b/b/f;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ltqt/weibo/cn/tqtsdk/b/b/f$a;->a:Ltqt/weibo/cn/tqtsdk/b/b/f;

    return-object v0
.end method


.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BIZ",
            "Ljava/io/File;",
            "Ltqt/weibo/cn/tqtsdk/b/b/e;",
            "Ltqt/weibo/cn/tqtsdk/b/b/a;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-static {p2, p3, p4, p5}, Ltqt/weibo/cn/tqtsdk/b/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Ltqt/weibo/cn/tqtsdk/b/b/f;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V
    .locals 11

    .prologue
    .line 49
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Ltqt/weibo/cn/tqtsdk/b/b/f;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V

    .line 51
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V
    .locals 0

    .prologue
    .line 75
    invoke-static/range {p1 .. p10}, Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V

    .line 78
    return-void
.end method
