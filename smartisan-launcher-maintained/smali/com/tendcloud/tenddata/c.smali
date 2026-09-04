.class public Lcom/tendcloud/tenddata/c;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:I

.field public k:I


.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/c;->b:J

    iput v2, p0, Lcom/tendcloud/tenddata/c;->c:I

    iput v2, p0, Lcom/tendcloud/tenddata/c;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    iput v2, p0, Lcom/tendcloud/tenddata/c;->j:I

    iput v2, p0, Lcom/tendcloud/tenddata/c;->k:I

    return-void
.end method


.method public a()I
    .locals 4

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/c;->b:J

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/c;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/c;->g:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/c;->k:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/bg;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/bg;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/ap;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ap;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/c;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(J)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/c;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/c;->g:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/bg;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-object v0, p0, Lcom/tendcloud/tenddata/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/ap;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/tendcloud/tenddata/c;->k:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tendcloud/tenddata/c;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
