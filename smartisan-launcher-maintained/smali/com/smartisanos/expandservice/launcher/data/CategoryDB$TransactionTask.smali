.class public abstract Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;
.super Ljava/lang/Object;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/data/CategoryDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransactionTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;
    }
.end annotation


.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field public defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

.field public result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;


.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "_defaultResult"    # Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 437
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 438
    return-void
.end method


.method public execute()Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;
    .locals 4

    .prologue
    .line 458
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 459
    const/4 v1, 0x0

    .line 461
    .local v1, "failed":Z
    :try_start_0
    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 462
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    iget-object v3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-virtual {v2, v3}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->copyTo(Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;)V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->run()V

    .line 466
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :try_start_1
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    :goto_0
    if-eqz v1, :cond_1

    .line 481
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->defaultResult:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    iput-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 487
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    return-object v2

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 475
    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 468
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 469
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    :try_start_3
    iget-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 473
    :catch_2
    move-exception v0

    .line 474
    const/4 v1, 0x1

    .line 475
    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 472
    :try_start_4
    iget-object v3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 477
    :goto_2
    throw v2

    .line 473
    :catch_3
    move-exception v0

    .line 474
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 475
    new-instance v3, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-direct {v3}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;->result:Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    goto :goto_1
.end method

.method public abstract run()V
.end method
