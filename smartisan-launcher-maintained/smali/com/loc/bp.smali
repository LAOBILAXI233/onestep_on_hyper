.class public Lcom/loc/bp;
.super Ljava/lang/Object;
.source "DownloadManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bp$a;
    }
.end annotation


.field private a:Lcom/loc/bq;

.field private b:Lcom/loc/bs;


.method public constructor <init>(Lcom/loc/bs;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/bp;-><init>(Lcom/loc/bs;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/loc/bs;JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/bq;

    iget-object v2, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    iget v2, v2, Lcom/loc/bs;->a:I

    iget-object v3, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    iget v3, v3, Lcom/loc/bs;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/bq;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/bp;->a:Lcom/loc/bq;

    iget-object v0, p0, Lcom/loc/bp;->a:Lcom/loc/bq;

    invoke-virtual {v0, p4, p5}, Lcom/loc/bq;->b(J)V

    iget-object v0, p0, Lcom/loc/bp;->a:Lcom/loc/bq;

    invoke-virtual {v0, p2, p3}, Lcom/loc/bq;->a(J)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;

    goto :goto_0
.end method


.method public a(Lcom/loc/bp$a;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/bp;->a:Lcom/loc/bq;

    iget-object v1, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    invoke-virtual {v1}, Lcom/loc/bs;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    invoke-virtual {v2}, Lcom/loc/bs;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bp;->b:Lcom/loc/bs;

    invoke-virtual {v3}, Lcom/loc/bs;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/bq;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/bp$a;)V

    return-void
.end method
