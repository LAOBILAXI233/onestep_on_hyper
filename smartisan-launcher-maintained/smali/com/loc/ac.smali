.class public Lcom/loc/ac;
.super Lcom/loc/ag;
.source "AnrLogProcessor.java"


.field private static a:Z


.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ac;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/ag;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ac;->b:[Ljava/lang/String;

    iput v1, p0, Lcom/loc/ac;->c:I

    iput-boolean v1, p0, Lcom/loc/ac;->d:Z

    iput v1, p0, Lcom/loc/ac;->e:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/loc/ac;->c:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ac;->c:I

    :cond_0
    iget-object v0, p0, Lcom/loc/ac;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/loc/ac;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/loc/ac;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/ac;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ANRWriter"

    const-string v2, "addData"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget v0, p0, Lcom/loc/ac;->c:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/loc/ac;->c:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/loc/ac;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/loc/ac;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "getLogInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
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

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v3, "/data/anr/traces.txt"

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/loc/bm;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_12

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Lcom/loc/bm;

    sget-object v0, Lcom/loc/bn;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/loc/bm;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v5

    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/loc/bm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    :goto_4
    const-string v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/loc/bm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    move-object v6, v0

    move v0, v4

    :goto_5
    const-string v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    :goto_6
    if-eqz v4, :cond_3

    invoke-direct {p0, v6}, Lcom/loc/ac;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/loc/ac;->e:I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x5

    if-ne v0, v7, :cond_7

    :goto_7
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Lcom/loc/bm;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_14

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_16

    :cond_6
    :goto_9
    iget-boolean v0, p0, Lcom/loc/ac;->d:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/loc/ac;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    :try_start_8
    iget-boolean v0, p0, Lcom/loc/ac;->d:Z

    if-nez v0, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->f()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/loc/ac;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/loc/ac;->d:Z

    iget-boolean v8, p0, Lcom/loc/ac;->d:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0, v0}, Lcom/loc/ac;->a(Lcom/loc/v;)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_9
    iget v0, p0, Lcom/loc/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/ac;->e:I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_18
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    :goto_b
    if-eqz v0, :cond_a

    :try_start_9
    invoke-virtual {v0}, Lcom/loc/bm;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_a
    :goto_c
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    :catch_2
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    :goto_d
    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_e
    :try_start_b
    const-string v4, "ANRWriter"

    const-string v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Lcom/loc/bm;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    :cond_b
    :goto_f
    if-eqz v3, :cond_6

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_9

    :catch_4
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_10
    if-eqz v2, :cond_c

    :try_start_e
    invoke-virtual {v2}, Lcom/loc/bm;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    :cond_c
    :goto_11
    if-eqz v3, :cond_d

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    :cond_d
    :goto_12
    throw v0

    :cond_e
    move-object v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_7
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    :goto_13
    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_8
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_9
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v1, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_a
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_b
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_c
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_d
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_e
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto :goto_13

    :catch_f
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v2, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_10
    move-exception v2

    const-string v3, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v2, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_12
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_13
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_14
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_15
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog3"

    goto/16 :goto_d

    :catch_16
    move-exception v0

    const-string v2, "ANRWriter"

    const-string v3, "initLog4"

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :catch_17
    move-exception v0

    move-object v2, v1

    goto/16 :goto_e

    :catch_18
    move-exception v0

    goto/16 :goto_e

    :catch_19
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_b

    :catch_1a
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_b

    :cond_f
    move v4, v0

    goto/16 :goto_6

    :cond_10
    move-object v6, v0

    move v0, v4

    goto/16 :goto_5
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/loc/q;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/loc/ac;->a:Z

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/loc/ac;->a:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/loc/as;

    invoke-direct {v3, p1}, Lcom/loc/as;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/loc/as;->a()Lcom/loc/au;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Lcom/loc/au;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/loc/au;->c(Z)V

    invoke-virtual {v3, v4}, Lcom/loc/as;->a(Lcom/loc/au;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
