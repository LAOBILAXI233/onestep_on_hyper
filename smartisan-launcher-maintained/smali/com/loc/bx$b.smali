.class Lcom/loc/bx$b;
.super Ljava/lang/Object;
.source "MPos.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


.field final synthetic a:Lcom/loc/bx;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


.method public constructor <init>(Lcom/loc/bx;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bx$b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx$b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/loc/bx$b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/bx$b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(II)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v0}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v0

    aget-object v0, v0, p1

    aput-short v8, v0, p2

    iget-object v0, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v0}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v0

    aget-object v0, v0, p2

    aput-short v8, v0, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v2}, Lcom/loc/bx;->b(Lcom/loc/bx;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v2}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v2

    aget-object v2, v2, p1

    aget-short v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v2}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v2

    aget-object v2, v2, p2

    aget-short v2, v2, v0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v6}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v6}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-short v8, v0, v5

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v6}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    aget-short v0, v6, v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/loc/bx$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v0}, Lcom/loc/bx;->b(Lcom/loc/bx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v3, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v3}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v3

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    if-lez v3, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/loc/bx$b;->a(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_7

    const/4 v0, 0x1

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_4

    iget-object v5, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v5}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-lez v5, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "non visited edge"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v5, p0, Lcom/loc/bx$b;->a:Lcom/loc/bx;

    invoke-static {v5}, Lcom/loc/bx;->a(Lcom/loc/bx;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-gez v5, :cond_6

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/loc/bx$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
