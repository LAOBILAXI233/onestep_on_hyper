.class public Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;
.super Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;
.source "TerminateTable.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v2

    .line 99
    :cond_0
    :goto_0
    return-wide v0

    .line 88
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 89
    const-string v0, "session_id"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "date"

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "time"

    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "duration"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a(JLjava/lang/Boolean;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 94
    const-string v0, "terminate"

    const-string v1, "session_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v8

    invoke-virtual {v5, v0, v4, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 96
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 97
    const-string v0, "terminate"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

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
    const-string v0, "terminate"

    const-string v1, "session_id in "

    invoke-static {v0, v1, p0}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 48
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->d()Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 49
    const-string v2, "select * from terminate"

    .line 50
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "session_id"

    .line 59
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 58
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "date"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v4, "time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-string v5, "duration"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 63
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    const-string v7, "session_id"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v7, "date"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v3, "time"

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v3, "duration"

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v3, "activities"

    .line 70
    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 69
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_2
    return-object v0
.end method


.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "terminate"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
