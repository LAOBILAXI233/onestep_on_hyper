.class Lcom/loc/bv$1;
.super Ljava/util/TimerTask;
.source "APS.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bv;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:I

.field final synthetic b:Lcom/loc/bv;


.method constructor <init>(Lcom/loc/bv;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bv$1;->b:Lcom/loc/bv;

    iput p2, p0, Lcom/loc/bv$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/bv$1;->b:Lcom/loc/bv;

    invoke-static {v2}, Lcom/loc/bv;->g(Lcom/loc/bv;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/bv$1;->b:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->f(Lcom/loc/bv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bv$1;->b:Lcom/loc/bv;

    iget v1, p0, Lcom/loc/bv$1;->a:I

    invoke-static {v0, v1}, Lcom/loc/bv;->a(Lcom/loc/bv;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loc/bv$1;->b:Lcom/loc/bv;

    invoke-static {v0}, Lcom/loc/bv;->h(Lcom/loc/bv;)V

    goto :goto_0
.end method
