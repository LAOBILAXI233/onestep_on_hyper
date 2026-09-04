.class public Lcom/loc/cc;
.super Ljava/lang/Object;
.source "Off.java"


.field public static final a:[I

.field static b:I

.field private static volatile c:Ljava/lang/String;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/loc/cm;

.field private static f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/telephony/TelephonyManager;


.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/loc/cc;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    new-instance v0, Lcom/loc/cm;

    invoke-direct {v0}, Lcom/loc/cm;-><init>()V

    sput-object v0, Lcom/loc/cc;->e:Lcom/loc/cm;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    sput-object v1, Lcom/loc/cc;->g:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/loc/cc;->a:[I

    const v0, 0x34383

    sput v0, Lcom/loc/cc;->b:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v2, v1, [I

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    aget v4, v2, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v3, v4

    aput v3, v2, v0

    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/loc/cc;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(ILcom/loc/ch;Ljava/lang/String;[IIILjava/lang/String;I)I
    .locals 8

    const/4 v0, -0x1

    add-int/lit8 v7, p7, 0x1

    const/16 v1, 0x19

    if-le v7, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    add-int v5, v1, p0

    invoke-static {p1, p2, p3, v5, p6}, Lcom/loc/cc;->a(Lcom/loc/ch;Ljava/lang/String;[IILjava/lang/String;)I

    move-result v1

    if-ne p4, v5, :cond_3

    if-ne v5, p5, :cond_3

    if-nez v1, :cond_2

    :goto_1
    move v0, p4

    goto :goto_0

    :cond_2
    move p4, v0

    goto :goto_1

    :cond_3
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    if-gez v1, :cond_5

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/cc;->a(ILcom/loc/ch;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v5, 0x10

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/cc;->a(ILcom/loc/ch;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Lcom/loc/ch;Ljava/lang/String;[IILjava/lang/String;)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    int-to-long v4, p3

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/loc/ch;->a(J)V

    const-string v3, "gsm"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    invoke-virtual {p0}, Lcom/loc/ch;->d()I

    move-result v5

    invoke-virtual {p0}, Lcom/loc/ch;->e()I

    move-result v6

    if-ge v3, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v3, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-lt v4, v6, :cond_0

    if-le v4, v6, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string v3, "cdma"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x3

    new-array v4, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, p2, v5

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget v5, p2, v5

    aput v5, v4, v3

    const/4 v3, 0x2

    const/4 v5, 0x2

    aget v5, p2, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    new-array v5, v3, [I

    move v3, v2

    :goto_1
    if-ge v3, v9, :cond_6

    invoke-virtual {p0}, Lcom/loc/ch;->d()I

    move-result v6

    aput v6, v5, v3

    aget v6, v4, v3

    aget v7, v5, v3

    if-lt v6, v7, :cond_0

    aget v6, v4, v3

    aget v7, v5, v3

    if-le v6, v7, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    const-string v3, "wifi"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p1}, Lcom/loc/cw;->b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v3, 0x6

    new-array v6, v3, [I

    move v4, v2

    :goto_2
    if-ge v4, v8, :cond_9

    aget-byte v3, v5, v4

    if-gez v3, :cond_8

    aget-byte v3, v5, v4

    add-int/lit16 v3, v3, 0x100

    :goto_3
    aput v3, v6, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_8
    aget-byte v3, v5, v4

    goto :goto_3

    :cond_9
    const/4 v3, 0x6

    new-array v4, v3, [I

    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_b

    invoke-virtual {p0}, Lcom/loc/ch;->f()I

    move-result v5

    aput v5, v4, v3

    aget v5, v6, v3

    aget v7, v4, v3

    if-lt v5, v7, :cond_0

    aget v5, v6, v3

    aget v7, v4, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v7, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Off"

    const-string v2, "cmpItem"

    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const v0, 0x7fffffff

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cgi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static a(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/autonavi/aps/amapapi/model/AmapLoc;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/loc/bx;

    invoke-direct {v5}, Lcom/loc/bx;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_1
    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    :try_start_1
    invoke-virtual {v5, v0, v7}, Lcom/loc/bx;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Off"

    const-string v7, "calLoc part1"

    invoke-static {v0, v3, v7}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Off"

    const-string v3, "calLoc part3"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    int-to-double v0, p3

    int-to-double v6, p2

    :try_start_3
    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/loc/bx;->a(DD)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bx$c;

    if-nez v2, :cond_6

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    :goto_4
    const-string v4, "network"

    invoke-virtual {v1, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/loc/bx$c;->a:D

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    iget-wide v4, v0, Lcom/loc/bx$c;->b:D

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    iget v4, v0, Lcom/loc/bx$c;->c:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    iget-object v0, v0, Lcom/loc/bx$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_5
    invoke-static {v1}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "file"

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    :goto_6
    return-object v1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v5, v3, v0}, Lcom/loc/bx;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_6
    const-string v3, "Off"

    const-string v6, "calLoc part2"

    invoke-static {v0, v3, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v1, "Off"

    const-string v3, "calLoc part4"

    invoke-static {v0, v1, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto/16 :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_6

    :cond_6
    move-object v1, v2

    goto/16 :goto_4

    :cond_7
    move-object v1, v2

    goto :goto_5

    :cond_8
    move v3, v4

    goto/16 :goto_1
.end method

.method public static a([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 29

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v4, "gps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/loc/cc;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/loc/cc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-static {v14, v0, v1, v2}, Lcom/loc/cc;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/loc/cc;->c()Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez p0, :cond_4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/cc;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    array-length v4, v6

    div-int/lit8 v19, v4, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x1

    move/from16 v0, p4

    if-gt v8, v0, :cond_27

    const/4 v8, 0x3

    move/from16 v0, p4

    if-gt v0, v8, :cond_27

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v4

    sput v4, Lcom/loc/e;->o:I

    const/4 v4, 0x0

    move v8, v5

    move v5, v7

    move v7, v4

    :goto_3
    array-length v4, v6

    if-ge v7, v4, :cond_3

    sget-boolean v4, Lcom/loc/e;->n:Z

    if-nez v4, :cond_5

    :cond_3
    :goto_4
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v4, p6, v4

    const/4 v5, 0x1

    aget v5, p6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5}, Lcom/loc/cc;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/cw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/cc;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    :cond_5
    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    if-gtz v5, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    if-nez v7, :cond_3

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v19

    if-ge v7, v0, :cond_25

    packed-switch v14, :pswitch_data_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v4, Lcom/loc/cc;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    :goto_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move/from16 v28, v5

    move v5, v8

    move/from16 v8, v28

    goto/16 :goto_3

    :cond_8
    move/from16 v0, v19

    if-lt v7, v0, :cond_9

    if-gtz v8, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_9
    move/from16 v0, v19

    if-lt v7, v0, :cond_6

    if-lez v5, :cond_6

    goto :goto_5

    :cond_a
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    const/16 v4, 0x8

    if-le v7, v4, :cond_b

    const/16 v4, 0x19

    if-ge v7, v4, :cond_b

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto :goto_7

    :cond_b
    const/16 v4, 0x21

    if-le v7, v4, :cond_7

    goto/16 :goto_4

    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v9, v6, v7

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    aget-object v9, v6, v7

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x3

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_e
    sget-object v21, Lcom/loc/cc;->e:Lcom/loc/cm;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/cm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loc/ch;

    const/4 v9, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_12

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_11

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_11
    new-instance v10, Lcom/loc/ch$a;

    invoke-direct {v10}, Lcom/loc/ch$a;-><init>()V

    :try_start_0
    new-instance v4, Lcom/loc/ch;

    invoke-direct {v4, v12, v10}, Lcom/loc/ch;-><init>(Ljava/io/File;Lcom/loc/ch$a;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_9
    move-object v10, v4

    :goto_a
    const/4 v4, 0x0

    if-nez v10, :cond_13

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_0
    move-exception v4

    const-string v9, "Off"

    const-string v10, "search part1"

    invoke-static {v4, v9, v10}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_1
    move-exception v4

    const-string v11, "Off"

    const-string v13, "search part2"

    invoke-static {v4, v11, v13}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/loc/ch$a;->a:Z

    :try_start_1
    new-instance v4, Lcom/loc/ch;

    invoke-direct {v4, v12, v10}, Lcom/loc/ch;-><init>(Ljava/io/File;Lcom/loc/ch$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_9

    :catch_2
    move-exception v4

    move-object v10, v4

    const/4 v4, 0x0

    const-string v11, "Off"

    const-string v13, "search part3"

    invoke-static {v10, v11, v13}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/4 v9, 0x1

    move-object v10, v4

    goto :goto_a

    :cond_13
    const-wide/16 v22, 0x0

    :try_start_2
    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/loc/ch;->a(J)V

    invoke-virtual {v10}, Lcom/loc/ch;->c()J

    move-result-wide v22

    move/from16 v0, v19

    if-ge v7, v0, :cond_14

    invoke-virtual {v10}, Lcom/loc/ch;->d()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    :cond_14
    :try_start_3
    invoke-virtual {v10}, Lcom/loc/ch;->g()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result-wide v24

    const/16 v11, 0x8

    move/from16 v0, v19

    if-ge v7, v0, :cond_15

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v11

    move v11, v4

    :cond_15
    const-wide v26, 0x1cf7c5800L

    add-long v22, v22, v26

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v26

    cmp-long v4, v22, v26

    if-gez v4, :cond_1a

    if-eqz v10, :cond_16

    if-eqz v9, :cond_19

    :try_start_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/cm;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_16
    :goto_b
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_3
    move-exception v4

    const-string v10, "Off"

    const-string v11, "search part4"

    invoke-static {v4, v10, v11}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_17

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/cm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_4
    move-exception v4

    const-string v10, "Off"

    const-string v11, "search part5"

    invoke-static {v4, v10, v11}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/cm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_19
    :try_start_5
    invoke-virtual {v10}, Lcom/loc/ch;->b()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v4

    const-string v9, "Off"

    const-string v10, "search part6"

    invoke-static {v4, v9, v10}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const-wide/16 v22, 0x8

    cmp-long v4, v24, v22

    if-lez v4, :cond_1b

    int-to-long v0, v11

    move-wide/from16 v22, v0

    sub-long v22, v24, v22

    const-wide/16 v24, 0x10

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v4, v22, v24

    if-eqz v4, :cond_1d

    :cond_1b
    if-eqz v10, :cond_1c

    :try_start_6
    invoke-virtual {v10}, Lcom/loc/ch;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_1c
    :goto_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_6
    move-exception v4

    const-string v9, "Off"

    const-string v10, "search part7"

    invoke-static {v4, v9, v10}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1d
    move/from16 v0, v19

    if-ge v7, v0, :cond_20

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    sget v4, Lcom/loc/e;->o:I

    if-ge v5, v4, :cond_20

    const/4 v4, 0x1

    move v13, v4

    :goto_d
    move/from16 v0, v19

    if-lt v7, v0, :cond_21

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    const/16 v4, 0xf

    if-ge v8, v4, :cond_21

    const/4 v4, 0x1

    move v12, v4

    :goto_e
    if-eqz v13, :cond_26

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v22

    move v13, v5

    :goto_f
    :try_start_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v11, v10, v5, v0}, Lcom/loc/cc;->a(ILcom/loc/ch;Ljava/lang/String;I)[D

    move-result-object v5

    if-eqz v5, :cond_22

    add-int/lit8 v13, v13, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v23, "|"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Lcom/loc/e;->o:I

    if-lt v13, v4, :cond_22

    :cond_1e
    :goto_10
    if-eqz v12, :cond_1f

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    if-eqz v12, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v11, v10, v5, v0}, Lcom/loc/cc;->a(ILcom/loc/ch;Ljava/lang/String;I)[D

    move-result-object v5

    if-eqz v5, :cond_23

    add-int/lit8 v8, v8, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v22, "|"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    const/16 v4, 0xf

    if-lt v8, v4, :cond_23

    :cond_1f
    move v5, v13

    :goto_12
    if-eqz v10, :cond_25

    invoke-virtual {v10}, Lcom/loc/ch;->a()Z

    move-result v4

    if-nez v4, :cond_24

    :try_start_9
    invoke-virtual {v10}, Lcom/loc/ch;->b()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_20
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_d

    :cond_21
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_e

    :cond_22
    move v4, v13

    move v13, v4

    goto/16 :goto_f

    :cond_23
    move v4, v8

    move v8, v4

    goto/16 :goto_11

    :catch_7
    move-exception v4

    move v13, v5

    :goto_13
    const-string v5, "Off"

    const-string v11, "search part8"

    invoke-static {v4, v5, v11}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v13

    goto :goto_12

    :catch_8
    move-exception v4

    const-string v9, "Off"

    const-string v10, "search part9"

    invoke-static {v4, v9, v10}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :cond_24
    if-nez v9, :cond_25

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/loc/cm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    :catch_9
    move-exception v4

    goto :goto_13

    :cond_26
    move v13, v5

    goto/16 :goto_10

    :cond_27
    move/from16 p4, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    aget-object v0, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/loc/cc;->c()Ljava/lang/StringBuilder;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/loc/cc;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/loc/cc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/loc/cc;->a(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/loc/cc;->e:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->a()V

    sget-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/cc;->a:[I

    aput v2, v0, v2

    sget-object v0, Lcom/loc/cc;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x3

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v0, v0

    if-ge v1, v0, :cond_0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IZZ)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/16 v0, 0x19

    if-ge p2, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "cgi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    sget-object v0, Lcom/loc/cc;->a:[I

    aget v0, v0, v1

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_0

    invoke-static {p0}, Lcom/loc/cw;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/co;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_6

    if-nez p4, :cond_0

    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_7

    if-nez p4, :cond_7

    sget-object v0, Lcom/loc/cc;->g:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_7

    const-string v0, "phone"

    invoke-static {p0, v0}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/loc/cc;->g:Landroid/telephony/TelephonyManager;

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p3, v0, p5}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;IZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-static {p0, p1, p2, p3, p6}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne p4, v1, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-static {v4, v5, v4, v5, p2}, Lcom/loc/cc;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v4, v3, v2

    invoke-static {p0, p1, v4, p3, p6}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v6}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/cw;->b()J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "v"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/loc/co;->a(Landroid/content/Context;)Lcom/loc/co;

    move-result-object v5

    const-string v7, "https://offline.aps.amap.com/LoadOfflineData/getData"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, p0, v7, v0, v8}, Lcom/loc/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_6

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1b

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1c

    :cond_5
    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_18

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v8, "code"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    const/16 v5, 0x104

    if-ne v0, v5, :cond_16

    const/4 v0, 0x1

    aget-object v0, v6, v0

    sput-object v0, Lcom/loc/cc;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    :try_start_5
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_30
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v3, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_8
    :goto_4
    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/loc/e;->n:Z

    if-eqz v0, :cond_23

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    const/16 v0, 0x800

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-array v7, v0, [B

    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2d
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_28
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_20
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_6
    :try_start_7
    const-string v5, "Off"

    const-string v6, "c 2 part2"

    invoke-static {v1, v5, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_10

    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_11

    :cond_b
    :goto_8
    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_12

    :cond_c
    :goto_9
    sget-object v1, Lcom/loc/cc;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    sput-object v1, Lcom/loc/cc;->c:Ljava/lang/String;

    :cond_d
    move v1, v0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_28
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v0, 0x1

    :try_start_c
    sget-object v1, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    const-string v1, "yyyyMMdd"

    invoke-static {v8, v9, v1}, Lcom/loc/cw;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/loc/cc;->a:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v1, Lcom/loc/cc;->a:[I

    const/4 v3, 0x1

    sget-object v7, Lcom/loc/cc;->a:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v3
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_29
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_21
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_a
    move-object v1, v4

    move-object v3, v5

    move v4, v0

    :goto_b
    if-eqz p4, :cond_10

    const/4 v0, 0x1

    :try_start_d
    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/loc/cc;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_31
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_2e
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2a
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_22
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_10
    move v0, v4

    :goto_c
    if-eqz v1, :cond_11

    :try_start_e
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1d

    :cond_11
    :goto_d
    if-eqz v3, :cond_12

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1e

    :cond_12
    :goto_e
    if-eqz v2, :cond_c

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    :goto_f
    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    :try_start_11
    sget-object v3, Lcom/loc/cc;->a:[I

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v3, v7
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_29
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_25
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_10
    :try_start_12
    sget-object v1, Lcom/loc/cc;->a:[I

    const/4 v3, 0x1

    const/4 v7, 0x1

    aput v7, v1, v3

    goto :goto_a

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_4
    move-exception v1

    sget-object v3, Lcom/loc/cc;->a:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v3, v7

    sget-object v3, Lcom/loc/cc;->a:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v3, v7

    const-string v3, "Off"

    const-string v7, "c 2 part1"

    invoke-static {v1, v3, v7}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_29
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_21
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_10

    :catch_5
    move-exception v1

    :goto_11
    :try_start_13
    const-string v3, "Off"

    const-string v6, "c 2 part3"

    invoke-static {v1, v3, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v4, :cond_14

    :try_start_14
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_13

    :cond_14
    :goto_12
    if-eqz v5, :cond_15

    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_14

    :cond_15
    :goto_13
    if-eqz v2, :cond_c

    :try_start_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    goto :goto_f

    :cond_16
    :try_start_17
    sget-boolean v0, Lcom/loc/e;->n:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {}, Lcom/loc/cw;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Ljava/net/SocketException; {:try_start_17 .. :try_end_17} :catch_2b
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_17
    move-object v10, v3

    move-object v3, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_b

    :cond_18
    const/16 v5, 0x194

    if-ne v0, v5, :cond_19

    :cond_19
    move v0, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_14
    :try_start_18
    const-string v3, "Off"

    const-string v6, "c 2 part4"

    invoke-static {v1, v3, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v4, :cond_1a

    :try_start_19
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_15

    :cond_1a
    :goto_15
    if-eqz v5, :cond_1b

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_16

    :cond_1b
    :goto_16
    if-eqz v2, :cond_c

    :try_start_1b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8

    goto/16 :goto_9

    :catch_8
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    goto/16 :goto_f

    :catch_9
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_17
    :try_start_1c
    const-string v3, "Off"

    const-string v6, "c 2 part5"

    invoke-static {v1, v3, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v4, :cond_1c

    :try_start_1d
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_17

    :cond_1c
    :goto_18
    if-eqz v5, :cond_1d

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_18

    :cond_1d
    :goto_19
    if-eqz v2, :cond_c

    :try_start_1f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_a

    goto/16 :goto_9

    :catch_a
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    goto/16 :goto_f

    :catch_b
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_1a
    :try_start_20
    const-string v3, "Off"

    const-string v6, "c 2 part6"

    invoke-static {v1, v3, v6}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    if-eqz v4, :cond_1e

    :try_start_21
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_19

    :cond_1e
    :goto_1b
    if-eqz v5, :cond_1f

    :try_start_22
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_1a

    :cond_1f
    :goto_1c
    if-eqz v2, :cond_c

    :try_start_23
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_c

    goto/16 :goto_9

    :catch_c
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    :goto_1d
    if-eqz v4, :cond_20

    :try_start_24
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_d

    :cond_20
    :goto_1e
    if-eqz v5, :cond_21

    :try_start_25
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_e

    :cond_21
    :goto_1f
    if-eqz v2, :cond_22

    :try_start_26
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_f

    :cond_22
    :goto_20
    throw v0

    :catch_d
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part7"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_e
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :catch_f
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_10
    move-exception v1

    const-string v3, "Off"

    const-string v5, "c 2 part7"

    invoke-static {v1, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_11
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_12
    move-exception v1

    const-string v2, "Off"

    const-string v3, "c 2 part9"

    goto/16 :goto_f

    :catch_13
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part7"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catch_14
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_15
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part7"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :catch_16
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :catch_17
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part7"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :catch_18
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :catch_19
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part7"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :catch_1a
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :catch_1b
    move-exception v0

    const-string v3, "Off"

    const-string v5, "c 2 part7"

    invoke-static {v0, v3, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1c
    move-exception v0

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v0, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1d
    move-exception v1

    const-string v4, "Off"

    const-string v5, "c 2 part7"

    invoke-static {v1, v4, v5}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_1e
    move-exception v1

    const-string v3, "Off"

    const-string v4, "c 2 part8"

    invoke-static {v1, v3, v4}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_1d

    :catchall_2
    move-exception v0

    goto/16 :goto_1d

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v5, v3

    goto/16 :goto_1d

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_1d

    :catch_1f
    move-exception v0

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_1a

    :catch_20
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_1a

    :catch_21
    move-exception v1

    goto/16 :goto_1a

    :catch_22
    move-exception v0

    move-object v5, v3

    move-object v10, v1

    move-object v1, v0

    move v0, v4

    move-object v4, v10

    goto/16 :goto_1a

    :catch_23
    move-exception v0

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_17

    :catch_24
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_17

    :catch_25
    move-exception v1

    goto/16 :goto_17

    :catch_26
    move-exception v0

    move-object v5, v3

    move-object v10, v1

    move-object v1, v0

    move v0, v4

    move-object v4, v10

    goto/16 :goto_17

    :catch_27
    move-exception v0

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_14

    :catch_28
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_14

    :catch_29
    move-exception v1

    goto/16 :goto_14

    :catch_2a
    move-exception v0

    move-object v5, v3

    move-object v10, v1

    move-object v1, v0

    move v0, v4

    move-object v4, v10

    goto/16 :goto_14

    :catch_2b
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_11

    :catch_2c
    move-exception v0

    move-object v4, v3

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_11

    :catch_2d
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_11

    :catch_2e
    move-exception v0

    move-object v5, v3

    move-object v10, v1

    move-object v1, v0

    move v0, v4

    move-object v4, v10

    goto/16 :goto_11

    :catch_2f
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_6

    :catch_30
    move-exception v0

    move-object v4, v5

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_6

    :catch_31
    move-exception v0

    move-object v10, v0

    move v0, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_6

    :cond_23
    move v0, v1

    goto/16 :goto_a

    :cond_24
    move v0, v5

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    const/16 v1, 0x19

    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_5

    invoke-static {p0, p1, p2}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    sget-object v1, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    if-eq p3, v2, :cond_6

    if-ne p3, v5, :cond_0

    :cond_6
    invoke-static {v6, v7, v6, v7, p1}, Lcom/loc/cc;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-ne p3, v2, :cond_a

    const/16 v3, 0x9

    :goto_1
    if-ne p2, v2, :cond_b

    :goto_2
    sget-object v1, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    sget-object v5, Lcom/loc/cc;->d:Ljava/util/Hashtable;

    :goto_3
    if-ge v0, v3, :cond_c

    aget-object v6, v4, v0

    invoke-static {p0, v6, p2}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-ne p3, v5, :cond_d

    move v3, v1

    goto :goto_1

    :cond_b
    if-ne p2, v5, :cond_0

    move v0, v1

    goto :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v3, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/loc/cc;->c()Ljava/lang/StringBuilder;

    move-result-object v5

    packed-switch p2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/loc/cc;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/loc/cc;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v7, v6, 0x4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    aget-object v6, p3, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v6, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_4
    :goto_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v6, "v"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "geohash"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "t"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imsi"

    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "src"

    sget-object v2, Lcom/loc/e;->e:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "license"

    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    move v0, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "wifi"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v6, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :catch_0
    move-exception v5

    move-object v6, v7

    :goto_6
    :try_start_4
    const-string v7, "Off"

    const-string v8, "getRequestParams part1"

    invoke-static {v5, v7, v8}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v5

    const-string v6, "Off"

    const-string v7, "getRequestParams part3"

    :goto_7
    invoke-static {v5, v6, v7}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v5

    :goto_8
    :try_start_6
    const-string v6, "Off"

    const-string v8, "getRequestParams part2"

    invoke-static {v5, v6, v8}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v5

    const-string v6, "Off"

    const-string v7, "getRequestParams part3"

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v7, :cond_7

    :try_start_8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_a
    throw v0

    :catch_4
    move-exception v0

    const-string v2, "Off"

    const-string v3, "getRequestParams part4"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_5
    move-exception v1

    const-string v2, "Off"

    const-string v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_6
    move-exception v5

    const-string v6, "Off"

    const-string v7, "getRequestParams part3"

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v6

    goto :goto_9

    :catch_7
    move-exception v5

    move-object v7, v6

    goto :goto_8

    :catch_8
    move-exception v5

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ILcom/loc/ch;Ljava/lang/String;I)[D
    .locals 12

    const/4 v4, 0x2

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const/4 v8, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const-string v1, "\\|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [I

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    if-ne v0, v4, :cond_2

    const-string v6, "gsm"

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/loc/ch;->g()J

    move-result-wide v0

    int-to-long v4, p0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/loc/ch;->a(J)V

    invoke-virtual {p1}, Lcom/loc/ch;->g()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v5, v0, -0x10

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p0

    invoke-static/range {v0 .. v7}, Lcom/loc/cc;->a(ILcom/loc/ch;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/loc/ch;->a(J)V

    const/4 v0, 0x3

    new-array v0, v0, [D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/loc/ch;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cc;->a(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v10

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/loc/ch;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cc;->a(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v10

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/loc/ch;->d()I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/cw;->a(D)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v8

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const-string v6, "cdma"

    goto :goto_1

    :cond_3
    const-string v6, "wifi"

    move-object v3, v8

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :try_start_2
    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/cw;->b(D)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v8

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_3
    const-string v2, "Off"

    const-string v3, "binS"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v0, v8

    goto :goto_2
.end method

.method public static a(DDLjava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/16 v5, 0x32

    const/16 v4, 0x19

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p4

    :goto_0
    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object p4, v1, v4

    invoke-static {v0}, Lcom/loc/cb;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/loc/cb;->a(DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/loc/cb;->a(DD)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lcom/loc/cb;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x1a

    :goto_2
    if-ge v0, v5, :cond_2

    add-int/lit8 v3, v0, -0x1a

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x8

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_3

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Off"

    const-string v2, "loadFcFea part3"

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_3
    const-string v2, "Off"

    const-string v3, "loadFcFea part1"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Off"

    const-string v2, "loadFcFea part3"

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string v2, "Off"

    const-string v3, "loadFcFea part2"

    invoke-static {v0, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "Off"

    const-string v2, "loadFcFea part3"

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "Off"

    const-string v3, "loadFcFea part3"

    invoke-static {v1, v2, v3}, Lcom/loc/e;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/loc/cc;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/cw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/cw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
