.class final Lcom/tendcloud/tenddata/m;
.super Ljava/lang/Object;


.field static final synthetic e:Z


.field final a:I

.field final b:I

.field final c:[B

.field d:I

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Lcom/tendcloud/tenddata/p;

.field private final m:[I

.field private final n:Lcom/tendcloud/tenddata/ab;

.field private final o:I

.field private final p:I

.field private q:I

.field private r:I


.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IIIIII)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iput v0, p0, Lcom/tendcloud/tenddata/m;->h:I

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/m;->i:Z

    iput v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    iput v1, p0, Lcom/tendcloud/tenddata/m;->k:I

    iput v0, p0, Lcom/tendcloud/tenddata/m;->q:I

    invoke-static {p1, p2, p3, p5}, Lcom/tendcloud/tenddata/m;->a(IIII)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    add-int v0, p2, p1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->f:I

    add-int v0, p3, p5

    iput v0, p0, Lcom/tendcloud/tenddata/m;->g:I

    iput p5, p0, Lcom/tendcloud/tenddata/m;->a:I

    iput p4, p0, Lcom/tendcloud/tenddata/m;->b:I

    new-instance v0, Lcom/tendcloud/tenddata/p;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/p;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->p:I

    iget v0, p0, Lcom/tendcloud/tenddata/m;->p:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/m;->m:[I

    iget v0, p0, Lcom/tendcloud/tenddata/m;->p:I

    iput v0, p0, Lcom/tendcloud/tenddata/m;->r:I

    new-instance v0, Lcom/tendcloud/tenddata/ab;

    add-int/lit8 v1, p4, -0x1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/ab;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    if-lez p6, :cond_0

    :goto_0
    iput p6, p0, Lcom/tendcloud/tenddata/m;->o:I

    return-void

    :cond_0
    div-int/lit8 v0, p4, 0x4

    add-int/lit8 p6, v0, 0x4

    goto :goto_0
.end method

.method private static a(IIII)I
    .locals 4

    add-int v0, p1, p0

    add-int v1, p2, p3

    div-int/lit8 v2, p0, 0x2

    add-int/lit16 v2, v2, 0x1000

    const/high16 v3, 0x20000000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method static a([II)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    aput v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v2, p0, v0

    sub-int/2addr v2, p1

    aput v2, p0, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private g()I
    .locals 3

    const v2, 0x7fffffff

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lcom/tendcloud/tenddata/m;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tendcloud/tenddata/m;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/m;->r:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tendcloud/tenddata/m;->p:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/p;->d(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->m:[I

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/m;->a([II)V

    iget v2, p0, Lcom/tendcloud/tenddata/m;->r:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/tendcloud/tenddata/m;->r:I

    :cond_0
    iget v1, p0, Lcom/tendcloud/tenddata/m;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/m;->q:I

    iget v2, p0, Lcom/tendcloud/tenddata/m;->p:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/m;->q:I

    :cond_1
    return v0
.end method

.method private h()V
    .locals 5

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/tendcloud/tenddata/m;->f:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget-object v3, p0, Lcom/tendcloud/tenddata/m;->c:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/m;->h:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    return-void
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/m;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->h:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget v0, p0, Lcom/tendcloud/tenddata/m;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/m;->k:I

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/m;->a(I)V

    sget-boolean v1, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tendcloud/tenddata/m;->k:I

    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


.method public a(II)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(III)I
    .locals 6

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int v1, v0, p1

    sub-int v0, v1, p2

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v3, p0, Lcom/tendcloud/tenddata/m;->c:[B

    add-int v4, v1, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->c:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a([BII)I
    .locals 3

    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/m;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/m;->c:[B

    array-length v1, v1

    iget v2, p0, Lcom/tendcloud/tenddata/m;->g:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->h()V

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    sub-int p3, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->g:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->h:I

    :cond_3
    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->i()V

    return p3
.end method

.method public a()Lcom/tendcloud/tenddata/ab;
    .locals 12

    const/4 v8, 0x2

    const/4 v3, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iput v7, v0, Lcom/tendcloud/tenddata/ab;->c:I

    iget v2, p0, Lcom/tendcloud/tenddata/m;->a:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->b:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->g()I

    move-result v0

    if-ge v0, v2, :cond_e

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    :goto_0
    return-object v0

    :cond_0
    if-le v1, v0, :cond_d

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v5, p0, Lcom/tendcloud/tenddata/m;->d:I

    invoke-virtual {v2, v4, v5}, Lcom/tendcloud/tenddata/p;->a([BI)V

    iget v2, p0, Lcom/tendcloud/tenddata/m;->r:I

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/p;->a()I

    move-result v4

    sub-int v5, v2, v4

    iget v2, p0, Lcom/tendcloud/tenddata/m;->r:I

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/p;->b()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/p;->c()I

    move-result v6

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    iget v9, p0, Lcom/tendcloud/tenddata/m;->r:I

    invoke-virtual {v2, v9}, Lcom/tendcloud/tenddata/p;->c(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->m:[I

    iget v9, p0, Lcom/tendcloud/tenddata/m;->q:I

    aput v6, v2, v9

    iget v2, p0, Lcom/tendcloud/tenddata/m;->p:I

    if-ge v5, v2, :cond_c

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v9, v5

    aget-byte v2, v2, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/m;->d:I

    aget-byte v9, v9, v10

    if-ne v2, v9, :cond_c

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v2, v2, Lcom/tendcloud/tenddata/ab;->a:[I

    aput v8, v2, v7

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v2, v2, Lcom/tendcloud/tenddata/ab;->b:[I

    add-int/lit8 v9, v5, -0x1

    aput v9, v2, v7

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    const/4 v9, 0x1

    iput v9, v2, Lcom/tendcloud/tenddata/ab;->c:I

    move v2, v8

    :goto_2
    if-eq v5, v4, :cond_b

    iget v8, p0, Lcom/tendcloud/tenddata/m;->p:I

    if-ge v4, v8, :cond_b

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v9, v4

    aget-byte v8, v8, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/m;->d:I

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_b

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v2, v2, Lcom/tendcloud/tenddata/ab;->b:[I

    iget-object v5, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v8, v5, Lcom/tendcloud/tenddata/ab;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/tendcloud/tenddata/ab;->c:I

    add-int/lit8 v5, v4, -0x1

    aput v5, v2, v8

    move v2, v3

    :goto_3
    iget-object v5, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v5, v5, Lcom/tendcloud/tenddata/ab;->c:I

    if-lez v5, :cond_2

    :goto_4
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    aget-byte v5, v5, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v9, v2

    aget-byte v8, v8, v9

    if-ne v5, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1
    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v4, v4, Lcom/tendcloud/tenddata/ab;->a:[I

    iget-object v5, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v5, v5, Lcom/tendcloud/tenddata/ab;->c:I

    add-int/lit8 v5, v5, -0x1

    aput v2, v4, v5

    if-lt v2, v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    goto/16 :goto_0

    :cond_2
    if-ge v2, v3, :cond_a

    :goto_5
    iget v2, p0, Lcom/tendcloud/tenddata/m;->o:I

    move v4, v3

    move v3, v6

    :goto_6
    iget v5, p0, Lcom/tendcloud/tenddata/m;->r:I

    sub-int v6, v5, v3

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/tendcloud/tenddata/m;->p:I

    if-lt v6, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/tendcloud/tenddata/m;->m:[I

    iget v2, p0, Lcom/tendcloud/tenddata/m;->q:I

    sub-int v8, v2, v6

    iget v2, p0, Lcom/tendcloud/tenddata/m;->q:I

    if-le v6, v2, :cond_7

    iget v2, p0, Lcom/tendcloud/tenddata/m;->p:I

    :goto_7
    add-int/2addr v2, v8

    aget v5, v5, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    aget-byte v2, v2, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    if-ne v2, v8, :cond_8

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v8, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v8, v6

    aget-byte v2, v2, v8

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    aget-byte v8, v8, v9

    if-ne v2, v8, :cond_8

    move v2, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_6

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v9, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v9, v2

    sub-int/2addr v9, v6

    aget-byte v8, v8, v9

    iget-object v9, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v10, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v10, v2

    aget-byte v9, v9, v10

    if-eq v8, v9, :cond_5

    :cond_6
    if-le v2, v4, :cond_8

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v4, v4, Lcom/tendcloud/tenddata/ab;->a:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v8, v8, Lcom/tendcloud/tenddata/ab;->c:I

    aput v2, v4, v8

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget-object v4, v4, Lcom/tendcloud/tenddata/ab;->b:[I

    iget-object v8, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v8, v8, Lcom/tendcloud/tenddata/ab;->c:I

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v8

    iget-object v4, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    iget v6, v4, Lcom/tendcloud/tenddata/ab;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/tendcloud/tenddata/ab;->c:I

    if-lt v2, v0, :cond_9

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->n:Lcom/tendcloud/tenddata/ab;

    goto/16 :goto_0

    :cond_7
    move v2, v7

    goto :goto_7

    :cond_8
    move v2, v4

    :cond_9
    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_6

    :cond_a
    move v3, v2

    goto/16 :goto_5

    :cond_b
    move v4, v5

    goto/16 :goto_3

    :cond_c
    move v2, v7

    goto/16 :goto_2

    :cond_d
    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_1

    :cond_e
    move v0, v1

    move v1, v2

    goto/16 :goto_1
.end method

.method public a(I)V
    .locals 4

    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->g()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v3, p0, Lcom/tendcloud/tenddata/m;->d:I

    invoke-virtual {v1, v2, v3}, Lcom/tendcloud/tenddata/p;->a([BI)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/m;->m:[I

    iget v2, p0, Lcom/tendcloud/tenddata/m;->q:I

    iget-object v3, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/p;->c()I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/tendcloud/tenddata/m;->l:Lcom/tendcloud/tenddata/p;

    iget v2, p0, Lcom/tendcloud/tenddata/m;->r:I

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/p;->c(I)V

    move p1, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method public a(I[B)V
    .locals 4

    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p2

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tendcloud/tenddata/m;->j:I

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/m;->a(I)V

    :cond_2
    return-void
.end method

.method public a(Ljava/io/OutputStream;II)V
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public a(Lcom/tendcloud/tenddata/ab;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/m;->e()I

    move-result v0

    iget v2, p0, Lcom/tendcloud/tenddata/m;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_0
    iget v3, p1, Lcom/tendcloud/tenddata/ab;->c:I

    if-ge v0, v3, :cond_1

    iget-object v3, p1, Lcom/tendcloud/tenddata/ab;->b:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3, v2}, Lcom/tendcloud/tenddata/m;->b(II)I

    move-result v3

    iget-object v4, p1, Lcom/tendcloud/tenddata/ab;->a:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public b(II)I
    .locals 5

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v3, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/tendcloud/tenddata/m;->c:[B

    add-int v4, v1, v0

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/tendcloud/tenddata/m;->h:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/m;->c:[B

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method c(II)I
    .locals 2

    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_0

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    if-lt v0, p2, :cond_1

    iget-boolean v1, p0, Lcom/tendcloud/tenddata/m;->i:Z

    if-nez v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/tendcloud/tenddata/m;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->k:I

    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->h:I

    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->i()V

    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/m;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/m;->i:Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/m;->i()V

    return-void
.end method

.method public e()I
    .locals 2

    sget-boolean v0, Lcom/tendcloud/tenddata/m;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tendcloud/tenddata/m;->j:I

    iget v1, p0, Lcom/tendcloud/tenddata/m;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/m;->d:I

    return v0
.end method
