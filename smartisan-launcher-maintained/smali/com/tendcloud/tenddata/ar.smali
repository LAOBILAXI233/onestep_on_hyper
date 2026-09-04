.class final Lcom/tendcloud/tenddata/ar;
.super Ljava/lang/Object;


.field private static final j:I = 0x40000000


.field final a:Lcom/tendcloud/tenddata/ai;

.field final b:[I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:I

.field i:I


.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tendcloud/tenddata/ai;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/ai;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/ar;->a:Lcom/tendcloud/tenddata/ai;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/ar;->b:[I

    return-void
.end method


.method a()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/tendcloud/tenddata/ar;->c:I

    return-void
.end method

.method a(III)V
    .locals 1

    iput p1, p0, Lcom/tendcloud/tenddata/ar;->c:I

    iput p2, p0, Lcom/tendcloud/tenddata/ar;->d:I

    iput p3, p0, Lcom/tendcloud/tenddata/ar;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ar;->f:Z

    return-void
.end method

.method a(IIIII)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lcom/tendcloud/tenddata/ar;->c:I

    add-int v0, p2, p4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/ar;->d:I

    iput p5, p0, Lcom/tendcloud/tenddata/ar;->e:I

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/ar;->f:Z

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/ar;->g:Z

    iput p2, p0, Lcom/tendcloud/tenddata/ar;->h:I

    iput p3, p0, Lcom/tendcloud/tenddata/ar;->i:I

    return-void
.end method

.method b(III)V
    .locals 1

    iput p1, p0, Lcom/tendcloud/tenddata/ar;->c:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/ar;->d:I

    iput p3, p0, Lcom/tendcloud/tenddata/ar;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ar;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ar;->g:Z

    return-void
.end method
