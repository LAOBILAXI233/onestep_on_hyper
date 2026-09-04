.class Lcom/smartisanos/launcher/data/DBHelper$3;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "DBHelper.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DBHelper;->replaceWithEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/DBHelper;


.method constructor <init>(Lcom/smartisanos/launcher/data/DBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/DBHelper;
    .param p2, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DBHelper$3;->this$0:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_iteminfos"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_pageinfos"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_icons"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_themes"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method
