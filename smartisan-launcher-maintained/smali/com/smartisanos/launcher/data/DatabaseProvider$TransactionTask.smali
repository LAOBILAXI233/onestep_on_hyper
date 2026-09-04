.class public abstract Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/DatabaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransactionTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;
    }
.end annotation


.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field public defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

.field public result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;


.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_defaultResult"    # Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 41
    return-void
.end method


.method public execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "failed":Z
    :try_start_0
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 65
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->copyTo(Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->run()V

    .line 69
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->defaultResult:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iput-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 90
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 78
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 76
    :catch_2
    move-exception v0

    .line 77
    const/4 v1, 0x1

    .line 78
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 75
    :try_start_4
    iget-object v3, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 80
    :goto_2
    throw v2

    .line 76
    :catch_3
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 78
    new-instance v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_1
.end method

.method public abstract run()V
.end method
