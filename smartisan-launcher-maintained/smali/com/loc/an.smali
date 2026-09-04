.class public Lcom/loc/an;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


.field private a:Lcom/loc/aj;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/aj;

    invoke-static {}, Lcom/loc/am;->c()Lcom/loc/am;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/ai;)V

    iput-object v0, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    return-void
.end method

.method private a(Lcom/loc/ap;Lcom/loc/ao;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/loc/ao;->a(Lcom/loc/ap;)V

    iget-object v0, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v0, p2}, Lcom/loc/aj;->a(Lcom/loc/ak;)V

    return-void
.end method

.method private b(Lcom/loc/ap;Lcom/loc/ao;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v0, v1, p2, v4}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/loc/ao;->a(Lcom/loc/ap;)V

    iget-object v0, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v0, p2, v4}, Lcom/loc/aj;->a(Lcom/loc/ak;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ap;

    invoke-virtual {p1}, Lcom/loc/ap;->a()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/loc/ap;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/loc/ap;->b(I)V

    :goto_1
    invoke-virtual {p2, v0}, Lcom/loc/ao;->a(Lcom/loc/ap;)V

    iget-object v0, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v0, v1, p2}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/loc/ap;->b(I)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/loc/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/ao;

    invoke-direct {v1, p2}, Lcom/loc/ao;-><init>(I)V

    iget-object v2, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v2, v0, v1}, Lcom/loc/aj;->a(Ljava/lang/String;Lcom/loc/ak;)V

    return-void
.end method


.method public a(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/loc/ap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/loc/ao;

    invoke-direct {v1, p2}, Lcom/loc/ao;-><init>(I)V

    invoke-static {p1}, Lcom/loc/ao;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v3, v2, v1}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogDB"

    const-string v3, "ByState"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/loc/ap;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/ao;

    invoke-direct {v0, p2}, Lcom/loc/ao;-><init>(I)V

    invoke-interface {v0, p1}, Lcom/loc/ak;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/an;->a:Lcom/loc/aj;

    invoke-virtual {v2, v1, v0}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogDB"

    const-string v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/an;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogDB"

    const-string v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/loc/ap;I)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/loc/ao;

    invoke-direct {v0, p2}, Lcom/loc/ao;-><init>(I)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/loc/an;->a(Lcom/loc/ap;Lcom/loc/ao;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/loc/an;->b(Lcom/loc/ap;Lcom/loc/ao;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/loc/an;->b(Lcom/loc/ap;Lcom/loc/ao;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/loc/an;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
