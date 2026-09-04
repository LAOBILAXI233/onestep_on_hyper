.class abstract Lcom/loc/ag;
.super Ljava/lang/Object;
.source "LogProcessor.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ag$a;
    }
.end annotation


.field private a:Lcom/loc/v;

.field private b:I

.field private c:Lcom/loc/bl;

.field private d:Lcom/loc/bi;


.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loc/ag;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/loc/v;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loc/o;->a(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/ap;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/loc/ag;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ap;

    invoke-virtual {v0}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/loc/ag;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/loc/ap;->d()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    const-string v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/loc/an;I)V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/loc/an;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/loc/ag;->a(Ljava/util/List;Lcom/loc/an;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/loc/an;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Lcom/loc/ap;

    invoke-direct {v0}, Lcom/loc/ap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/ap;->a(I)V

    invoke-virtual {v0, p2}, Lcom/loc/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/loc/ap;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p4}, Lcom/loc/an;->b(Lcom/loc/ap;I)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/loc/an;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/ap;",
            ">;",
            "Lcom/loc/an;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ap;

    invoke-virtual {v0}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/ag;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/loc/ap;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/loc/an;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/loc/ap;->a(I)V

    invoke-virtual {v0}, Lcom/loc/ap;->a()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/loc/an;->a(Lcom/loc/ap;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/an;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/loc/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_f

    :cond_2
    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5000

    :try_start_4
    invoke-static {v4, v0, v5, v6, v7}, Lcom/loc/bi;->a(Ljava/io/File;IIJ)Lcom/loc/bi;

    move-result-object v2

    invoke-virtual {p0, p5}, Lcom/loc/ag;->a(Lcom/loc/an;)Lcom/loc/bl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bi;->a(Lcom/loc/bl;)V

    invoke-virtual {v2, p2}, Lcom/loc/bi;->a(Ljava/lang/String;)Lcom/loc/bi$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_10

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_11

    :cond_5
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_7
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_6
    :try_start_8
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, p2}, Lcom/loc/bi;->b(Ljava/lang/String;)Lcom/loc/bi$a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/loc/bi$a;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/loc/bi$a;->a()V

    invoke-virtual {v2}, Lcom/loc/bi;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x1

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_12

    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_13

    :cond_8
    :goto_7
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_b
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_9

    :try_start_d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_f
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    :cond_b
    :goto_a
    const/4 v0, 0x0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v3, :cond_c

    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    :cond_c
    :goto_b
    if-eqz v1, :cond_d

    :try_start_12
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    :cond_d
    :goto_c
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_13
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_e

    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    :cond_e
    :goto_e
    if-eqz v1, :cond_f

    :try_start_15
    invoke-virtual {v1}, Lcom/loc/bi$b;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    :cond_f
    :goto_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/loc/bi;->a()Z

    move-result v1

    if-nez v1, :cond_10

    :try_start_16
    invoke-virtual {v2}, Lcom/loc/bi;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7

    :cond_10
    :goto_10
    throw v0

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :catch_d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :catch_12
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/bi;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/af;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/loc/bi;->a(Ljava/io/File;IIJ)Lcom/loc/bi;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    invoke-virtual {v1, p1}, Lcom/loc/bi;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LogUpdateProcessor"

    const-string v3, "deleteLogData"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "LogUpdateProcessor"

    const-string v3, "deleteLogData"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/w;->b([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/loc/ah;

    invoke-direct {v3, v0}, Lcom/loc/ah;-><init>([B)V

    :try_start_1
    invoke-static {}, Lcom/loc/bo;->a()Lcom/loc/bo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/loc/bo;->b(Lcom/loc/bs;)[B
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/w;->b([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/loc/l; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/loc/l; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    :goto_3
    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Lcom/loc/l; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/l;->a()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_2

    :goto_4
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_5
    const-string v3, "LogProcessor"

    const-string v4, "processUpdate"

    invoke-static {v0, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/loc/l; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v2

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_4
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/w;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/loc/ag;->d:Lcom/loc/bi;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    invoke-virtual {v3, p1}, Lcom/loc/bi;->a(Ljava/lang/String;)Lcom/loc/bi$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    :goto_3
    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/loc/bi$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v1

    :goto_5
    :try_start_9
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_5
    :goto_6
    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    :cond_6
    :try_start_c
    const-string v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_7

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    :cond_7
    :goto_7
    if-eqz v3, :cond_1

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_8
    :try_start_f
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v2, :cond_8

    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_8
    :goto_9
    if-eqz v3, :cond_1

    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_a
    if-eqz v2, :cond_9

    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :cond_9
    :goto_b
    if-eqz v3, :cond_a

    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :cond_a
    :goto_c
    throw v0

    :catch_6
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_7
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_8
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_9
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_a
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_b
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    goto/16 :goto_3

    :catch_c
    move-exception v2

    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_d
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_e
    move-exception v1

    move-object v2, v0

    goto :goto_8

    :catch_f
    move-exception v1

    goto :goto_8

    :catch_10
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_11
    move-exception v1

    move-object v2, v0

    goto/16 :goto_5
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/loc/ag;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->d:Lcom/loc/bi;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/loc/v;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/loc/aq;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/loc/aq;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/loc/aq;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/loc/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/loc/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loc/o;->c(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


.method protected a(Lcom/loc/an;)Lcom/loc/bl;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/ag;->c:Lcom/loc/bl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ag$a;

    invoke-direct {v0, p0, p1}, Lcom/loc/ag$a;-><init>(Lcom/loc/ag;Lcom/loc/an;)V

    iput-object v0, p0, Lcom/loc/ag;->c:Lcom/loc/bl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/ag;->c:Lcom/loc/bl;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/loc/ag;->b:I

    invoke-static {v0}, Lcom/loc/af;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/loc/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/ag;->b(Ljava/lang/Throwable;)Ljava/lang/String;
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

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/v;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/loc/ag;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/loc/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/loc/ag;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/ag;->a(Lcom/loc/v;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/v$a;

    const-string v1, "collection"

    const-string v2, "1.0"

    const-string v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/ag;->a(Lcom/loc/v;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Lcom/loc/v;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ag;->a:Lcom/loc/v;

    return-void
.end method

.method a(Lcom/loc/v;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/loc/ag;->a(Lcom/loc/v;)V

    invoke-direct/range {p0 .. p0}, Lcom/loc/ag;->d()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/ag;->a(Landroid/content/Context;Lcom/loc/v;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/loc/ag;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/loc/ag;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/loc/ag;->b()I

    move-result v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_2

    const-string v9, "class:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p6, :cond_3

    const-string v9, " method:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br/>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/loc/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/loc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/loc/ag;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    new-instance v13, Lcom/loc/an;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lcom/loc/an;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v8 .. v13}, Lcom/loc/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/an;)Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v12, p0

    move-object v15, v10

    move/from16 v16, v7

    invoke-direct/range {v12 .. v17}, Lcom/loc/ag;->a(Lcom/loc/an;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lcom/loc/ag;->b:I

    return v0
.end method

.method b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/loc/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/loc/ag;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/loc/ag;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/loc/ag;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/ag;->a:Lcom/loc/v;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/ag;->a(Landroid/content/Context;Lcom/loc/v;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/loc/ag;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ANR"

    invoke-virtual/range {p0 .. p0}, Lcom/loc/ag;->b()I

    move-result v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/loc/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/loc/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/ag;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v12, Lcom/loc/an;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/loc/an;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/loc/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/an;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/ag;->a:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/loc/ag;->a(Lcom/loc/an;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    invoke-virtual {v0}, Lcom/loc/bi;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ag;->d:Lcom/loc/bi;

    invoke-virtual {v0}, Lcom/loc/bi;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/ag;->d(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/loc/ag;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/an;

    invoke-direct {v0, p1}, Lcom/loc/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/loc/ag;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/loc/ag;->a(Lcom/loc/an;I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/loc/ag;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/loc/an;->a(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "processUpdateLog"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/loc/ag;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    monitor-exit v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/loc/ag;->c(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/loc/ag;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/ag;->a(Ljava/util/List;Lcom/loc/an;I)V

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
