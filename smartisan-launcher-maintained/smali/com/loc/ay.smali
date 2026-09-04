.class public Lcom/loc/ay;
.super Ljava/lang/Object;
.source "InstanceFactory.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/loc/v;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/loc/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/bb;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/loc/bb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/loc/bb;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/loc/bb;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/loc/bb;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    :try_start_2
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_6
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_7
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_8
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v0, Lcom/loc/l;

    const-string v1, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_a
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_b
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_c
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_d
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
