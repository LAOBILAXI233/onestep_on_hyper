.class final Lcom/smartisanos/launcher/data/handler/TableOperator$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "TableOperator.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/TableOperator;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Landroid/content/ContentValues;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->val$value:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->l:J

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->val$value:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->l:J

    .line 28
    return-void
.end method
