.class final Lcom/smartisanos/launcher/data/DBHelper$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "DBHelper.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DBHelper;->resetDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DBHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DBHelper$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method
