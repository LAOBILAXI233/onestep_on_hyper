.class public Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public copyTo(Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;)V
    .locals 2
    .param p1, "other"    # Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .prologue
    .line 49
    iget v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    iput v0, p1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 50
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->l:J

    iput-wide v0, p1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->l:J

    .line 51
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    iput-boolean v0, p1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 52
    return-void
.end method
