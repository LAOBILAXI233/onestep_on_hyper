.class final Lcom/smartisanos/launcher/data/setting/SettingDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "SettingDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/setting/SettingDB;->isLauncherSettingExist()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 38
    const-string v2, "table_settings"

    invoke-static {v2}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    new-instance v1, Lcom/smartisanos/launcher/data/table/SETTING;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/table/SETTING;-><init>()V

    .line 40
    .local v1, "setting":Lcom/smartisanos/launcher/data/table/SETTING;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/table/SETTING;->createSQL()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "createTableSql":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/smartisanos/launcher/data/setting/SettingDB$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v3, -0x1

    iput v3, v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 43
    return-void
.end method
