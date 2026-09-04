.class final Lcom/loc/dg;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:[B

.field protected b:S

.field protected c:[B


.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/dg;->a:[B

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/dg;->b:S

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/dg;->c:[B

    return-void
.end method
