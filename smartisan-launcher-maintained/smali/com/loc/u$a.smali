.class Lcom/loc/u$a;
.super Lcom/loc/bs;
.source "SDKCoordinatorDownload.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


.field private d:Ljava/lang/String;


.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/bs;-><init>()V

    iput-object p1, p0, Lcom/loc/u$a;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/loc/u$a;->d:Ljava/lang/String;

    return-object v0
.end method
