.class public Lcom/tendcloud/tenddata/ap;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:Ljava/util/Map;


.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/ap;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/ap;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/ap;->c:I

    return-void
.end method


.method public a()I
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ap;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/ap;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/ap;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ap;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/ap;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/ap;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ap;->e:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/util/Map;)Lcom/tendcloud/tenddata/ad;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/ap;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tendcloud/tenddata/ap;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",kv:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/ap;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
