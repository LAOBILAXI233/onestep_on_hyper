.class public Lcom/tendcloud/tenddata/as;
.super Ljava/lang/Object;

.implements Lcom/tendcloud/tenddata/k;


.field public a:I

.field public b:Lcom/tendcloud/tenddata/c;

.field public c:Lcom/tendcloud/tenddata/z;

.field public d:Lcom/tendcloud/tenddata/be;


.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/as;->a:I

    return-void
.end method


.method public a(Lcom/tendcloud/tenddata/ad;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->b(I)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/as;->a:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(I)Lcom/tendcloud/tenddata/ad;

    iget v0, p0, Lcom/tendcloud/tenddata/as;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown TMessageType"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/as;->c:Lcom/tendcloud/tenddata/z;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/as;->b:Lcom/tendcloud/tenddata/c;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/as;->d:Lcom/tendcloud/tenddata/be;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
