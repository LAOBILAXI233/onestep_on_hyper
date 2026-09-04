.class public Lcom/smartisan/weather/lib/bean/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

.implements Ljava/io/Serializable;


.field public static final NOTHING_PUBLISHED:Ljava/lang/String; = "nothing_publish"

.field private static final serialVersionUID:J = 0x1L


.field public AQI:I

.field public compC:I

.field public compF:I

.field public fahrenheitTemp:Ljava/lang/String;

.field public forecasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field public hasData:Z

.field public lastUpdate:J

.field public locationKey:Ljava/lang/String;

.field public otherData:Ljava/lang/Object;

.field public pubdate:Ljava/lang/String;

.field public realFeelFahrenheitTemp:Ljava/lang/String;

.field public realFeelTemp:Ljava/lang/String;

.field public relativeHumidity:Ljava/lang/String;

.field public temp:Ljava/lang/String;

.field public weatherCode:Ljava/lang/String;

.field public windDirection:Ljava/lang/String;

.field public windSpeed:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/weather/lib/bean/Weather;->hasData:Z

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/weather/lib/bean/Weather;->lastUpdate:J

    .line 38
    const-string v0, "nothing_publish"

    iput-object v0, p0, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getWeatherDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weather_text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "resWeatherCode":I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWindLevelFromSpeed(F)I
    .locals 7
    .param p1, "speed"    # F

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v5, 0x40b00000    # 5.5f

    const v4, 0x4059999a    # 3.4f

    const v3, 0x3fcccccd    # 1.6f

    const v2, 0x3e99999a    # 0.3f

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "result":I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 92
    const/4 v0, 0x0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_3

    cmpg-float v1, p1, v4

    if-gez v1, :cond_3

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_3
    cmpl-float v1, p1, v4

    if-ltz v1, :cond_4

    cmpg-float v1, p1, v5

    if-gez v1, :cond_4

    .line 98
    const/4 v0, 0x3

    goto :goto_0

    .line 99
    :cond_4
    cmpl-float v1, p1, v5

    if-ltz v1, :cond_5

    cmpg-float v1, p1, v6

    if-gez v1, :cond_5

    .line 100
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :cond_5
    cmpl-float v1, p1, v6

    if-ltz v1, :cond_6

    const v1, 0x412ccccd    # 10.8f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 102
    const/4 v0, 0x5

    goto :goto_0

    .line 103
    :cond_6
    const v1, 0x412ccccd    # 10.8f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_7

    const v1, 0x415e6666    # 13.9f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    .line 104
    const/4 v0, 0x6

    goto :goto_0

    .line 105
    :cond_7
    const v1, 0x415e6666    # 13.9f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_8

    const v1, 0x4189999a    # 17.2f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    .line 106
    const/4 v0, 0x7

    goto :goto_0

    .line 107
    :cond_8
    const v1, 0x4189999a    # 17.2f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_9

    const v1, 0x41a66666    # 20.8f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    .line 108
    const/16 v0, 0x8

    goto :goto_0

    .line 109
    :cond_9
    const v1, 0x41a66666    # 20.8f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_a

    const/high16 v1, 0x41c40000    # 24.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    .line 110
    const/16 v0, 0x9

    goto :goto_0

    .line 111
    :cond_a
    const/high16 v1, 0x41c40000    # 24.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_b

    const/high16 v1, 0x41e40000    # 28.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_b

    .line 112
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 113
    :cond_b
    const/high16 v1, 0x41e40000    # 28.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_c

    const v1, 0x4202cccd    # 32.7f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    .line 114
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 115
    :cond_c
    const v1, 0x4202cccd    # 32.7f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_d

    const/high16 v1, 0x42140000    # 37.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_d

    .line 116
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 117
    :cond_d
    const/high16 v1, 0x42140000    # 37.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_e

    const/high16 v1, 0x42260000    # 41.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_e

    .line 118
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 119
    :cond_e
    const/high16 v1, 0x42260000    # 41.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_f

    const v1, 0x4238cccd    # 46.2f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_f

    .line 120
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 121
    :cond_f
    const v1, 0x4238cccd    # 46.2f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_10

    const/high16 v1, 0x424c0000    # 51.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_10

    .line 122
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 123
    :cond_10
    const/high16 v1, 0x424c0000    # 51.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_11

    const v1, 0x42606666    # 56.1f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_11

    .line 124
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 125
    :cond_11
    const v1, 0x42606666    # 56.1f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 126
    const/16 v0, 0x11

    goto/16 :goto_0
.end method


.method public getWeatherDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weather_text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "resWeatherCode":I
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isChinaSource()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisan/weather/lib/Utility;->isChinaWeather(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 132
    const-string v0, "nothing_publish"

    iget-object v1, p0, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "windSpeed"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 77
    return-void
.end method
