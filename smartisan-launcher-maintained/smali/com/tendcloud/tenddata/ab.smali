.class public final Lcom/tendcloud/tenddata/ab;
.super Ljava/lang/Object;


.field public final a:[I

.field public final b:[I

.field public c:I


.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/ab;->c:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/ab;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tendcloud/tenddata/ab;->b:[I

    return-void
.end method
