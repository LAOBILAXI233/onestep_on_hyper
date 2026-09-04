.class final Lcom/loc/dk;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:S

.field protected b:I

.field protected c:B


.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/loc/dk;->a:S

    iput v0, p0, Lcom/loc/dk;->b:I

    iput-byte v0, p0, Lcom/loc/dk;->c:B

    return-void
.end method
