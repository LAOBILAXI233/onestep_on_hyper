.class Lcom/smartisanos/launcher/data/ExportDataProvider$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "ExportDataProvider.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/ExportDataProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/ExportDataProvider;
    .param p2, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$selection:Ljava/lang/String;

    iput-object p5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 96
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$table:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$1;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 97
    return-void
.end method
