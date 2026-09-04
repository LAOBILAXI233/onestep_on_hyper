.class public Lcom/loc/ao;
.super Ljava/lang/Object;
.source "LogEntity.java"

.implements Lcom/loc/ak;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/loc/ak",
        "<",
        "Lcom/loc/ap;",
        ">;"
    }
.end annotation


.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


.field private e:Lcom/loc/ap;

.field private f:I


.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/loc/am;->l:Ljava/lang/String;

    sput-object v0, Lcom/loc/ao;->a:Ljava/lang/String;

    sget-object v0, Lcom/loc/am;->m:Ljava/lang/String;

    sput-object v0, Lcom/loc/ao;->b:Ljava/lang/String;

    sget-object v0, Lcom/loc/am;->n:Ljava/lang/String;

    sput-object v0, Lcom/loc/ao;->c:Ljava/lang/String;

    sget-object v0, Lcom/loc/am;->f:Ljava/lang/String;

    sput-object v0, Lcom/loc/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    iput p1, p0, Lcom/loc/ao;->f:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v0, Lcom/loc/ao;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/loc/ao;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/aj;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method public a()Landroid/content/ContentValues;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/loc/ao;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    invoke-virtual {v2}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/ao;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    invoke-virtual {v2}, Lcom/loc/ap;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/loc/ao;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    invoke-virtual {v2}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/loc/ao;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    invoke-virtual {v2}, Lcom/loc/ap;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/loc/ao;->b(Landroid/database/Cursor;)Lcom/loc/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/loc/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ao;->e:Lcom/loc/ap;

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/loc/ap;

    invoke-virtual {p0, p1}, Lcom/loc/ao;->a(Lcom/loc/ap;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;)Lcom/loc/ap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v1, Lcom/loc/ap;

    invoke-direct {v1}, Lcom/loc/ap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/loc/ap;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/loc/ap;->a(I)V

    invoke-static {v4}, Lcom/loc/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/loc/ap;->b(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/loc/ao;->f:I

    invoke-static {v0}, Lcom/loc/af;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
