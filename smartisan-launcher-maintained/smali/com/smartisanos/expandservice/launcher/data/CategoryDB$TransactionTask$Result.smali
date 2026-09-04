.class public Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;
.super Ljava/lang/Object;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


.field public b:Z

.field public i:I

.field public l:J


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public copyTo(Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;)V
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    .prologue
    .line 446
    iget v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->i:I

    iput v0, p1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->i:I

    .line 447
    iget-wide v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->l:J

    iput-wide v0, p1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->l:J

    .line 448
    iget-boolean v0, p0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->b:Z

    iput-boolean v0, p1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->b:Z

    .line 449
    return-void
.end method
