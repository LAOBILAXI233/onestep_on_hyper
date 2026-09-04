.class Lcom/loc/az;
.super Lcom/loc/bs;
.source "DexDownLoadRequest.java"


.field private d:Lcom/loc/ax;


.method constructor <init>(Lcom/loc/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bs;-><init>()V

    iput-object p1, p0, Lcom/loc/az;->d:Lcom/loc/ax;

    return-void
.end method


.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/az;->d:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
