.class final Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;
.super Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->update(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Landroid/content/ContentValues;

.field final synthetic val$where:Ljava/lang/String;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 404
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$value:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$where:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 407
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    const/4 v1, -0x1

    iput v1, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->i:I

    .line 408
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$value:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->val$where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->i:I

    .line 409
    return-void
.end method
