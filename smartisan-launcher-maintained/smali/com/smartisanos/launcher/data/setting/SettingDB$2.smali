.class final Lcom/smartisanos/launcher/data/setting/SettingDB$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "SettingDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/setting/SettingDB;->initLauncherSetting(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$values:Ljava/util/List;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 61
    iput-object p2, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$2;->val$values:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_settings"

    invoke-virtual {v1, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$2;->val$values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 66
    .local v0, "value":Landroid/content/ContentValues;
    invoke-static {}, Lcom/smartisanos/launcher/data/setting/SettingDB;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "A140"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert data ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_settings"

    invoke-virtual {v2, v3, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 69
    .end local v0    # "value":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
