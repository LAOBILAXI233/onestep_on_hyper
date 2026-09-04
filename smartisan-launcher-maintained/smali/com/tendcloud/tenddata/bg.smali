.class public Lcom/tendcloud/tenddata/bg;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bg;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/bg;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/bg;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bg;->d:Ljava/lang/String;

    return-void
.end method


.method public a()I
    .locals 4

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bg;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/bg;->b:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/bg;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bg;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/bg;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/bg;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tendcloud/tenddata/bg;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/bg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",refer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
