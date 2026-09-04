.class public Lcom/tendcloud/tenddata/g;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;
.implements Lcom/tendcloud/tenddata/x;


.field public a:D

.field public b:D


.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tendcloud/tenddata/g;->a:D

    iput-wide v0, p0, Lcom/tendcloud/tenddata/g;->b:D

    return-void
.end method


.method public a()I
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tendcloud/tenddata/ad;->c(I)I

    move-result v0

    iget-wide v2, p0, Lcom/tendcloud/tenddata/g;->a:D

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tendcloud/tenddata/g;->b:D

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/ad;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/g;->a:D

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(D)Lcom/tendcloud/tenddata/ad;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/g;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/ad;->a(D)Lcom/tendcloud/tenddata/ad;

    return-void
.end method
