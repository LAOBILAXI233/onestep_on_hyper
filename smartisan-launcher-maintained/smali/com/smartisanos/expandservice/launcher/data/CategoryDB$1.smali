.class final Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;
.super Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->insert(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;)J
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
    .line 392
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->val$value:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 395
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->l:J

    .line 396
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    iget-object v1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->val$value:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->l:J

    .line 397
    return-void
.end method
