.class public Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


.field private static a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

.field private static b:I


.field private c:Landroid/database/sqlite/SQLiteDatabase;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    .line 13
    const/4 v0, 0x4

    sput v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sget v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->b:I

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    invoke-direct {v0, p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    .line 27
    :cond_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    return-object v0
.end method

.method private a(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 62
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "DROP TABLE IF EXISTS activities"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "DROP TABLE IF EXISTS terminate"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TABLE IF EXISTS launch"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->b(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 79
    :cond_0
    return-void
.end method


.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p2, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    return-void
.end method
