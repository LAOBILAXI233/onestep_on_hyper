.class public Lcom/tendcloud/tenddata/n;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:J

.field public i:J


.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/n;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/n;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/n;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/n;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/n;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/n;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/n;->g:Z

    iput-wide v2, p0, Lcom/tendcloud/tenddata/n;->h:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/n;->i:J

    return-void
.end method


.method public a()I
    .locals 4

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/n;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/n;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/n;->d:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/n;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/n;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/n;->g:Z

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/n;->h:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/n;->i:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/n;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/n;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/n;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/n;->g:Z

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Z)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/n;->h:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/n;->i:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    return-void
.end method
