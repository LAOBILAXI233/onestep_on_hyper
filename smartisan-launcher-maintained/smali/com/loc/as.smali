.class public Lcom/loc/as;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


.field private a:Lcom/loc/aj;

.field private b:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/as;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/as;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/as;->a(Landroid/content/Context;)Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/loc/aj;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/aj;

    invoke-static {}, Lcom/loc/am;->c()Lcom/loc/am;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/ai;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


.method public a()Lcom/loc/au;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/as;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/as;->a(Landroid/content/Context;)Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    :cond_0
    const-string v0, "1=1"

    iget-object v2, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    new-instance v3, Lcom/loc/at;

    invoke-direct {v3}, Lcom/loc/at;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/au;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/loc/au;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/as;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/as;->a(Landroid/content/Context;)Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    :cond_1
    new-instance v0, Lcom/loc/at;

    invoke-direct {v0}, Lcom/loc/at;-><init>()V

    invoke-interface {v0, p1}, Lcom/loc/ak;->a(Ljava/lang/Object;)V

    const-string v1, "1=1"

    iget-object v2, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    new-instance v3, Lcom/loc/at;

    invoke-direct {v3}, Lcom/loc/at;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    invoke-virtual {v1, v0}, Lcom/loc/aj;->a(Lcom/loc/ak;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UpdateLogDB"

    const-string v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/loc/as;->a:Lcom/loc/aj;

    invoke-virtual {v2, v1, v0}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
