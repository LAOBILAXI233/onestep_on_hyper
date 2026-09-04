.class public Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
.super Ljava/lang/Object;
.source "WeatherProviderDBHelper.java"


.field public static final DEFAULT_HISTORY_SECTION:I = 0xa4cb80

.field public static final QUERY_HISTORY_GAP:I = 0x5265c00

.field public static lock:Ljava/lang/Object;


.field private TABLE_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "weather_provider"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    .line 40
    return-void
.end method

.method private creatValueFromWeather(Lcom/smartisan/weather/lib/bean/Weather;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    const/4 v0, 0x5

    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 172
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "locationkey"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "pubdate"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "weatherCode"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "temp"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "fahrenheitTemp"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "realFeelTemp"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "realFeelFahrenheitTemp"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "relativeHumidity"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "windDirection"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "windSpeed"

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "AQI"

    iget v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->AQI:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v3, "compC"

    iget v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->compC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v3, "compF"

    iget v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->compF:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 190
    .local v0, "forecastSize":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "forecastCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lowtemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hightemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lowFahrenheitTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->lowFahrenheitTemp:Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "highFahrenheitTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highFahrenheitTemp:Ljava/lang/String;

    .line 197
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sunRiseAndSet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->sunRiseAndSet:Ljava/lang/String;

    .line 199
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 189
    .end local v0    # "forecastSize":I
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_1

    .line 204
    :cond_2
    const-string v3, "last_update"

    iget-wide v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->lastUpdate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public static creatWeatherFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 209
    new-instance v2, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v2}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 210
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v3, "locationkey"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    .line 211
    const-string v3, "pubdate"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 212
    const-string v3, "weatherCode"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 213
    const-string v3, "temp"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 214
    const-string v3, "fahrenheitTemp"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 215
    const-string v3, "realFeelTemp"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 216
    const-string v3, "realFeelFahrenheitTemp"

    .line 217
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 216
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 218
    const-string v3, "relativeHumidity"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 219
    const-string v3, "windDirection"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 220
    const-string v3, "windSpeed"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 221
    const-string v3, "AQI"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->AQI:I

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 224
    new-instance v0, Lcom/smartisan/weather/lib/bean/Forecast;

    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/Forecast;-><init>()V

    .line 225
    .local v0, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->date:Ljava/lang/String;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "forecastCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lowtemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hightemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lowFahrenheitTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->lowFahrenheitTemp:Ljava/lang/String;

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "highFahrenheitTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->highFahrenheitTemp:Ljava/lang/String;

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sunRiseAndSet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisan/weather/lib/bean/Forecast;->sunRiseAndSet:Ljava/lang/String;

    .line 239
    iget-object v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 241
    .end local v0    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    :cond_0
    const-string v3, "last_update"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/smartisan/weather/lib/bean/Weather;->lastUpdate:J

    .line 242
    const-string v3, "compC"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->compC:I

    .line 243
    const-string v3, "compF"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/smartisan/weather/lib/bean/Weather;->compF:I

    .line 244
    return-object v2
.end method


.method public addOrUpdate(Lcom/smartisan/weather/lib/bean/Weather;)Z
    .locals 4
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    .local v0, "result":Z
    sget-object v3, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->queryWeatherByLocationKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v1

    .line 48
    .local v1, "weatherLocal":Lcom/smartisan/weather/lib/bean/Weather;
    if-nez v1, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->addWeather(Lcom/smartisan/weather/lib/bean/Weather;)Z

    move-result v0

    .line 53
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "weatherLocal":Lcom/smartisan/weather/lib/bean/Weather;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 51
    .restart local v1    # "weatherLocal":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->updateWeather(Lcom/smartisan/weather/lib/bean/Weather;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public addWeather(Lcom/smartisan/weather/lib/bean/Weather;)Z
    .locals 10
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    const/4 v6, 0x0

    .line 58
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v1, v6

    .line 74
    :goto_0
    return v1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    .local v1, "result":Z
    sget-object v7, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 62
    :try_start_0
    iget-object v8, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->queryWeatherByLocationKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v5

    .line 63
    .local v5, "weatherLocal":Lcom/smartisan/weather/lib/bean/Weather;
    if-nez v5, :cond_3

    .line 64
    iget-object v8, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v8}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatValueFromWeather(Lcom/smartisan/weather/lib/bean/Weather;)Landroid/content/ContentValues;

    move-result-object v4

    .line 66
    .local v4, "values":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 67
    monitor-exit v7

    move v1, v6

    goto :goto_0

    .line 68
    :cond_2
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 69
    .local v2, "rowId":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-lez v6, :cond_3

    .line 71
    const/4 v1, 0x1

    .line 74
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    monitor-exit v7

    goto :goto_0

    .line 75
    .end local v5    # "weatherLocal":Lcom/smartisan/weather/lib/bean/Weather;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public queryAllWeathers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Weather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v4, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v4}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 140
    .local v3, "weathers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Weather;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-static {v0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatWeatherFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 142
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    if-nez v3, :cond_0

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "weathers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Weather;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .restart local v3    # "weathers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Weather;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v2    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 147
    return-object v3
.end method

.method public queryWeatherByEnglishLocation(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 6
    .param p1, "englishLocationName"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v3, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 80
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where englishLocationName like ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 85
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-static {v0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatWeatherFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    return-object v2
.end method

.method public queryWeatherByLocationKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 6
    .param p1, "locationKey"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 108
    :goto_0
    return-object v2

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where locationkey = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 101
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-static {v0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatWeatherFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 104
    :cond_2
    if-eqz v0, :cond_3

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public queryWeatherByLocationKey(Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/weather/lib/bean/Weather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/Weather;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v6}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "id":Ljava/lang/String;
    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where locationkey in"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/Weather;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/Weather;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    invoke-static {v0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatWeatherFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 130
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "selection":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public updateWeather(Lcom/smartisan/weather/lib/bean/Weather;)Z
    .locals 10
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v5

    .line 153
    :cond_1
    iget-object v7, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v7}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 154
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->creatValueFromWeather(Lcom/smartisan/weather/lib/bean/Weather;)Landroid/content/ContentValues;

    move-result-object v4

    .line 155
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz v4, :cond_0

    .line 158
    new-array v0, v6, [Ljava/lang/String;

    iget-object v7, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    aput-object v7, v0, v5

    .line 161
    .local v0, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->TABLE_NAME:Ljava/lang/String;

    const-string v8, "locationkey like ?"

    invoke-virtual {v1, v7, v4, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 162
    .local v2, "rowId":J
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 163
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    move v5, v6

    .line 164
    goto :goto_0
.end method
