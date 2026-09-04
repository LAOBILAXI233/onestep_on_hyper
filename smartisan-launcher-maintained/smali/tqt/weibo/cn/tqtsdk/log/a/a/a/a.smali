.class public abstract Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;
.super Ljava/lang/Object;
.source "AbsTable.java"


.field private static final a:[Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;

    const/4 v1, 0x0

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;

    invoke-direct {v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;

    invoke-direct {v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/a/a/a/b;

    invoke-direct {v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;

    invoke-direct {v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a:[Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\',"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const-string v3, ")"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    :goto_1
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 36
    sget-object v1, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a:[Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 37
    invoke-virtual {v3}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method


.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " table must have one field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
