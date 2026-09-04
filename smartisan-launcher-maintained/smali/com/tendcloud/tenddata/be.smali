.class public Lcom/tendcloud/tenddata/be;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/be;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/be;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    return-void
.end method


.method public a()I
    .locals 4

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-wide v2, p0, Lcom/tendcloud/tenddata/be;->a:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/be;->b:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->d:[B

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->b([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/be;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/be;->b:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->d:[B

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a([B)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/be;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    return-void
.end method
