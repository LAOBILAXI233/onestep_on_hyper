.class public Lcom/tendcloud/tenddata/bl;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/af;
.implements Lcom/tendcloud/tenddata/k;


.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/tendcloud/tenddata/n;

.field public d:Lcom/tendcloud/tenddata/al;

.field public e:Ljava/util/List;

.field public f:J

.field public g:J

.field public h:J

.field public i:[[Ljava/lang/Long;


.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bl;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/bl;->b:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/n;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/n;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bl;->c:Lcom/tendcloud/tenddata/n;

    new-instance v0, Lcom/tendcloud/tenddata/al;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/al;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bl;->d:Lcom/tendcloud/tenddata/al;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/bl;->f:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/bl;->g:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/bl;->h:J

    return-void
.end method


.method public a()I
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/bl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bl;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bl;->c:Lcom/tendcloud/tenddata/n;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/n;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/bl;->d:Lcom/tendcloud/tenddata/al;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/al;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 4

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->c:Lcom/tendcloud/tenddata/n;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->d:Lcom/tendcloud/tenddata/al;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/as;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->i:[[Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/ad;->b()Lcom/tendcloud/tenddata/ad;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/bl;->i:[[Ljava/lang/Long;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v1, p0, Lcom/tendcloud/tenddata/bl;->i:[[Ljava/lang/Long;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Lcom/tendcloud/tenddata/ad;->a([Ljava/lang/Long;)Lcom/tendcloud/tenddata/ad;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
