.class final Lcom/tendcloud/tenddata/ai;
.super Ljava/lang/Object;


.field static final a:I = 0xc

.field private static final b:I = 0x7

.field private static final c:I = 0x0

.field private static final d:I = 0x3

.field private static final e:I = 0x7

.field private static final f:I = 0x8

.field private static final g:I = 0x9

.field private static final h:I = 0xa

.field private static final i:I = 0xb


.field private j:I


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/ai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/tendcloud/tenddata/ai;->j:I

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void
.end method


.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void
.end method

.method a(Lcom/tendcloud/tenddata/ai;)V
    .locals 1

    iget v0, p1, Lcom/tendcloud/tenddata/ai;->j:I

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return v0
.end method

.method c()V
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    goto :goto_0
.end method

.method d()V
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lcom/tendcloud/tenddata/ai;->j:I

    if-ge v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method e()V
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method f()V
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/16 v0, 0x9

    :goto_0
    iput v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method g()Z
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/ai;->j:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
