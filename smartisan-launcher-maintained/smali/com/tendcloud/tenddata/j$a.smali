.class Lcom/tendcloud/tenddata/j$a;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


.field static final a:I = 0x8

.field static final b:I = 0x8

.field static final c:I = 0x100

.field private static final i:I = 0x20


.field final d:[S

.field final e:[[S

.field final f:[[S

.field final g:[S

.field final synthetic h:Lcom/tendcloud/tenddata/j;

.field private final j:[I

.field private final k:[[I


.method constructor <init>(Lcom/tendcloud/tenddata/j;II)V
    .locals 4

    const/16 v3, 0x8

    const/16 v2, 0x10

    iput-object p1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j$a;->f:[[S

    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j$a;->g:[S

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    add-int/lit8 v1, p3, -0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    return-void
.end method

.method private a(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    aget-short v0, v0, v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v2

    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    aget-object v4, v4, p1

    invoke-static {v4, v0}, Lcom/tendcloud/tenddata/l;->b([SI)I

    move-result v4

    add-int/2addr v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    aget-short v2, v2, v1

    invoke-static {v2, v7}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    aget-short v3, v3, v7

    invoke-static {v3, v1}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    aget-object v3, v3, p1

    add-int v4, v2, v1

    iget-object v5, p0, Lcom/tendcloud/tenddata/j$a;->f:[[S

    aget-object v5, v5, p1

    add-int/lit8 v6, v0, -0x8

    invoke-static {v5, v6}, Lcom/tendcloud/tenddata/l;->b([SI)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    aget-short v1, v1, v7

    invoke-static {v1, v7}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    :goto_2
    iget-object v3, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    aget-object v3, v3, p1

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    aget-object v3, v3, p1

    add-int v4, v2, v1

    iget-object v5, p0, Lcom/tendcloud/tenddata/j$a;->g:[S

    add-int/lit8 v6, v0, -0x8

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Lcom/tendcloud/tenddata/l;->b([SI)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


.method a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->f:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/j$a;->g:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method a(II)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, p1, -0x2

    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    invoke-virtual {v1, v2, v3, v3}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->e:[[S

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/l;->a([SI)V

    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/tendcloud/tenddata/l;->a([SII)V

    add-int/lit8 v0, v0, -0x8

    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    invoke-virtual {v1, v2, v4, v3}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->f:[[S

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/l;->a([SI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->d:[S

    invoke-virtual {v1, v2, v4, v4}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->h:Lcom/tendcloud/tenddata/j;

    invoke-static {v1}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j$a;->g:[S

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/l;->a([SI)V

    goto :goto_0
.end method

.method b(II)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j$a;->k:[[I

    aget-object v0, v0, p2

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    aget v1, v1, v0

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j$a;->j:[I

    const/16 v2, 0x20

    aput v2, v1, v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/j$a;->a(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
