.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "JsonFormat.java"

.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue",
        "<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

.field private static final serialVersionUID:J = 0x1L


.field private final _features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

.field private final _locale:Ljava/util/Locale;

.field private final _pattern:Ljava/lang/String;

.field private final _shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field private transient _timezone:Ljava/util/TimeZone;

.field private final _timezoneStr:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 410
    const-string v1, ""

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .prologue
    .line 414
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 471
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    const/4 v5, 0x0

    .line 423
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "##default"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "##default"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v4, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 429
    return-void

    .line 423
    :cond_2
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v4, p4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 479
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 450
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .end local p2    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 451
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 452
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 453
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 454
    if-nez p6, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object p6

    .end local p6    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    iput-object p6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    .line 463
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 437
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .end local p2    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 438
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 439
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 441
    if-nez p5, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object p5

    .end local p5    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :cond_1
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 442
    return-void
.end method

.method private static _equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "value1":Ljava/lang/Object;, "TT;"
    .local p1, "value2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 752
    if-nez p0, :cond_1

    .line 753
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 754
    :cond_1
    if-eqz p1, :cond_0

    .line 757
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object v0
.end method

.method public static forPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p0, "p"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 575
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public static forShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p0, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .prologue
    const/4 v1, 0x0

    .line 582
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public static final from(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .param p0, "ann"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V

    goto :goto_0
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .prologue
    .line 501
    if-nez p0, :cond_0

    .end local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object p1

    .restart local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .prologue
    .line 510
    const/4 v4, 0x0

    .line 511
    .local v4, "result":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    move-object v0, p0

    .local v0, "arr$":[Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 512
    .local v1, "curr":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_0

    .line 513
    if-nez v4, :cond_1

    move-object v4, v1

    .line 511
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    goto :goto_1

    .line 516
    .end local v1    # "curr":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_2
    return-object v4
.end method


.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 744
    :cond_0
    :goto_0
    return v2

    .line 736
    :cond_1
    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 738
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 740
    .local v0, "other":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 656
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_1

    .line 657
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 658
    const/4 v1, 0x0

    .line 663
    :goto_0
    return-object v1

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 661
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    :cond_1
    move-object v1, v0

    .line 663
    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPattern()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShape()Z
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 721
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 722
    .local v0, "hash":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    return v0

    .line 721
    .end local v0    # "hash":I
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public timeZoneAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 715
    const-string v0, "[pattern=%s,shape=%s,locale=%s,timezone=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fasterxml/jackson/annotation/JsonFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    return-object v0
.end method

.method public withFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    .line 618
    .local v6, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v6, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 603
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public final withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    if-ne p1, v0, :cond_2

    :cond_0
    move-object p1, p0

    .line 568
    .end local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_1
    :goto_0
    return-object p1

    .line 536
    .restart local p1    # "overrides":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    if-eq p0, v0, :cond_1

    .line 539
    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 540
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 543
    :cond_4
    iget-object v2, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 544
    .local v2, "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, v0, :cond_5

    .line 545
    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 547
    :cond_5
    iget-object v3, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 548
    .local v3, "l":Ljava/util/Locale;
    if-nez v3, :cond_6

    .line 549
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 551
    :cond_6
    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 552
    .local v6, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    if-nez v6, :cond_8

    .line 553
    iget-object v6, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 559
    :goto_1
    iget-object v4, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 562
    .local v4, "tzStr":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 564
    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 568
    .local v5, "tz":Ljava/util/TimeZone;
    :goto_2
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    move-object p1, v0

    goto :goto_0

    .line 555
    .end local v4    # "tzStr":Ljava/lang/String;
    .end local v5    # "tz":Ljava/util/TimeZone;
    :cond_8
    iget-object v0, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    goto :goto_1

    .line 566
    .restart local v4    # "tzStr":Ljava/lang/String;
    :cond_9
    iget-object v5, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .restart local v5    # "tz":Ljava/util/TimeZone;
    goto :goto_2
.end method

.method public withPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "s"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .prologue
    .line 596
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 610
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    return-object v0
.end method

.method public withoutFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 7
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    .line 627
    .local v6, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v6, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V

    move-object p0, v0

    goto :goto_0
.end method
