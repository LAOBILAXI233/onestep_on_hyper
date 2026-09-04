.class public Lcom/loc/cs;
.super Ljava/lang/Object;
.source "Req.java"


.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:[B

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/loc/cs;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/cs;->b:S

    iput-object v1, p0, Lcom/loc/cs;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/cs;->G:[B

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BI)V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v4, :cond_2

    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    const-string v3, "0"

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    new-array v3, v4, [B

    move v2, v1

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    :cond_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method


.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()[B
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x7f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/loc/cs;->b()V

    const/16 v0, 0xc00

    iget-object v2, p0, Lcom/loc/cs;->G:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/cs;->G:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_0
    new-array v4, v0, [B

    iget-object v0, p0, Lcom/loc/cs;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v4, v1

    iget-short v0, p0, Lcom/loc/cs;->b:S

    invoke-static {v0}, Lcom/loc/cw;->b(I)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v1, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cs;->c:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/cs;->d:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/cs;->o:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v2, v0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/cs;->e:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v2, v0

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/loc/cs;->f:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v2, v0

    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/loc/cs;->g:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v2, v0

    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/loc/cs;->u:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v2, v0

    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/loc/cs;->h:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v2, v0

    :goto_7
    :try_start_8
    iget-object v0, p0, Lcom/loc/cs;->p:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v2, v0

    :goto_8
    :try_start_9
    iget-object v0, p0, Lcom/loc/cs;->q:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v2

    :goto_9
    iget-object v2, p0, Lcom/loc/cs;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    aput-byte v1, v4, v0

    add-int/lit8 v2, v0, 0x1

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/loc/cs;->v:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v2, v0

    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/loc/cs;->w:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v2, v0

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/loc/cs;->x:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v2

    :goto_d
    iget-object v2, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/loc/cs;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/loc/cw;->c(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/loc/cs;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/loc/cw;->c(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/loc/cs;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "mcc"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "mnc"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "lac"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "cellid"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->f(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v0

    const-string v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_8

    move v0, v1

    :cond_8
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9
    :goto_e
    iget-object v2, p0, Lcom/loc/cs;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    :goto_f
    iget-object v2, p0, Lcom/loc/cs;->D:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/loc/cs;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    array-length v2, v5

    if-nez v2, :cond_14

    :cond_a
    aput-byte v1, v4, v0

    add-int/lit8 v2, v0, 0x1

    :goto_10
    :try_start_d
    iget-object v0, p0, Lcom/loc/cs;->F:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    if-le v3, v9, :cond_b

    const/4 v0, 0x0

    :cond_b
    if-nez v0, :cond_17

    const/4 v0, 0x0

    aput-byte v0, v4, v2
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_10

    add-int/lit8 v0, v2, 0x1

    :goto_11
    iget-object v2, p0, Lcom/loc/cs;->G:[B

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/loc/cs;->G:[B

    array-length v2, v2

    :goto_12
    invoke-static {v2}, Lcom/loc/cw;->b(I)[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/loc/cs;->G:[B

    iget-object v3, p0, Lcom/loc/cs;->G:[B

    array-length v3, v3

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/loc/cs;->G:[B

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_c
    new-array v2, v0, [B

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/loc/cw;->a(J)[B

    move-result-object v3

    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    add-int/2addr v0, v2

    invoke-static {v4, v1}, Lcom/loc/cs;->a([BI)V

    return-object v4

    :catch_0
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot2"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot21"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot22"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot23"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot24"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot25"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot26"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catch_7
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot27"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :catch_8
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot28"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :catch_9
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot29"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_9

    :cond_d
    iget-object v2, p0, Lcom/loc/cs;->t:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/loc/cs;->b(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v0

    goto/16 :goto_a

    :catch_a
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot211"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :catch_b
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot212"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :catch_c
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot213"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_d

    :cond_e
    iget-object v2, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    int-to-byte v2, v5

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    :goto_13
    if-ge v2, v5, :cond_9

    const-string v3, "lac"

    invoke-direct {p0, v3, v2}, Lcom/loc/cs;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v3

    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    const-string v3, "cellid"

    invoke-direct {p0, v3, v2}, Lcom/loc/cs;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/cw;->f(Ljava/lang/String;)[B

    move-result-object v3

    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v0

    const-string v0, "signal"

    invoke-direct {p0, v0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_f

    move v0, v1

    :cond_f
    int-to-byte v0, v0

    aput-byte v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_13

    :cond_10
    iget-object v2, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "mcc"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "sid"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "nid"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "bid"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "lon"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->f(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v0, v2

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cw;->f(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v0

    const-string v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_11

    move v0, v1

    :cond_11
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_12
    aput-byte v10, v4, v0

    add-int/lit8 v2, v0, 0x1

    :try_start_e
    iget-object v0, p0, Lcom/loc/cs;->C:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-direct {p0, v0}, Lcom/loc/cs;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    add-int/2addr v2, v0

    const/4 v0, 0x2

    :try_start_f
    aget-object v0, v3, v0

    const-string v5, "GBK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_d

    add-int/2addr v2, v0

    :goto_14
    const/4 v0, 0x1

    :try_start_10
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v9, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_f

    :catch_d
    move-exception v0

    const-string v5, "Req"

    const-string v6, "buildV4Dot214"

    invoke-static {v0, v5, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-byte v0, v4, v2
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_e
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot216"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/cs;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_14
    array-length v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    :goto_15
    array-length v2, v5

    if-ge v3, v2, :cond_16

    aget-object v2, v5, v3

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v1

    invoke-direct {p0, v2}, Lcom/loc/cs;->b(Ljava/lang/String;)[B

    move-result-object v2

    array-length v7, v2

    invoke-static {v2, v1, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v0

    const/4 v0, 0x2

    :try_start_11
    aget-object v0, v6, v0

    const-string v7, "GBK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v4, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_f

    add-int/2addr v0, v2

    :goto_16
    aget-object v2, v6, v10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v9, :cond_15

    move v2, v1

    :cond_15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_15

    :catch_f
    move-exception v0

    const-string v7, "Req"

    const-string v8, "buildV4Dot217"

    invoke-static {v0, v7, v8}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_16

    :cond_16
    iget-object v2, p0, Lcom/loc/cs;->E:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/loc/cw;->b(I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v0

    goto/16 :goto_10

    :cond_17
    :try_start_12
    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10

    add-int/2addr v0, v2

    goto/16 :goto_11

    :catch_10
    move-exception v0

    const-string v3, "Req"

    const-string v5, "buildV4Dot218"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v1, v4, v2

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_11

    :cond_18
    move v2, v1

    goto/16 :goto_12
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/loc/cs;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/cs;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/loc/cs;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/loc/cs;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/loc/cs;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->f:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/loc/cs;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->g:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/loc/cs;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->h:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/loc/cs;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->i:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/loc/cs;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->l:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/loc/cs;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->m:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/loc/cs;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->n:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/loc/cs;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->o:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/loc/cs;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->p:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/loc/cs;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->q:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/loc/cs;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->r:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/loc/cs;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->s:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/loc/cs;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->t:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/loc/cs;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->u:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lcom/loc/cs;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->v:Ljava/lang/String;

    :cond_14
    iget-object v0, p0, Lcom/loc/cs;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->w:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lcom/loc/cs;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->x:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    :cond_17
    :goto_2
    iget-object v0, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    :cond_18
    :goto_3
    iget-object v0, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->A:Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->B:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/loc/cs;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->C:Ljava/lang/String;

    :cond_1b
    iget-object v0, p0, Lcom/loc/cs;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->D:Ljava/lang/String;

    :cond_1c
    iget-object v0, p0, Lcom/loc/cs;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->E:Ljava/lang/String;

    :cond_1d
    iget-object v0, p0, Lcom/loc/cs;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cs;->F:Ljava/lang/String;

    :cond_1e
    iget-object v0, p0, Lcom/loc/cs;->G:[B

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/cs;->G:[B

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->k:Ljava/lang/String;

    goto/16 :goto_1

    :cond_22
    iget-object v0, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->y:Ljava/lang/String;

    goto/16 :goto_2

    :cond_23
    iget-object v0, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/cs;->z:Ljava/lang/String;

    goto/16 :goto_3
.end method
