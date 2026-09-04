.class public Lcom/fasterxml/jackson/databind/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field public static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field protected static final DATE_FORMAT_STR_ISO8601_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final DATE_FORMAT_STR_PLAIN:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field public static final instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;


.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;

.field protected _lenient:Ljava/lang/Boolean;

.field protected final _locale:Ljava/util/Locale;

.field protected transient _timezone:Ljava/util/TimeZone;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .line 69
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 72
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 91
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    .line 93
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    .line 95
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    .line 97
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 135
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 141
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 142
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "lenient"    # Ljava/lang/Boolean;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 146
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 147
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    .line 148
    return-void
.end method

.method private static final _cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "df"    # Ljava/text/DateFormat;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "loc"    # Ljava/util/Locale;
    .param p4, "lenient"    # Ljava/lang/Boolean;

    .prologue
    .line 566
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    new-instance p0, Ljava/text/SimpleDateFormat;

    .end local p0    # "df":Ljava/text/DateFormat;
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 568
    .restart local p0    # "df":Ljava/text/DateFormat;
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .end local p2    # "tz":Ljava/util/TimeZone;
    :cond_0
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 575
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 576
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 578
    :cond_2
    return-object p0

    .line 570
    .restart local p2    # "tz":Ljava/util/TimeZone;
    :cond_3
    invoke-virtual {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "df":Ljava/text/DateFormat;
    check-cast p0, Ljava/text/DateFormat;

    .line 571
    .restart local p0    # "df":Ljava/text/DateFormat;
    if-eqz p2, :cond_1

    .line 572
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 199
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getRFC1123Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 210
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x2b

    const/4 v2, 0x1

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 552
    .local v1, "len":I
    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 553
    add-int/lit8 v3, v1, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 554
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 560
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v2

    .line 555
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v3, v1, -0x5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 556
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 557
    add-int/lit8 v3, v1, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 558
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 560
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


.method protected _clearFormats()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 583
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 584
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 585
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 586
    return-void
.end method

.method public clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 392
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 397
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 419
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 14
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 279
    new-instance v7, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 283
    .local v7, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 284
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v7, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v2

    .line 306
    .local v2, "dt":Ljava/util/Date;
    :goto_0
    if-eqz v2, :cond_6

    .line 307
    return-object v2

    .line 287
    .end local v2    # "dt":Ljava/util/Date;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 288
    .local v4, "i":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 289
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 290
    .local v1, "ch":C
    const/16 v9, 0x30

    if-lt v1, v9, :cond_2

    const/16 v9, 0x39

    if-le v1, v9, :cond_1

    .line 292
    :cond_2
    if-gtz v4, :cond_3

    const/16 v9, 0x2d

    if-eq v1, v9, :cond_1

    .line 297
    .end local v1    # "ch":C
    :cond_3
    if-gez v4, :cond_5

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_4

    const/4 v9, 0x0

    invoke-static {p1, v9}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .restart local v2    # "dt":Ljava/util/Date;
    goto :goto_0

    .line 303
    .end local v2    # "dt":Ljava/util/Date;
    :cond_5
    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .restart local v2    # "dt":Ljava/util/Date;
    goto :goto_0

    .line 310
    .end local v4    # "i":I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v8, "sb":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v3, v0, v5

    .line 312
    .local v3, "f":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 313
    const-string v9, "\", \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_7
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 319
    .end local v3    # "f":Ljava/lang/String;
    :cond_8
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    new-instance v9, Ljava/text/ParseException;

    const-string v10, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v5, 0x2d

    const/4 v4, 0x0

    .line 328
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 353
    :goto_0
    return-object v3

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    goto :goto_0

    .line 336
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 337
    .local v2, "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 338
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "ch":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_1

    .line 341
    :cond_2
    if-gtz v2, :cond_3

    if-eq v0, v5, :cond_1

    .line 346
    .end local v0    # "ch":C
    :cond_3
    if-gez v2, :cond_5

    .line 348
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_4

    invoke-static {p1, v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 349
    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 353
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 13
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "throwErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 434
    .local v4, "len":I
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 439
    .local v0, "c":C
    const/16 v8, 0xa

    if-gt v4, v8, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 440
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 441
    .local v1, "df":Ljava/text/DateFormat;
    const-string v3, "yyyy-MM-dd"

    .line 442
    .local v3, "formatStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 443
    sget-object v8, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v8, v3, v9, v10, v11}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 528
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 530
    .local v2, "dt":Ljava/util/Date;
    if-nez v2, :cond_a

    .line 531
    new-instance v8, Ljava/text/ParseException;

    const-string v9, "Can not parse date \"%s\": while it seems to fit format \'%s\', parsing fails (leniency? %s)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 446
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v2    # "dt":Ljava/util/Date;
    .end local v3    # "formatStr":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x5a

    if-ne v0, v8, :cond_3

    .line 447
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 448
    .restart local v1    # "df":Ljava/text/DateFormat;
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 449
    .restart local v3    # "formatStr":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 450
    sget-object v8, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v8, v3, v9, v10, v11}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 454
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_2
    add-int/lit8 v8, v4, -0x4

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_0

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .local v6, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v8, v4, -0x1

    const-string v9, ".000"

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    goto :goto_0

    .line 461
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "formatStr":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 462
    add-int/lit8 v8, v4, -0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 463
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_6

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v8, v4, -0x3

    add-int/lit8 v9, v4, -0x2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 475
    const/16 v8, 0x54

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v7, v8, -0x6

    .line 476
    .local v7, "timeLen":I
    const/16 v8, 0xc

    if-ge v7, v8, :cond_5

    .line 477
    add-int/lit8 v5, v4, -0x5

    .line 478
    .local v5, "offset":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    packed-switch v7, :pswitch_data_0

    .line 495
    :goto_2
    :pswitch_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 497
    .end local v5    # "offset":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 498
    .restart local v1    # "df":Ljava/text/DateFormat;
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 499
    .restart local v3    # "formatStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v8, :cond_0

    .line 500
    sget-object v8, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v8, v3, v9, v10, v11}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 468
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "formatStr":Ljava/lang/String;
    .end local v7    # "timeLen":I
    :cond_6
    const/16 v8, 0x2b

    if-eq v0, v8, :cond_7

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_4

    .line 470
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 481
    .restart local v5    # "offset":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "timeLen":I
    :pswitch_1
    const/16 v8, 0x30

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 483
    :pswitch_2
    const-string v8, "00"

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 485
    :pswitch_3
    const-string v8, "000"

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 487
    :pswitch_4
    const-string v8, ".000"

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 491
    :pswitch_5
    const-string v8, "00.000"

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :pswitch_6
    const-string v8, ":00.000"

    invoke-virtual {v6, v5, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 505
    .end local v5    # "offset":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "timeLen":I
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x54

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v7, v8, -0x1

    .line 508
    .restart local v7    # "timeLen":I
    const/16 v8, 0xc

    if-ge v7, v8, :cond_9

    .line 509
    packed-switch v7, :pswitch_data_1

    .line 515
    const-string v8, ".000"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_9
    :goto_3
    const/16 v8, 0x5a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 521
    .restart local v1    # "df":Ljava/text/DateFormat;
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 522
    .restart local v3    # "formatStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 523
    sget-object v8, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v8, v3, v9, v10, v11}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 510
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "formatStr":Ljava/lang/String;
    :pswitch_7
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    :pswitch_8
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    :pswitch_9
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 536
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "timeLen":I
    .restart local v1    # "df":Ljava/text/DateFormat;
    .restart local v2    # "dt":Ljava/util/Date;
    .restart local v3    # "formatStr":Ljava/lang/String;
    :cond_a
    return-object v2

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 509
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setLenient(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 253
    .local v0, "newValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_0

    .line 254
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    .line 258
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    .line 241
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 243
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateFormat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 383
    .local v1, "tz":Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    sget-object p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0
.end method
