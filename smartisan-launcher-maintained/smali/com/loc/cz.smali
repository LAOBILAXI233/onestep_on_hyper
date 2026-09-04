.class final Lcom/loc/cz;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:S

.field protected g:B

.field protected h:B

.field protected i:J

.field protected j:J

.field private k:B


.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/loc/cz;->k:B

    iput v1, p0, Lcom/loc/cz;->a:I

    iput v1, p0, Lcom/loc/cz;->b:I

    iput v1, p0, Lcom/loc/cz;->c:I

    iput v1, p0, Lcom/loc/cz;->d:I

    iput v1, p0, Lcom/loc/cz;->e:I

    iput-short v1, p0, Lcom/loc/cz;->f:S

    iput-byte v1, p0, Lcom/loc/cz;->g:B

    iput-byte v1, p0, Lcom/loc/cz;->h:B

    iput-wide v2, p0, Lcom/loc/cz;->i:J

    iput-wide v2, p0, Lcom/loc/cz;->j:J

    return-void
.end method


.method protected final a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-byte v1, p0, Lcom/loc/cz;->k:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, p0, Lcom/loc/cz;->a:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/loc/cz;->b:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/loc/cz;->c:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/loc/cz;->d:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/loc/cz;->e:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v1, p0, Lcom/loc/cz;->f:S

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v1, p0, Lcom/loc/cz;->g:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v1, p0, Lcom/loc/cz;->h:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v2, p0, Lcom/loc/cz;->i:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v2, p0, Lcom/loc/cz;->j:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
