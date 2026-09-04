.class final Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "DownloadRecordDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->removeRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$whereCause:Ljava/lang/String;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 106
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;->val$whereCause:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_record"

    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;->val$whereCause:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    return-void
.end method
