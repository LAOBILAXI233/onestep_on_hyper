.class final Lcom/smartisanos/launcher/data/handler/TableOperator$4;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "TableOperator.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/TableOperator;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 72
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$selection:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$values:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->val$selection:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 77
    return-void
.end method
