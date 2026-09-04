.class Lcom/smartisanos/launcher/data/ExportDataProvider$3;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "ExportDataProvider.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/ExportDataProvider;->insertOption(Ljava/lang/String;Landroid/content/ContentValues;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

.field final synthetic val$tableName:Ljava/lang/String;

.field final synthetic val$value:Landroid/content/ContentValues;


.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/ExportDataProvider;
    .param p2, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->val$tableName:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->val$value:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->val$tableName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$3;->val$value:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 159
    return-void
.end method
