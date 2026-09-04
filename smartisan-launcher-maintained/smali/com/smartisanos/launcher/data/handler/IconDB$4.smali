.class final Lcom/smartisanos/launcher/data/handler/IconDB$4;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "IconDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$whereCase:Ljava/lang/String;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 181
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$4;->val$whereCase:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/IconDB$4;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_icons"

    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$4;->val$whereCase:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    return-void
.end method
