.class public abstract Lcom/tendcloud/tenddata/j;
.super Ljava/lang/Object;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/j$b;,
        Lcom/tendcloud/tenddata/j$a;,
        Lcom/tendcloud/tenddata/j$c;
    }
.end annotation


.field static final synthetic G:Z

.field private static final H:I = 0x1fe6

.field private static final I:I = 0x80

.field private static final J:I = 0x10

.field private static final a:I = 0x1ffeef

.field static final b:I = 0x10

.field static final c:I = 0x2

.field static final d:I = 0x111

.field static final e:I = 0x4

.field static final f:I = 0x40

.field static final g:I = 0x4

.field static final h:I = 0xe

.field static final i:I = 0x80

.field static final j:I = 0x4

.field static final k:I = 0x10

.field static final l:I = 0xf

.field static final m:I = 0x4


.field final A:Lcom/tendcloud/tenddata/j$c;

.field final B:Lcom/tendcloud/tenddata/j$a;

.field final C:Lcom/tendcloud/tenddata/j$a;

.field final D:I

.field E:I

.field F:I

.field private final K:Lcom/tendcloud/tenddata/l;

.field private L:I

.field private M:I

.field private final N:I

.field private final O:[[I

.field private final P:[[I

.field private final Q:[I

.field private R:I

.field final n:I

.field final o:[I

.field final p:Lcom/tendcloud/tenddata/ai;

.field final q:[[S

.field final r:[S

.field final s:[S

.field final t:[S

.field final u:[S

.field final v:[[S

.field final w:[[S

.field final x:[[S

.field final y:[S

.field final z:Lcom/tendcloud/tenddata/m;


.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tendcloud/tenddata/j;->G:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/l;Lcom/tendcloud/tenddata/m;IIIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    new-instance v0, Lcom/tendcloud/tenddata/ai;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ai;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->r:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->s:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->t:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->u:[S

    filled-new-array {v2, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    const/16 v0, 0x40

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->w:[[S

    const/16 v0, 0xa

    new-array v0, v0, [[S

    new-array v1, v6, [S

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-array v2, v6, [S

    aput-object v2, v0, v1

    new-array v1, v3, [S

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [S

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [S

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [S

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [S

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [S

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x20

    new-array v2, v2, [S

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x20

    new-array v2, v2, [S

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->y:[S

    iput v5, p0, Lcom/tendcloud/tenddata/j;->L:I

    iput v5, p0, Lcom/tendcloud/tenddata/j;->M:I

    const/16 v0, 0x80

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->P:[[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->Q:[I

    iput v5, p0, Lcom/tendcloud/tenddata/j;->E:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    iput v5, p0, Lcom/tendcloud/tenddata/j;->R:I

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->n:I

    iput-object p1, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iput-object p2, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    iput p7, p0, Lcom/tendcloud/tenddata/j;->D:I

    new-instance v0, Lcom/tendcloud/tenddata/j$c;

    invoke-direct {v0, p0, p3, p4}, Lcom/tendcloud/tenddata/j$c;-><init>(Lcom/tendcloud/tenddata/j;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->A:Lcom/tendcloud/tenddata/j$c;

    new-instance v0, Lcom/tendcloud/tenddata/j$a;

    invoke-direct {v0, p0, p5, p7}, Lcom/tendcloud/tenddata/j$a;-><init>(Lcom/tendcloud/tenddata/j;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->B:Lcom/tendcloud/tenddata/j$a;

    new-instance v0, Lcom/tendcloud/tenddata/j$a;

    invoke-direct {v0, p0, p5, p7}, Lcom/tendcloud/tenddata/j$a;-><init>(Lcom/tendcloud/tenddata/j;II)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->C:Lcom/tendcloud/tenddata/j$a;

    add-int/lit8 v0, p6, -0x1

    invoke-static {v0}, Lcom/tendcloud/tenddata/j;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->N:I

    iget v0, p0, Lcom/tendcloud/tenddata/j;->N:I

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/j;->b()V

    return-void
.end method

.method static final a(I)I
    .locals 1

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static a(Lcom/tendcloud/tenddata/l;IIIIIII)Lcom/tendcloud/tenddata/j;
    .locals 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/i;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tendcloud/tenddata/i;-><init>(Lcom/tendcloud/tenddata/l;IIIIIII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/az;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/tendcloud/tenddata/az;-><init>(Lcom/tendcloud/tenddata/l;IIIIIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/j;)Lcom/tendcloud/tenddata/l;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    return-object v0
.end method

.method private a(III)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ai;->d()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->B:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0, p2, p3}, Lcom/tendcloud/tenddata/j$a;->a(II)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/j;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->w:[[S

    invoke-static {p2}, Lcom/tendcloud/tenddata/j;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/tendcloud/tenddata/l;->a([SI)V

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v0, 0x1

    or-int/lit8 v2, v2, 0x2

    shl-int/2addr v2, v1

    sub-int v2, p1, v2

    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    add-int/lit8 v0, v0, -0x4

    aget-object v0, v3, v0

    invoke-virtual {v1, v0, v2}, Lcom/tendcloud/tenddata/l;->c([SI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v2, v2, v6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v1, v1, v5

    aput v1, v0, v6

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aput p1, v0, v4

    iget v0, p0, Lcom/tendcloud/tenddata/j;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->L:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    ushr-int/lit8 v3, v2, 0x4

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Lcom/tendcloud/tenddata/l;->b(II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->y:[S

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/l;->c([SI)V

    iget v0, p0, Lcom/tendcloud/tenddata/j;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->M:I

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/16 v0, 0x1f

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_5

    shl-int/lit8 v1, p0, 0x10

    const/16 v0, 0xf

    :goto_1
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    :cond_1
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x4

    :cond_2
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x2

    :cond_3
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    ushr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    add-int p0, v1, v0

    goto :goto_0

    :cond_5
    move v1, p0

    goto :goto_1
.end method

.method private b(III)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->s:[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v4

    aget-object v3, v3, v4

    if-ne p2, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, p3, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    :goto_1
    if-ne p2, v1, :cond_4

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ai;->f()V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->s:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/tendcloud/tenddata/l;->a([SII)V

    if-ne p1, v1, :cond_2

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->t:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    :goto_3
    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v4, v4, v0

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aput v2, v3, v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->t:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->u:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/tendcloud/tenddata/l;->a([SII)V

    if-ne p1, v8, :cond_3

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v4, v4, v7

    aput v4, v3, v8

    :cond_3
    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aget v4, v4, v1

    aput v4, v3, v7

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->C:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0, p2, p3}, Lcom/tendcloud/tenddata/j$a;->a(II)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ai;->e()V

    goto :goto_2
.end method

.method private i()Z
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/tendcloud/tenddata/j;->F:I

    if-eq v2, v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v2, v0}, Lcom/tendcloud/tenddata/m;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/j;->c(I)V

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->A:Lcom/tendcloud/tenddata/j$c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$c;->b()V

    iget v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    sget-boolean v0, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    sget-boolean v0, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    iget v3, p0, Lcom/tendcloud/tenddata/j;->F:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/m;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/j;->a()I

    move-result v2

    sget-boolean v3, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/tendcloud/tenddata/j;->F:I

    if-gez v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/m;->f()I

    move-result v3

    iget v4, p0, Lcom/tendcloud/tenddata/j;->F:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/tendcloud/tenddata/j;->n:I

    and-int/2addr v3, v4

    iget v4, p0, Lcom/tendcloud/tenddata/j;->E:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v4, :cond_2

    if-eq v2, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->A:Lcom/tendcloud/tenddata/j$c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$c;->c()V

    :goto_1
    iget v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    iget v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget v4, p0, Lcom/tendcloud/tenddata/j;->E:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    sget-boolean v0, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    iget v4, p0, Lcom/tendcloud/tenddata/j;->F:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->o:[I

    iget v6, p0, Lcom/tendcloud/tenddata/j;->E:I

    aget v5, v5, v6

    invoke-virtual {v0, v4, v5, v2}, Lcom/tendcloud/tenddata/m;->a(III)I

    move-result v0

    if-eq v0, v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->r:[S

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v5}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget v0, p0, Lcom/tendcloud/tenddata/j;->E:I

    invoke-direct {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/j;->b(III)V

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    iget v5, p0, Lcom/tendcloud/tenddata/j;->F:I

    neg-int v5, v5

    iget v6, p0, Lcom/tendcloud/tenddata/j;->E:I

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6, v2}, Lcom/tendcloud/tenddata/m;->a(III)I

    move-result v4

    if-eq v4, v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->r:[S

    iget-object v6, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/tendcloud/tenddata/l;->a([SII)V

    iget v0, p0, Lcom/tendcloud/tenddata/j;->E:I

    add-int/lit8 v0, v0, -0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/tendcloud/tenddata/j;->a(III)V

    goto :goto_1
.end method

.method private k()V
    .locals 13

    const/16 v12, 0x80

    const/16 v2, 0xe

    const/4 v6, 0x4

    const/4 v1, 0x0

    iput v12, p0, Lcom/tendcloud/tenddata/j;->L:I

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/tendcloud/tenddata/j;->N:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->w:[[S

    aget-object v5, v5, v3

    invoke-static {v5, v0}, Lcom/tendcloud/tenddata/l;->b([SI)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_2
    iget v4, p0, Lcom/tendcloud/tenddata/j;->N:I

    if-ge v0, v4, :cond_1

    ushr-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x4

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    aget-object v5, v5, v3

    aget v7, v5, v0

    invoke-static {v4}, Lcom/tendcloud/tenddata/l;->a(I)I

    move-result v4

    add-int/2addr v4, v7

    aput v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_2

    iget-object v4, p0, Lcom/tendcloud/tenddata/j;->P:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    aget-object v5, v5, v3

    aget v5, v5, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v5, v6

    move v0, v6

    :goto_4
    if-ge v5, v2, :cond_6

    ushr-int/lit8 v3, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v4, v5, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int v7, v4, v3

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    add-int/lit8 v4, v5, -0x4

    aget-object v3, v3, v4

    array-length v8, v3

    move v3, v1

    move v4, v0

    :goto_5
    if-ge v3, v8, :cond_5

    sub-int v0, v4, v7

    iget-object v9, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    add-int/lit8 v10, v5, -0x4

    aget-object v9, v9, v10

    invoke-static {v9, v0}, Lcom/tendcloud/tenddata/l;->d([SI)I

    move-result v9

    move v0, v1

    :goto_6
    if-ge v0, v6, :cond_4

    iget-object v10, p0, Lcom/tendcloud/tenddata/j;->P:[[I

    aget-object v10, v10, v0

    iget-object v11, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    aget-object v11, v11, v0

    aget v11, v11, v5

    add-int/2addr v11, v9

    aput v11, v10, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v4

    goto :goto_4

    :cond_6
    sget-boolean v1, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v1, :cond_7

    if-eq v0, v12, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method private l()V
    .locals 4

    const/16 v3, 0x10

    iput v3, p0, Lcom/tendcloud/tenddata/j;->M:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->Q:[I

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->y:[S

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/l;->d([SI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


.method abstract a()I
.end method

.method a(IIII)I
    .locals 4

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->B:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0, p3, p4}, Lcom/tendcloud/tenddata/j$a;->b(II)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p3}, Lcom/tendcloud/tenddata/j;->a(I)I

    move-result v1

    const/16 v2, 0x80

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->P:[[I

    aget-object v1, v2, v1

    aget v1, v1, p2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/tendcloud/tenddata/j;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/j;->O:[[I

    aget-object v1, v3, v1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->Q:[I

    and-int/lit8 v3, p2, 0xf

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method a(IILcom/tendcloud/tenddata/ai;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->s:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v4}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p4

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->s:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    if-ne p2, v3, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->t:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v4}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->t:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v2

    aget-short v1, v1, v2

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->u:[S

    invoke-virtual {p3}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v3

    aget-short v2, v2, v3

    add-int/lit8 v3, p2, -0x2

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method a(ILcom/tendcloud/tenddata/ai;)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->r:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method a(ILcom/tendcloud/tenddata/ai;I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->s:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-short v0, v0, v1

    invoke-static {v0, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v2

    aget-object v1, v1, v2

    aget-short v1, v1, p3

    invoke-static {v1, v3}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/tendcloud/tenddata/ai;I)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    return v0
.end method

.method b(IILcom/tendcloud/tenddata/ai;I)I
    .locals 2

    invoke-virtual {p0, p3, p4}, Lcom/tendcloud/tenddata/j;->a(Lcom/tendcloud/tenddata/ai;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/tendcloud/tenddata/j;->b(ILcom/tendcloud/tenddata/ai;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/tendcloud/tenddata/j;->a(IILcom/tendcloud/tenddata/ai;I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->C:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v1, p2, p4}, Lcom/tendcloud/tenddata/j$a;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method b(ILcom/tendcloud/tenddata/ai;)I
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->r:[S

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/ai;->b()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/l;->a(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public b()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->o:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->p:Lcom/tendcloud/tenddata/ai;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/ai;->a()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->q:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->r:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->s:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->t:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->u:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->v:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->w:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->w:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/tendcloud/tenddata/j;->x:[[S

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/tendcloud/tenddata/l;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->y:[S

    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a([S)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->A:Lcom/tendcloud/tenddata/j$c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$c;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->B:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$a;->a()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->C:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$a;->a()V

    iput v1, p0, Lcom/tendcloud/tenddata/j;->L:I

    iput v1, p0, Lcom/tendcloud/tenddata/j;->M:I

    iget v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    iget v1, p0, Lcom/tendcloud/tenddata/j;->F:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    return-void
.end method

.method public c()Lcom/tendcloud/tenddata/m;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    return-object v0
.end method

.method c(I)V
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/m;->a(I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/j;->R:I

    return-void
.end method

.method public f()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/m;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/j;->i()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/tendcloud/tenddata/j;->R:I

    const v2, 0x1ffeef

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->K:Lcom/tendcloud/tenddata/l;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/l;->b()I

    move-result v1

    const/16 v2, 0x1fe6

    if-gt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/j;->j()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()Lcom/tendcloud/tenddata/ab;
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/j;->F:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/m;->a()Lcom/tendcloud/tenddata/ab;

    move-result-object v0

    sget-boolean v1, Lcom/tendcloud/tenddata/j;->G:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tendcloud/tenddata/j;->z:Lcom/tendcloud/tenddata/m;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/m;->a(Lcom/tendcloud/tenddata/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method h()V
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/j;->L:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/j;->k()V

    :cond_0
    iget v0, p0, Lcom/tendcloud/tenddata/j;->M:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/tendcloud/tenddata/j;->l()V

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->B:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$a;->b()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/j;->C:Lcom/tendcloud/tenddata/j$a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j$a;->b()V

    return-void
.end method
