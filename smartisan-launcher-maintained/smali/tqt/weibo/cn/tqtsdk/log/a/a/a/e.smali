.class public Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;
.super Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;
.source "LaunchTable.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-wide/16 v0, 0x0

    .line 39
    :goto_0
    return-wide v0

    .line 35
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "date"

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "time"

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "launch"

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;->a(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "launch"

    const-string v1, "session_id in "

    invoke-static {v0, v1, p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 56
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 57
    const-string v2, "select * from launch"

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_3

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-string v2, "session_id"

    .line 66
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 65
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    :cond_1
    const-string v3, "date"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    const-string v4, "time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 74
    :try_start_0
    const-string v6, "session_id"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v6, "date"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v3, "time"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_3
    return-object v0
.end method


.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "launch"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
