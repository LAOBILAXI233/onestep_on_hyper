.class final Lcom/loc/de;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:B

.field protected b:[B

.field protected c:D

.field protected d:I

.field protected e:I

.field protected f:D

.field protected g:B

.field protected h:B

.field protected i:[B

.field protected j:B


.method constructor <init>()V
    .locals 5

    const/16 v4, 0x64

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/loc/de;->a:B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/loc/de;->b:[B

    iput-wide v2, p0, Lcom/loc/de;->c:D

    iput v1, p0, Lcom/loc/de;->d:I

    iput v1, p0, Lcom/loc/de;->e:I

    iput-wide v2, p0, Lcom/loc/de;->f:D

    iput-byte v1, p0, Lcom/loc/de;->g:B

    iput-byte v1, p0, Lcom/loc/de;->h:B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/loc/de;->i:[B

    iput-byte v1, p0, Lcom/loc/de;->j:B

    return-void
.end method
