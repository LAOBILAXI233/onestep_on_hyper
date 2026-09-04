.class public Lcom/smartisan/weather/lib/util/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatUpdateTime(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 14
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy.MM.dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "format":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "date":Ljava/lang/String;
    const-string v5, "l7"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    const-string v5, "yyyy.MM.dd HH:mm"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 53
    .local v3, "parse":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 54
    .local v8, "timeUpdate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 55
    .local v6, "timeLocal":J
    sub-long v10, v8, v6

    const-wide/32 v12, 0x1499700

    cmp-long v5, v10, v12

    if-lez v5, :cond_0

    .line 56
    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    .line 58
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 62
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "parse":Ljava/util/Date;
    .end local v4    # "time":Ljava/lang/String;
    .end local v6    # "timeLocal":J
    .end local v8    # "timeUpdate":J
    :goto_0
    return-object v5

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const-string v5, ""

    goto :goto_0
.end method

.method public static parseAir(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/AQI;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 267
    :cond_0
    new-instance v0, Lcom/smartisan/weather/lib/bean/AQI;

    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/AQI;-><init>()V

    .line 269
    .local v0, "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "p"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 271
    .local v3, "object":Lorg/json/JSONObject;
    const-string v4, "p1"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/AQI;->pm25:Ljava/lang/String;

    .line 272
    const-string v4, "p2"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/AQI;->AQIValue:Ljava/lang/String;

    .line 273
    const-string v4, "p9"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/AQI;->pubdate:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    .line 276
    const-string v4, "Excepition"

    const-string v5, "parseAir"

    invoke-static {v4, v5, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseAirSmart(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/AQI;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    new-instance v0, Lcom/smartisan/weather/lib/bean/AQI;

    .end local v0    # "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/AQI;-><init>()V

    .line 285
    .restart local v0    # "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 286
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "p1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/AQI;->pm25:Ljava/lang/String;

    .line 287
    const-string v2, "p2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/AQI;->AQIValue:Ljava/lang/String;

    .line 288
    const-string v2, "p9"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/AQI;->pubdate:Ljava/lang/String;

    .line 290
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method public static parseForcastWunder(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const-string v5, "f"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 232
    const-string v5, "f"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 233
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .restart local v2    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local v2    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const/4 v1, 0x0

    .line 237
    .local v1, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 238
    .local v4, "length":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 239
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 240
    if-eqz p0, :cond_2

    .line 241
    new-instance v1, Lcom/smartisan/weather/lib/bean/Forecast;

    .end local v1    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    invoke-direct {v1}, Lcom/smartisan/weather/lib/bean/Forecast;-><init>()V

    .line 242
    .restart local v1    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    const-string v5, "epoch"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;

    .line 243
    const-string v5, "low"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "low"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    const-string v5, "low"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "celsius"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    .line 245
    const-string v5, "low"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "fahrenheit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->lowFahrenheitTemp:Ljava/lang/String;

    .line 248
    :cond_0
    const-string v5, "high"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "high"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 249
    const-string v5, "high"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "celsius"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    .line 250
    const-string v5, "high"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "fahrenheit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->highFahrenheitTemp:Ljava/lang/String;

    .line 253
    :cond_1
    const-string v5, "icon"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    .line 255
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_0

    .line 259
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    :cond_4
    return-object v2
.end method

.method public static parseForecast(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "f"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    .local v3, "object":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/smartisan/weather/lib/util/JsonParser;->parseForecastSmart(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 143
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Excepition"

    const-string v5, "parseForecast"

    invoke-static {v4, v5, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseForecastSmart(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const/4 v10, 0x0

    .line 152
    .local v10, "startIndex":I
    const-string v12, "f"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "f"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 153
    const-string v12, "f"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 154
    .local v7, "json":Lorg/json/JSONObject;
    const-string v12, "f1"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 155
    .local v0, "array":Lorg/json/JSONArray;
    const-string v12, "f0"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "pubDate":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "dd"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "curDate":Ljava/lang/String;
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, "curDay":I
    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "substring":Ljava/lang/String;
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 161
    .local v9, "pubDay":I
    sub-int v12, v2, v9

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 162
    const/4 v10, 0x1

    .line 164
    :cond_0
    if-eqz v0, :cond_2

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v12, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .restart local v5    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const/4 v3, 0x0

    .line 167
    .local v3, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    move v6, v10

    .local v6, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 168
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_1

    .line 170
    new-instance v3, Lcom/smartisan/weather/lib/bean/Forecast;

    .end local v3    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    invoke-direct {v3}, Lcom/smartisan/weather/lib/bean/Forecast;-><init>()V

    .line 171
    .restart local v3    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    iput-object v8, v3, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;

    .line 173
    const-string v12, "fd"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    .line 174
    const-string v12, "fc"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    .line 178
    const-string v12, "fa"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    .line 179
    const-string v12, "fi"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/smartisan/weather/lib/bean/Forecast;->sunRiseAndSet:Ljava/lang/String;

    .line 181
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "curDate":Ljava/lang/String;
    .end local v2    # "curDay":I
    .end local v3    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    .end local v4    # "format":Ljava/text/SimpleDateFormat;
    .end local v6    # "i":I
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "pubDate":Ljava/lang/String;
    .end local v9    # "pubDay":I
    .end local v11    # "substring":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static parseGroundForecast(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 190
    const/4 v3, 0x0

    .line 226
    :cond_0
    :goto_0
    return-object v3

    .line 192
    :cond_1
    const/4 v3, 0x0

    .line 194
    .local v3, "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "forecast"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 196
    .local v8, "object":Lorg/json/JSONObject;
    const-string v9, "simpleforecast"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 197
    const-string v9, "forecastday"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 199
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v3    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    .local v4, "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const/4 v2, 0x0

    .line 202
    .local v2, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-le v9, v7, :cond_3

    .line 203
    .local v7, "length":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 204
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 205
    if-eqz v8, :cond_2

    .line 206
    new-instance v2, Lcom/smartisan/weather/lib/bean/Forecast;

    .end local v2    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    invoke-direct {v2}, Lcom/smartisan/weather/lib/bean/Forecast;-><init>()V

    .line 207
    .restart local v2    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    const-string v9, "date"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "epoch"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;

    .line 209
    const-string v9, "low"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "celsius"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    .line 210
    const-string v9, "low"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "fahrenheit"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->lowFahrenheitTemp:Ljava/lang/String;

    .line 212
    const-string v9, "high"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "celsius"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    .line 213
    const-string v9, "high"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "fahrenheit"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->highFahrenheitTemp:Ljava/lang/String;

    .line 216
    const-string v9, "icon"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    .line 219
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 202
    .end local v5    # "i":I
    .end local v7    # "length":I
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    goto :goto_1

    .line 221
    .restart local v5    # "i":I
    .restart local v7    # "length":I
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v9, v9, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    .restart local v3    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    goto/16 :goto_0

    .line 223
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    .end local v5    # "i":I
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "length":I
    .end local v8    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lorg/json/JSONException;
    :goto_3
    const-string v9, "Excepition"

    const-string v10, "parseGroundForecast"

    invoke-static {v9, v10, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 223
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    .restart local v3    # "frecasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    goto :goto_3
.end method

.method public static parseWeahterSmart(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 296
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, "json":Lorg/json/JSONObject;
    const-string v7, "code"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, "code":I
    if-nez v1, :cond_2

    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 300
    .local v2, "data":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parserWeatherSmart(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v5

    .line 301
    .local v5, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    if-eqz v5, :cond_2

    .line 302
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parseForecastSmart(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    .line 303
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parseAirSmart(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/AQI;

    move-result-object v0

    .line 304
    .local v0, "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    if-eqz v0, :cond_1

    .line 305
    iget-object v7, v0, Lcom/smartisan/weather/lib/bean/AQI;->AQIValue:Ljava/lang/String;

    invoke-static {v7}, Lcom/smartisan/weather/lib/Utility;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v6, v0, Lcom/smartisan/weather/lib/bean/AQI;->AQIValue:Ljava/lang/String;

    .line 306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 305
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_0
    iput v6, v5, Lcom/smartisan/weather/lib/bean/Weather;->AQI:I

    .line 317
    .end local v0    # "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    .end local v1    # "code":I
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :goto_0
    return-object v5

    .line 308
    .restart local v0    # "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    .restart local v1    # "code":I
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_1
    const/4 v6, -0x1

    iput v6, v5, Lcom/smartisan/weather/lib/bean/Weather;->AQI:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v0    # "aqi":Lcom/smartisan/weather/lib/bean/AQI;
    .end local v1    # "code":I
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "JsonParser"

    const-string v7, "parseWeahterSmart error"

    invoke-static {v6, v7, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v5}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    goto :goto_0
.end method

.method public static parseWeahterWunder(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 323
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 324
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "code"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    .local v0, "code":I
    if-nez v0, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 327
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/JsonParser;->parseWeatherWunder(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v4

    .line 328
    .local v4, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    if-eqz v4, :cond_0

    .line 329
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/JsonParser;->parseForcastWunder(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "code":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :goto_0
    return-object v4

    .line 333
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "JsonParser"

    const-string v6, "parseWeahterSmart error"

    invoke-static {v5, v6, v2}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v4}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    goto :goto_0
.end method

.method public static parseWeather(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    const/4 v3, 0x0

    .line 42
    :goto_0
    return-object v3

    .line 27
    :cond_0
    new-instance v3, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v3}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 29
    .local v3, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "l"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "l1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 33
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->formatUpdateTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 34
    const-string v4, "l5"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 35
    const-string v4, "l4"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 36
    const-string v4, "l3"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 37
    const-string v4, "l2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 40
    const-string v4, "Excepition"

    const-string v5, "parseWeather"

    invoke-static {v4, v5, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseWeatherFromGround(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 14
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    const/4 v4, 0x0

    .line 92
    :cond_0
    :goto_0
    return-object v4

    .line 69
    :cond_1
    new-instance v4, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v4}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 71
    .local v4, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "current_observation"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_c"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_f"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feelslike_c"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feelslike_f"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 77
    const-string v5, "relative_humidity"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 78
    const-string v5, "wind_dir"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 79
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "wind_kph"

    .line 80
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4042000000000000L    # 36.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    .line 79
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 81
    const-string v5, "local_epoch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 82
    const-string v5, "icon"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 84
    const-string v5, "local_tz_long"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "timeZoneId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    iput-object v3, v4, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 88
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "timeZoneId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 90
    const-string v5, "Excepition"

    const-string v6, "parseWeatherFromGround"

    invoke-static {v5, v6, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static parseWeatherWunder(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 12
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v3, "l"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "l"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    new-instance v2, Lcom/smartisan/weather/lib/bean/Weather;

    .end local v2    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-direct {v2}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 99
    .restart local v2    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v3, "l"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "temp_c"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "temp_c"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp_c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 105
    :goto_0
    const-string v3, "temp_f"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "temp_f"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp_f"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 114
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feelslike_c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feelslike_f"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 116
    const-string v3, "relative_humidity"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 117
    const-string v3, "wind_dir"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 118
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "wind_kph"

    .line 119
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4042000000000000L    # 36.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    .line 118
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 120
    const-string v3, "local_epoch"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 121
    const-string v3, "icon"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 123
    const-string v3, "local_tz_long"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "timeZoneId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iput-object v1, v2, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;

    .line 127
    :cond_0
    const-string v3, "compare"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->compC:I

    .line 128
    const-string v3, "compare_f"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->compF:I

    .line 131
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "timeZoneId":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 103
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "?"

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    goto/16 :goto_0

    .line 108
    :cond_3
    const-string v3, "?"

    iget-object v4, v2, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    const-string v3, "?"

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    goto/16 :goto_1

    .line 111
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->TempC2TempF(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static parserWeatherSmart(Lorg/json/JSONObject;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v2, "l"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "l"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    new-instance v1, Lcom/smartisan/weather/lib/bean/Weather;

    .end local v1    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-direct {v1}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 344
    .restart local v1    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v2, "l"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 345
    .local v0, "object":Lorg/json/JSONObject;
    const-string v2, "l1"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 347
    invoke-static {v0}, Lcom/smartisan/weather/lib/util/JsonParser;->formatUpdateTime(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 348
    const-string v2, "l5"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 349
    const-string v2, "l4"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 350
    const-string v2, "l3"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 351
    const-string v2, "l2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 352
    const-string v2, "compare"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->compC:I

    .line 353
    const-string v2, "compare_f"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->compF:I

    .line 354
    const-string v2, "body_feel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 356
    .end local v0    # "object":Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method
