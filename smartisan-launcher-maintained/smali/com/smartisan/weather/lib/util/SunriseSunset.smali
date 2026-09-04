.class public Lcom/smartisan/weather/lib/util/SunriseSunset;
.super Ljava/lang/Object;
.source "SunriseSunset.java"


.field private static final TAG:Ljava/lang/String; = "SunriseSunset"


.field private bDaytime:Z

.field private bGregorian:Z

.field private bSunDownAllDay:Z

.field private bSunUpAllDay:Z

.field private bSunrise:Z

.field private bSunriseToday:Z

.field private bSunset:Z

.field private bSunsetToday:Z

.field private dateInput:Ljava/util/Date;

.field private dateSunrise:Ljava/util/Date;

.field private dateSunset:Ljava/util/Date;

.field private dfA:D

.field private dfA0:D

.field private dfA2:D

.field private dfA5:D

.field private dfAA1:D

.field private dfAA2:D

.field private dfC0:D

.field private dfCosLat:D

.field private dfD0:D

.field private dfD1:D

.field private dfD2:D

.field private dfD5:D

.field private dfDA:D

.field private dfDD:D

.field private dfDD1:D

.field private dfDD2:D

.field private dfH0:D

.field private dfH1:D

.field private dfH2:D

.field public dfHourRise:D

.field public dfHourSet:D

.field private dfJ:D

.field private dfJ3:D

.field private dfK1:D

.field private dfL0:D

.field private dfL2:D

.field private dfLat:D

.field private dfLon:D

.field public dfMinRise:D

.field public dfMinSet:D

.field private dfP:D

.field private dfSinLat:D

.field private dfT:D

.field private dfT0:D

.field private dfTT:D

.field private dfTimeZone:D

.field private dfV0:D

.field private dfV1:D

.field private dfV2:D

.field private dfZenith:D

.field private dfmtDate:Ljava/text/SimpleDateFormat;

.field private dfmtDateTime:Ljava/text/SimpleDateFormat;

.field private dfmtDay:Ljava/text/SimpleDateFormat;

.field private dfmtMonth:Ljava/text/SimpleDateFormat;

.field private dfmtYear:Ljava/text/SimpleDateFormat;

.field private iCount:I

.field private iDay:I

.field private iJulian:I

.field private iMonth:I

.field private iSign:I

.field private iYear:I

.field private tz:Ljava/util/TimeZone;


.method public constructor <init>(DDLjava/util/Date;D)V
    .locals 5
    .param p1, "dfLatIn"    # D
    .param p3, "dfLonIn"    # D
    .param p5, "dateInputIn"    # Ljava/util/Date;
    .param p6, "dfTimeZoneIn"    # D

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    .line 198
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    .line 199
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunUpAllDay:Z

    .line 200
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunDownAllDay:Z

    .line 201
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    .line 203
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunrise:Z

    .line 204
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunset:Z

    .line 205
    iput-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bGregorian:Z

    .line 223
    iput-wide v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    iput-wide v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    .line 224
    iput-wide v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD1:D

    iput-wide v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD2:D

    .line 239
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->tz:Ljava/util/TimeZone;

    .line 250
    iput-wide p1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLat:D

    .line 251
    iput-wide p3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLon:D

    .line 252
    iput-object p5, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    .line 253
    iput-wide p6, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    .line 255
    invoke-direct {p0}, Lcom/smartisan/weather/lib/util/SunriseSunset;->doCalculations()V

    .line 256
    return-void
.end method

.method private doCalculations()V
    .locals 34

    .prologue
    .line 262
    :try_start_0
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v26, "yyyy"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 265
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v26, "M"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 268
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v26, "d"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->tz:Ljava/util/TimeZone;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iYear:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iMonth:I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iDay:I

    .line 277
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLon:D

    move-wide/from16 v26, v0

    const-wide v28, 0x4076800000000000L    # 360.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLon:D

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iYear:I

    move/from16 v17, v0

    const/16 v26, 0x62f

    move/from16 v0, v17

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 292
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bGregorian:Z

    .line 294
    :cond_0
    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iMonth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4022000000000000L    # 9.0

    add-double v28, v28, v30

    const-wide/high16 v30, 0x4028000000000000L    # 12.0

    div-double v28, v28, v30

    .line 295
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iYear:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v28, v28, v30

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    div-double v26, v26, v28

    .line 294
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iMonth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x4071300000000000L    # 275.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4022000000000000L    # 9.0

    div-double v28, v28, v30

    .line 302
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    const-wide v28, 0x413a42c300000000L    # 1721027.0

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iYear:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x4076f00000000000L    # 367.0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ:D

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bGregorian:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iMonth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4022000000000000L    # 9.0

    sub-double v26, v26, v28

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_3

    .line 310
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iSign:I

    .line 313
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iMonth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4022000000000000L    # 9.0

    sub-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA:D

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iYear:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iSign:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    div-double v30, v30, v32

    .line 320
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    .line 318
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    .line 317
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v28

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    mul-double v26, v26, v28

    .line 315
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ3:D

    .line 327
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ3:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ:D

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfJ:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iJulian:I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iJulian:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x4142b42c80000000L    # 2451545.0

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    .line 334
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40e1d5a000000000L    # 36525.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTT:D

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v26, v0

    const-wide v28, 0x41607ad71a041893L    # 8640184.813

    mul-double v26, v26, v28

    const-wide v28, 0x40e1d5a000000000L    # 36525.0

    div-double v26, v26, v28

    const-wide v28, 0x40d78ba000000000L    # 24110.5

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40f526c99999999aL    # 86636.6

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLon:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40f5180000000000L    # 86400.0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    const-wide v28, 0x40f5180000000000L    # 86400.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    .line 344
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    .line 345
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    .line 347
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    .line 349
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    const/16 v26, 0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-gt v0, v1, :cond_5

    .line 364
    const-wide v26, 0x3fe8ee2867275686L    # 0.779072

    const-wide v28, 0x3f666dcfde44846cL    # 0.00273790931

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v6, v26, v28

    .line 365
    .local v6, "dfLL":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    sub-double v6, v6, v26

    .line 366
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v6

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v26, v28

    .line 368
    const-wide v26, 0x3fefc7b02d59d55eL    # 0.993126

    const-wide v28, 0x3f666d89a3e0cde9L    # 0.0027377785

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v4, v26, v28

    .line 369
    .local v4, "dfGG":D
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    sub-double v4, v4, v26

    .line 370
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v4

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v26, v28

    .line 372
    const-wide v26, 0x3fd9765fd8adab9fL    # 0.39785

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    const-wide v28, 0x3f847ae147ae147bL    # 0.01

    sub-double v30, v6, v4

    .line 373
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3f6b4784230fcf81L    # 0.00333

    add-double v30, v6, v4

    .line 374
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    const-wide v28, 0x3f2b866e43aa79bcL    # 2.1E-4

    .line 375
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTT:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v12, v26, v28

    .line 377
    .local v12, "dfVV":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    const-wide v28, 0x3fa12599ed7c6fbdL    # 0.03349

    .line 378
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3f22599ed7c6fbd2L    # 1.4E-4

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v6

    .line 379
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3f14f8b588e368f1L    # 8.0E-5

    .line 380
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v10, v26, v28

    .line 382
    .local v10, "dfUU":D
    const-wide v26, -0x40e5c91d14e3bcd3L    # -1.0E-4

    const-wide v28, 0x3fa523f67f4dbdf9L    # 0.04129

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v6

    .line 383
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3fa070b8cfbfc654L    # 0.03211

    .line 384
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    const-wide v28, 0x3f510a137f38c543L    # 0.00104

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v6

    sub-double v30, v30, v4

    .line 385
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3f36f0068db8bac7L    # 3.5E-4

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v6

    add-double v30, v30, v4

    .line 386
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide v28, 0x3f14f8b588e368f1L    # 8.0E-5

    .line 387
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTT:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v14, v26, v28

    .line 390
    .local v14, "dfWW":D
    mul-double v26, v12, v12

    sub-double v26, v10, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v8, v14, v26

    .line 391
    .local v8, "dfSS":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v28, v8, v8

    sub-double v26, v26, v28

    .line 392
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v26, v8, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    move-result-wide v26

    add-double v26, v26, v6

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA5:D

    .line 394
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v8, v12, v26

    .line 395
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v28, v8, v8

    sub-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v26, v8, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->atan(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD5:D

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 400
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA5:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    .line 401
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD5:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD1:D

    .line 407
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT:D

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 590
    .end local v4    # "dfGG":D
    .end local v6    # "dfLL":D
    .end local v8    # "dfSS":D
    .end local v10    # "dfUU":D
    .end local v12    # "dfVV":D
    .end local v14    # "dfWW":D
    :catch_0
    move-exception v16

    .line 591
    .local v16, "e":Ljava/text/ParseException;
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v26, "\nCannot parse date"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 593
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 595
    .end local v16    # "e":Ljava/text/ParseException;
    :cond_2
    :goto_3
    return-void

    .line 312
    :cond_3
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iSign:I

    goto/16 :goto_0

    .line 404
    .restart local v4    # "dfGG":D
    .restart local v6    # "dfLL":D
    .restart local v8    # "dfSS":D
    .restart local v10    # "dfUU":D
    .restart local v12    # "dfVV":D
    .restart local v14    # "dfWW":D
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA5:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    .line 405
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD5:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD2:D

    goto :goto_2

    .line 410
    .end local v4    # "dfGG":D
    .end local v6    # "dfLL":D
    .end local v8    # "dfSS":D
    .end local v10    # "dfUU":D
    .end local v12    # "dfVV":D
    .end local v14    # "dfWW":D
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    move-wide/from16 v28, v0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_6

    .line 411
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    move-wide/from16 v26, v0

    const-wide v28, 0x401921fb54442d18L    # 6.283185307179586

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    .line 414
    :cond_6
    const-wide v26, 0x3ff95d882604e01bL    # 1.5853349194640092

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfZenith:D

    .line 415
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLat:D

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfSinLat:D

    .line 416
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfLat:D

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfCosLat:D

    .line 418
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA0:D

    .line 419
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD1:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    .line 420
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDA:D

    .line 421
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD1:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD:D

    .line 423
    const-wide v26, 0x3fd0cd109d6d157aL    # 0.26251616834300473

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfK1:D

    .line 427
    const-wide v26, 0x4058c00000000000L    # 99.0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    .line 428
    const-wide v26, 0x4058c00000000000L    # 99.0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinRise:D

    .line 429
    const-wide v26, 0x4058c00000000000L    # 99.0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    .line 430
    const-wide v26, 0x4058c00000000000L    # 99.0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinSet:D

    .line 431
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    .line 432
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    .line 436
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    const/16 v26, 0x18

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    .line 444
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfP:D

    .line 445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfAA1:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfP:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDA:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA2:D

    .line 446
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD1:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfP:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfDD:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    .line 447
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfT0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfK1:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfL0:D

    .line 448
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfL0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfK1:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfL2:D

    .line 449
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfL0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA0:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH0:D

    .line 450
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfL2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA2:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH2:D

    .line 452
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH0:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH1:D

    .line 454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD1:D

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 460
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfSinLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfCosLat:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    move-wide/from16 v30, v0

    .line 461
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH0:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfZenith:D

    move-wide/from16 v28, v0

    .line 462
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    .line 466
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfSinLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfCosLat:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v30, v0

    .line 467
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH2:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfZenith:D

    move-wide/from16 v28, v0

    .line 468
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    .line 471
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpl-double v17, v26, v28

    if-ltz v17, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpl-double v17, v26, v28

    if-gez v17, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_a

    .line 476
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA0:D

    .line 477
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    .line 436
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->iCount:I

    goto/16 :goto_4

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    goto/16 :goto_5

    .line 481
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfSinLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD1:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfCosLat:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD1:D

    move-wide/from16 v30, v0

    .line 482
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfH1:D

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfZenith:D

    move-wide/from16 v28, v0

    .line 483
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV1:D

    .line 485
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV1:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    add-double v18, v26, v28

    .line 487
    .local v18, "tempA":D
    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV1:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v28, v0

    sub-double v20, v26, v28

    .line 488
    .local v20, "tempB":D
    mul-double v26, v20, v20

    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    mul-double v28, v28, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    sub-double v22, v26, v28

    .line 490
    .local v22, "tempD":D
    const-wide/16 v26, 0x0

    cmpg-double v17, v22, v26

    if-gez v17, :cond_b

    .line 492
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA0:D

    .line 493
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    goto/16 :goto_6

    .line 497
    :cond_b
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 507
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunrise:Z

    .line 508
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunset:Z

    .line 510
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpl-double v17, v26, v28

    if-lez v17, :cond_c

    .line 512
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunrise:Z

    .line 513
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    .line 516
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV0:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpl-double v17, v26, v28

    if-lez v17, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_d

    .line 518
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunset:Z

    .line 519
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    .line 522
    :cond_d
    sub-double v26, v22, v20

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v18

    div-double v24, v26, v28

    .line 523
    .local v24, "tempE":D
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v24, v26

    if-gtz v17, :cond_e

    const-wide/16 v26, 0x0

    cmpg-double v17, v24, v26

    if-gez v17, :cond_f

    .line 524
    :cond_e
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v20

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v18

    div-double v24, v26, v28

    .line 529
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunrise:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 530
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    const-wide v28, 0x3f81111111111111L    # 0.008333333333333333

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    .line 531
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    const-wide v28, 0x3f81111111111111L    # 0.008333333333333333

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x404e000000000000L    # 60.0

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinRise:D

    .line 539
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 540
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    const-wide v28, 0x3f81111111111111L    # 0.008333333333333333

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    .line 541
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfC0:D

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    const-wide v28, 0x3f81111111111111L    # 0.008333333333333333

    add-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x404e000000000000L    # 60.0

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinSet:D

    .line 550
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfA0:D

    .line 551
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD2:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfD0:D

    goto/16 :goto_6

    .line 555
    .end local v18    # "tempA":D
    .end local v20    # "tempB":D
    .end local v22    # "tempD":D
    .end local v24    # "tempE":D
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4038000000000000L    # 24.0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    .line 556
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfTimeZone:D

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4038000000000000L    # 24.0

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    .line 564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 565
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfV2:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_17

    .line 566
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunDownAllDay:Z

    .line 571
    :cond_13
    :goto_7
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v26, "HH:mm"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    .line 572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinRise:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 574
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_14

    .line 575
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    .line 576
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    cmpl-double v17, v26, v28

    if-lez v17, :cond_15

    .line 577
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    .line 581
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinSet:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 583
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmpg-double v17, v26, v28

    if-gez v17, :cond_16

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    .line 585
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    cmpl-double v17, v26, v28

    if-lez v17, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4038000000000000L    # 24.0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    goto/16 :goto_3

    .line 568
    :cond_17
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunUpAllDay:Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method


.method public getSunrise()Ljava/util/Date;
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSunriseHour()I
    .locals 2

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourRise:D

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getSunriseMin()I
    .locals 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinRise:D

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getSunset()Ljava/util/Date;
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSunsetHour()I
    .locals 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfHourSet:D

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getSunsetMin()I
    .locals 2

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dfMinSet:D

    double-to-int v0, v0

    goto :goto_0
.end method

.method public isDaytime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 676
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_5

    .line 678
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 681
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 683
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 686
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iput-boolean v3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    .line 721
    :goto_0
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    return v0

    .line 689
    :cond_1
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 693
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    .line 695
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    .line 698
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 699
    :cond_3
    iput-boolean v3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 701
    :cond_4
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 703
    :cond_5
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunUpAllDay:Z

    if-eqz v0, :cond_6

    .line 704
    iput-boolean v3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 705
    :cond_6
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunDownAllDay:Z

    if-eqz v0, :cond_7

    .line 706
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 707
    :cond_7
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 710
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 712
    :cond_8
    iput-boolean v3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 713
    :cond_9
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    if-eqz v0, :cond_b

    .line 715
    iget-object v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 716
    iput-boolean v3, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 718
    :cond_a
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0

    .line 720
    :cond_b
    iput-boolean v2, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bDaytime:Z

    goto :goto_0
.end method

.method public isSunDown()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunDownAllDay:Z

    return v0
.end method

.method public isSunUp()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunUpAllDay:Z

    return v0
.end method

.method public isSunrise()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunriseToday:Z

    return v0
.end method

.method public isSunset()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/smartisan/weather/lib/util/SunriseSunset;->bSunsetToday:Z

    return v0
.end method
