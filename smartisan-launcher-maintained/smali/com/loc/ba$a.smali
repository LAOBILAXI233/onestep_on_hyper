.class Lcom/loc/ba$a;
.super Ljava/lang/Object;
.source "DexFileManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/loc/aj;Ljava/lang/String;)Lcom/loc/bf;
    .locals 2

    invoke-static {p1}, Lcom/loc/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/be;

    invoke-direct {v1}, Lcom/loc/be;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bf;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/loc/be;

    invoke-direct {v0}, Lcom/loc/be;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loc/be;->a(Lcom/loc/bf;)V

    invoke-virtual {p0, v0, p2}, Lcom/loc/aj;->a(Lcom/loc/ak;Ljava/lang/String;)V

    return-void
.end method
