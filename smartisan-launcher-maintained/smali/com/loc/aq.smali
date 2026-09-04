.class public Lcom/loc/aq;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


.field private a:Lcom/loc/aj;

.field private b:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/loc/aq;->a(Landroid/content/Context;Z)Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/loc/aj;
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

    if-nez p2, :cond_0

    const-string v2, "SDKDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/v;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/loc/ar;

    invoke-direct {v1}, Lcom/loc/ar;-><init>()V

    invoke-static {}, Lcom/loc/ar;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/loc/v;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/aq;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/aq;->a(Landroid/content/Context;Z)Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    :cond_1
    new-instance v0, Lcom/loc/ar;

    invoke-direct {v0}, Lcom/loc/ar;-><init>()V

    invoke-interface {v0, p1}, Lcom/loc/ak;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    new-instance v3, Lcom/loc/ar;

    invoke-direct {v3}, Lcom/loc/ar;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    invoke-virtual {v1, v0}, Lcom/loc/aj;->a(Lcom/loc/ak;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDKDB"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/loc/aq;->a:Lcom/loc/aj;

    invoke-virtual {v2, v1, v0}, Lcom/loc/aj;->b(Ljava/lang/String;Lcom/loc/ak;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
