.class public Lcom/loc/o;
.super Ljava/lang/Object;
.source "ClientInfo.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "1"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "CInfo"

    const-string v3, "getTS"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v0, "\"key\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"platform\":\"android\",\"diu\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/q;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"pkg\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"model\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"appname\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"appversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sysversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CInfo"

    const-string v3, "getPublicJSONInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/v;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/loc/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"product\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/loc/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/q;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"np\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"mnc\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ant\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/q;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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

.method public static a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/v;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v3, 0x75

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/loc/q;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/q;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/q;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/w;->a([B)[B

    move-result-object v1

    invoke-static {p0}, Lcom/loc/w;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    array-length v2, v1

    if-le v2, v3, :cond_4

    const/16 v2, 0x75

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x75

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v0}, Lcom/loc/r;->a([BLjava/security/Key;)[B

    move-result-object v2

    array-length v0, v1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x75

    const/16 v3, 0x80

    array-length v4, v1

    add-int/lit8 v4, v4, -0x75

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/loc/q;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "InitXInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/loc/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/loc/q;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lcom/loc/r;->a([BLjava/security/Key;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CInfo"

    const-string v3, "Scode"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/o;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 5

    const/16 v4, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-lez p1, :cond_1

    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0xff

    if-ge v3, v4, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    and-int/lit16 v0, p1, 0xff

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "writeField"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {p0}, Lcom/loc/w;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lcom/loc/r;->a([BLjava/security/Key;)[B

    move-result-object v0

    invoke-static {v1, p1}, Lcom/loc/r;->a([B[B)[B

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/loc/w;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/loc/r;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/o;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_6
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_7
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_8
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
