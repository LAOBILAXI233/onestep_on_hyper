.class final Lcom/loc/da;
.super Ljava/lang/Object;

.implements Ljava/io/Serializable;


.field protected a:[B

.field protected b:[B

.field protected c:[B

.field protected d:S

.field protected e:S

.field protected f:B

.field protected g:[B

.field protected h:[B

.field protected i:S

.field protected j:Ljava/util/ArrayList;

.field private k:B

.field private l:S


.method constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    iput-byte v0, p0, Lcom/loc/da;->k:B

    iput-short v1, p0, Lcom/loc/da;->l:S

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/da;->a:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/da;->b:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/da;->c:[B

    iput-short v1, p0, Lcom/loc/da;->d:S

    iput-short v1, p0, Lcom/loc/da;->e:S

    iput-byte v1, p0, Lcom/loc/da;->f:B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/da;->g:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/da;->h:[B

    iput-short v1, p0, Lcom/loc/da;->i:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/da;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/loc/da;->a:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/loc/da;->b:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/loc/da;->c:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v0, p0, Lcom/loc/da;->d:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v0, p0, Lcom/loc/da;->e:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, Lcom/loc/da;->f:B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/loc/da;->g:[B

    const/16 v1, 0xf

    const/4 v5, 0x0

    aput-byte v5, v0, v1

    iget-object v0, p0, Lcom/loc/da;->g:[B

    iget-object v1, p0, Lcom/loc/da;->g:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/loc/di;->a([BI)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/loc/da;->h:[B

    const/16 v1, 0x1f

    const/4 v5, 0x0

    aput-byte v5, v0, v1

    iget-object v0, p0, Lcom/loc/da;->h:[B

    iget-object v1, p0, Lcom/loc/da;->h:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/loc/di;->a([BI)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v0, p0, Lcom/loc/da;->i:S

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v2

    :goto_0
    iget-short v0, p0, Lcom/loc/da;->i:S

    if-ge v1, v0, :cond_5

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/loc/da;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cy;

    iget-object v7, v0, Lcom/loc/cy;->c:Lcom/loc/cz;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/loc/cy;->c:Lcom/loc/cz;

    invoke-virtual {v7, v6}, Lcom/loc/cz;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_0
    iget-object v7, v0, Lcom/loc/cy;->d:Lcom/loc/eg;

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/loc/cy;->d:Lcom/loc/eg;

    invoke-virtual {v7, v6}, Lcom/loc/eg;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1
    iget-object v7, v0, Lcom/loc/cy;->e:Lcom/loc/dj;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/loc/cy;->e:Lcom/loc/dj;

    invoke-virtual {v7, v6}, Lcom/loc/dj;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_2
    iget-object v7, v0, Lcom/loc/cy;->f:Lcom/loc/df;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/loc/cy;->f:Lcom/loc/df;

    invoke-virtual {v7, v6}, Lcom/loc/df;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_3
    iget-object v7, v0, Lcom/loc/cy;->g:Lcom/loc/dd;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/loc/cy;->g:Lcom/loc/dd;

    invoke-virtual {v7, v6}, Lcom/loc/dd;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    iput-short v6, v0, Lcom/loc/cy;->a:S

    iget-short v6, v0, Lcom/loc/cy;->a:S

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, v0, Lcom/loc/cy;->b:I

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    move v1, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcom/loc/da;->l:S

    iget-byte v0, p0, Lcom/loc/da;->k:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v0, p0, Lcom/loc/da;->l:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


.method protected final a()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lcom/loc/da;->a(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
