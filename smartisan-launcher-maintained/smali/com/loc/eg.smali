.class final Lcom/loc/eg;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:S

.field protected b:I

.field protected c:B

.field protected d:B

.field protected e:Ljava/util/ArrayList;

.field private f:B


.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/loc/eg;->f:B

    iput-short v1, p0, Lcom/loc/eg;->a:S

    iput v1, p0, Lcom/loc/eg;->b:I

    iput-byte v1, p0, Lcom/loc/eg;->c:B

    iput-byte v1, p0, Lcom/loc/eg;->d:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/eg;->e:Ljava/util/ArrayList;

    return-void
.end method


.method protected final a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_0
    iget-byte v2, p0, Lcom/loc/eg;->f:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v2, p0, Lcom/loc/eg;->a:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, Lcom/loc/eg;->b:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v2, p0, Lcom/loc/eg;->c:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, p0, Lcom/loc/eg;->d:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v2, v0

    :goto_0
    iget-byte v0, p0, Lcom/loc/eg;->d:B

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/loc/eg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dk;

    iget-short v0, v0, Lcom/loc/dk;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/loc/eg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dk;

    iget v0, v0, Lcom/loc/dk;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/loc/eg;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dk;

    iget-byte v0, v0, Lcom/loc/dk;->c:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
