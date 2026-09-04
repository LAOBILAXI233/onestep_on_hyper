.class final Lcom/smartisanos/launcher/data/handler/TableOperator$3;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "TableOperator.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/TableOperator;->delete(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$where:Ljava/lang/String;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->val$where:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->val$where:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 64
    return-void
.end method
