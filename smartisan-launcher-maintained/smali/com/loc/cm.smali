.class public Lcom/loc/cm;
.super Lcom/loc/cn;
.source "OfflineFileCache.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loc/cn",
        "<",
        "Ljava/lang/String;",
        "Lcom/loc/ch;",
        ">;"
    }
.end annotation


.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/loc/cn;-><init>(I)V

    return-void
.end method


.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/loc/ch;

    invoke-virtual {p0, p1, p2}, Lcom/loc/cm;->a(Ljava/lang/String;Lcom/loc/ch;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/loc/ch;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/loc/ch;->g()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OfflineFileCache"

    const-string v3, "sizeOf"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/loc/ch;

    check-cast p4, Lcom/loc/ch;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/loc/cm;->a(ZLjava/lang/String;Lcom/loc/ch;Lcom/loc/ch;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lcom/loc/ch;Lcom/loc/ch;)V
    .locals 3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/loc/ch;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loc/cn;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineFileCache"

    const-string v2, "entryRemoved"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
