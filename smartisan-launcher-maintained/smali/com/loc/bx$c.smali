.class public Lcom/loc/bx$c;
.super Ljava/lang/Object;
.source "MPos.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


.field public a:D

.field public b:D

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field final synthetic f:Lcom/loc/bx;


.method public constructor <init>(Lcom/loc/bx;DD)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/bx$c;->f:Lcom/loc/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/bx$c;->a:D

    iput-wide v0, p0, Lcom/loc/bx$c;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bx$c;->c:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/bx$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bx$c;->e:I

    iput-wide p2, p0, Lcom/loc/bx$c;->a:D

    iput-wide p4, p0, Lcom/loc/bx$c;->b:D

    return-void
.end method

.method public constructor <init>(Lcom/loc/bx;DDII)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/bx$c;->f:Lcom/loc/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/bx$c;->a:D

    iput-wide v0, p0, Lcom/loc/bx$c;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bx$c;->c:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/bx$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bx$c;->e:I

    iput-wide p2, p0, Lcom/loc/bx$c;->a:D

    iput-wide p4, p0, Lcom/loc/bx$c;->b:D

    iput p6, p0, Lcom/loc/bx$c;->c:I

    iput p7, p0, Lcom/loc/bx$c;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/loc/bx;DDILjava/lang/String;DI)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/bx$c;->f:Lcom/loc/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/bx$c;->a:D

    iput-wide v0, p0, Lcom/loc/bx$c;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bx$c;->c:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/loc/bx$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/bx$c;->e:I

    iput-wide p2, p0, Lcom/loc/bx$c;->a:D

    iput-wide p4, p0, Lcom/loc/bx$c;->b:D

    iput-object p7, p0, Lcom/loc/bx$c;->d:Ljava/lang/String;

    iput p6, p0, Lcom/loc/bx$c;->c:I

    iput p10, p0, Lcom/loc/bx$c;->e:I

    return-void
.end method

.method private a(Lcom/loc/bx$c;)Z
    .locals 12

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/loc/bx$c;->b(Lcom/loc/bx$c;)D

    move-result-wide v2

    cmpg-double v4, v2, v8

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/loc/bx$c;->e:I

    if-lez v4, :cond_2

    iget v4, p1, Lcom/loc/bx$c;->e:I

    if-eqz v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/loc/bx$c;->e:I

    if-nez v4, :cond_7

    iget v4, p1, Lcom/loc/bx$c;->e:I

    if-lez v4, :cond_7

    :cond_3
    iget v4, p0, Lcom/loc/bx$c;->e:I

    if-eq v4, v0, :cond_4

    iget v4, p1, Lcom/loc/bx$c;->e:I

    if-ne v4, v0, :cond_6

    :cond_4
    const-wide v4, 0x40a7700000000000L    # 3000.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_5

    iget v4, p0, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    iget v4, p1, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    cmpg-double v2, v2, v10

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/loc/bx$c;->e:I

    if-gtz v4, :cond_8

    iget v4, p1, Lcom/loc/bx$c;->e:I

    if-lez v4, :cond_b

    :cond_8
    cmpg-double v4, v2, v10

    if-ltz v4, :cond_9

    iget v4, p0, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_9

    iget v4, p1, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    :cond_9
    move v1, v0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget v4, p0, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_c

    iget v4, p1, Lcom/loc/bx$c;->c:I

    int-to-double v4, v4

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_c

    cmpg-double v2, v2, v8

    if-gez v2, :cond_d

    :cond_c
    move v1, v0

    :cond_d
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/bx$c;Lcom/loc/bx$c;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/loc/bx$c;->a(Lcom/loc/bx$c;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/loc/bx$c;)D
    .locals 12

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d28L    # 3.1415926535898

    const-wide v0, 0x41583fbd40000000L    # 6356725.0

    const-wide v2, 0x40d4e90000000000L    # 21412.0

    iget-wide v4, p0, Lcom/loc/bx$c;->a:D

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/loc/bx$c;->a:D

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p1, Lcom/loc/bx$c;->b:D

    iget-wide v6, p0, Lcom/loc/bx$c;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/loc/bx$c;->a:D

    iget-wide v6, p0, Lcom/loc/bx$c;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v0, v4

    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/loc/bx$c;Lcom/loc/bx$c;)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/loc/bx$c;->b(Lcom/loc/bx$c;)D

    move-result-wide v0

    return-wide v0
.end method
