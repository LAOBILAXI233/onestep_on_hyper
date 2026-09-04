.class public Lcom/loc/aj;
.super Ljava/lang/Object;
.source "DBOperation.java"


.field private a:Lcom/loc/al;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/loc/ai;


.method public constructor <init>(Landroid/content/Context;Lcom/loc/ai;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/loc/al;

    invoke-interface {p2}, Lcom/loc/ai;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/loc/ai;->b()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/al;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/ai;)V

    iput-object v0, p0, Lcom/loc/aj;->a:Lcom/loc/al;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aj;->a:Lcom/loc/al;

    invoke-virtual {v0}, Lcom/loc/al;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string v1, "DBOperation"

    const-string v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ak;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/loc/ak",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/loc/ak;->a()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aj;->a:Lcom/loc/al;

    invoke-virtual {v0}, Lcom/loc/al;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DBOperation"

    const-string v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


.method public a(Lcom/loc/ak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ak",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/loc/aj;->a(Lcom/loc/ak;Z)V

    return-void
.end method

.method public a(Lcom/loc/ak;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ak",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/aj;->a(Lcom/loc/ak;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/loc/ak;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ak",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/aj;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/loc/aj;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ak;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "insertData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Lcom/loc/ak;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ak",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/aj;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "deleteData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Lcom/loc/ak;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ak",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    monitor-enter v1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/loc/ak;->a()Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, p3}, Lcom/loc/aj;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_7

    :try_start_4
    const-string v2, "DataBase"

    const-string v3, "updateData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_8
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public b(Ljava/lang/String;Lcom/loc/ak;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ak",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/loc/aj;->c:Lcom/loc/ai;

    monitor-enter v10

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/loc/aj;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ak;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v8

    goto :goto_0

    :cond_5
    :goto_3
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2, v1}, Lcom/loc/ak;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_4
    if-nez p3, :cond_6

    :try_start_7
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    if-eqz v1, :cond_7

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_8
    :goto_6
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_7
    if-eqz v1, :cond_9

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_9
    :goto_8
    :try_start_c
    iget-object v1, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_a
    :goto_9
    :try_start_d
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :catch_1
    move-exception v1

    if-nez p3, :cond_9

    :try_start_e
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_2
    move-exception v1

    if-nez p3, :cond_a

    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_3
    move-exception v0

    if-nez p3, :cond_7

    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v0

    if-nez p3, :cond_8

    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v0

    if-nez p3, :cond_3

    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    if-nez p3, :cond_4

    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    :cond_b
    if-eqz v1, :cond_c

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_c
    :goto_a
    :try_start_10
    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/aj;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_6

    :catch_7
    move-exception v0

    if-nez p3, :cond_8

    :try_start_11
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception v0

    if-nez p3, :cond_c

    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catch_9
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4
.end method

.method public b(Ljava/lang/String;Lcom/loc/ak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ak",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/aj;->a(Ljava/lang/String;Lcom/loc/ak;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ak",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
