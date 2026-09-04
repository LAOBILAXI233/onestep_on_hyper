.class public Lcom/smartisan/weather/lib/ResMappingUtil;
.super Ljava/lang/Object;
.source "ResMappingUtil.java"


.field private static citySimpleNamesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static groundWeatherCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static typeface:Landroid/graphics/Typeface;

.field private static windDir:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static windSpeed:[Ljava/lang/String;

.field private static windSpeedDesc:[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "0"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "1"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "2"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "3"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "4"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "5"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "6"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "7"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_7:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "8"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_8:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    const-string v1, "9"

    sget v2, Lcom/smartisan/weather/lib/R$string;->wind_dir_9:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "clear"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "cloudy"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chanceflurries"

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chancerain"

    const-string v2, "07"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chancesleet"

    const-string v2, "06"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chancesnow"

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chancetstorms"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "flurries"

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "fog"

    const-string v2, "18"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "hazy"

    const-string v2, "53"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "mostlycloudy"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "mostlysunny"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "partlycloudy"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "partlysunny"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "cloudy"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "sleet"

    const-string v2, "06"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "rain"

    const-string v2, "08"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "snow"

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "sunny"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "tstorms"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "chancetstorms"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "clear"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "unknow"

    const-string v2, "99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5185\u8499\u53e4\u81ea\u6cbb\u533a"

    const-string v2, "\u5185\u8499\u53e4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u65b0\u7586\u7ef4\u543e\u5c14\u81ea\u6cbb\u533a"

    const-string v2, "\u65b0\u7586"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u897f\u85cf\u81ea\u6cbb\u533a"

    const-string v2, "\u897f\u85cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5b81\u590f\u56de\u65cf\u81ea\u6cbb\u533a"

    const-string v2, "\u5b81\u590f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5e7f\u897f\u58ee\u65cf\u81ea\u6cbb\u533a"

    const-string v2, "\u5e7f\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5927\u5174\u5b89\u5cad\u5730\u533a"

    const-string v2, "\u5927\u5174\u5b89\u5cad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5ef6\u8fb9\u671d\u9c9c\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u5ef6\u8fb9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9521\u6797\u90ed\u52d2\u76df"

    const-string v2, "\u9521\u6797\u90ed\u52d2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u660c\u5409\u56de\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u660c\u5409"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4f0a\u7281\u54c8\u8428\u514b\u81ea\u6cbb\u5dde"

    const-string v2, "\u4f0a\u7281"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5410\u9c81\u756a\u5730\u533a"

    const-string v2, "\u5410\u9c81\u756a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5df4\u97f3\u90ed\u695e\u8499\u53e4\u81ea\u6cbb\u5dde"

    const-string v2, "\u5df4\u97f3\u90ed\u695e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u514b\u82cf\u5730\u533a"

    const-string v2, "\u963f\u514b\u82cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5580\u4ec0\u5730\u533a"

    const-string v2, "\u5580\u4ec0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5854\u57ce\u5730\u533a"

    const-string v2, "\u5854\u57ce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u54c8\u5bc6\u5730\u533a"

    const-string v2, "\u54c8\u5bc6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u548c\u7530\u5730\u533a"

    const-string v2, "\u548c\u7530"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u52d2\u6cf0\u5730\u533a"

    const-string v2, "\u963f\u52d2\u6cf0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u514b\u5b5c\u52d2\u82cf\u67ef\u5c14\u514b\u5b5c\u81ea\u6cbb\u5dde"

    const-string v2, "\u514b\u5dde"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u535a\u5c14\u5854\u62c9\u8499\u53e4\u81ea\u6cbb\u5dde"

    const-string v2, "\u535a\u5c14\u5854\u62c9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u65e5\u5580\u5219\u5730\u533a"

    const-string v2, "\u65e5\u5580\u5219"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5c71\u5357\u5730\u533a"

    const-string v2, "\u5c71\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6797\u829d\u5730\u533a"

    const-string v2, "\u6797\u829d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u660c\u90fd\u5730\u533a"

    const-string v2, "\u660c\u90fd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u90a3\u66f2\u5730\u533a"

    const-string v2, "\u90a3\u66f2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u91cc\u5730\u533a"

    const-string v2, "\u963f\u91cc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9ec4\u5357\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u9ec4\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6d77\u5357\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6d77\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u679c\u6d1b\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u679c\u6d1b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7389\u6811\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u7389\u6811"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6d77\u897f\u8499\u53e4\u65cf\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6d77\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6d77\u5317\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6d77\u5317"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e34\u590f\u56de\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u4e34\u590f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7518\u5357\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u7518\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6069\u65bd\u571f\u5bb6\u65cf\u82d7\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6069\u65bd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u795e\u519c\u67b6\u6797\u533a"

    const-string v2, "\u795e\u519c\u67b6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6e58\u897f\u571f\u5bb6\u65cf\u82d7\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6e58\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9ed4\u5357\u5e03\u4f9d\u65cf\u82d7\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u9ed4\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9ed4\u4e1c\u5357\u82d7\u65cf\u4f97\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u9ed4\u4e1c\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9ed4\u897f\u5357\u5e03\u4f9d\u65cf\u82d7\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u9ed4\u897f\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u51c9\u5c71\u5f5d\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u51c9\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7518\u5b5c\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u7518\u5b5c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u575d\u85cf\u65cf\u7f8c\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u963f\u575d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5927\u7406\u767d\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u5927\u7406"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7ea2\u6cb3\u54c8\u5c3c\u65cf\u5f5d\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u7ea2\u6cb3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6587\u5c71\u58ee\u65cf\u82d7\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6587\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u695a\u96c4\u5f5d\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u695a\u96c4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6012\u6c5f\u5088\u50f3\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u6012\u6c5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8fea\u5e86\u85cf\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u8fea\u5e86"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5fb7\u5b8f\u50a3\u65cf\u666f\u9887\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u5fb7\u5b8f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u897f\u53cc\u7248\u7eb3\u50a3\u65cf\u81ea\u6cbb\u5dde"

    const-string v2, "\u897f\u53cc\u7248\u7eb3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u660c\u6c5f\u9ece\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u660c\u6c5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u767d\u6c99\u9ece\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u767d\u6c99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u743c\u4e2d\u9ece\u65cf\u82d7\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u743c\u4e2d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4fdd\u4ead\u9ece\u65cf\u82d7\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u4fdd\u4ead"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9675\u6c34\u9ece\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u9675\u6c34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e50\u4e1c\u9ece\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u4e50\u4e1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5bdf\u5e03\u67e5\u5c14\u9521\u4f2f\u81ea\u6cbb\u53bf"

    const-string v2, "\u5bdf\u5e03\u67e5\u5c14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7109\u8006\u56de\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u7109\u8006"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u548c\u5e03\u514b\u8d5b\u5c14\u8499\u53e4\u81ea\u6cbb\u53bf"

    const-string v2, "\u548c\u5e03\u514b\u8d5b\u5c14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5df4\u91cc\u5764\u54c8\u8428\u514b\u81ea\u6cbb\u53bf"

    const-string v2, "\u5df4\u91cc\u5764"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6cb3\u5357\u8499\u53e4\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u6cb3\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u79ef\u77f3\u5c71\u4fdd\u5b89\u65cf\u4e1c\u4e61\u65cf\u6492\u62c9\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u79ef\u77f3\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e1c\u4e61\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u4e1c\u4e61"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e09\u90fd\u6c34\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u4e09\u90fd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6728\u91cc\u85cf\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u6728\u91cc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6f3e\u6fde\u5f5d\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u6f3e\u6fde"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5dcd\u5c71\u5f5d\u65cf\u56de\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5dcd\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5357\u6da7\u5f5d\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5357\u6da7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5c4f\u8fb9\u82d7\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5c4f\u8fb9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u91d1\u5e73\u82d7\u65cf\u7476\u65cf\u50a3\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u91d1\u5e73"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6cb3\u53e3\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u6cb3\u53e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5170\u576a\u767d\u65cf\u666e\u7c73\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5170\u576a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8d21\u5c71\u72ec\u9f99\u65cf\u6012\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u8d21\u5c71"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7ef4\u897f\u5088\u50f3\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u7ef4\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u878d\u6c34\u82d7\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u878d\u6c34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u91d1\u79c0\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u91d1\u79c0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9f99\u80dc\u5404\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u9f99\u80dc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u606d\u57ce\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u606d\u57ce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5bcc\u5ddd\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5bcc\u5ddd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9686\u6797\u5404\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u9686\u6797"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5df4\u9a6c\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5df4\u9a6c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u73af\u6c5f\u6bdb\u5357\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u73af\u6c5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7f57\u57ce\u4eeb\u4f6c\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u7f57\u57ce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u90fd\u5b89\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u90fd\u5b89"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5927\u5316\u7476\u65cf\u81ea\u6cbb\u53bf"

    const-string v2, "\u5927\u5316"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u571f\u9ed8\u7279\u53f3\u65d7"

    const-string v2, "\u571f\u53f3\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u571f\u9ed8\u7279\u5de6\u65d7"

    const-string v2, "\u571f\u5de6\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8fbe\u5c14\u7f55\u8302\u660e\u5b89\u8054\u5408\u65d7"

    const-string v2, "\u8fbe\u8302\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5bdf\u54c8\u5c14\u53f3\u7ffc\u524d\u65d7"

    const-string v2, "\u5bdf\u53f3\u524d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5bdf\u54c8\u5c14\u53f3\u7ffc\u4e2d\u65d7"

    const-string v2, "\u5bdf\u53f3\u4e2d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5bdf\u54c8\u5c14\u53f3\u7ffc\u540e\u65d7"

    const-string v2, "\u5bdf\u53f3\u540e\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u79d1\u5c14\u6c81\u5de6\u7ffc\u4e2d\u65d7"

    const-string v2, "\u79d1\u5de6\u4e2d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u79d1\u5c14\u6c81\u5de6\u7ffc\u540e\u65d7"

    const-string v2, "\u79d1\u5de6\u540e\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5948\u66fc\u65d7"

    const-string v2, "\u5948\u66fc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u624e\u9c81\u7279\u65d7"

    const-string v2, "\u624e\u9c81\u7279"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u9c81\u79d1\u5c14\u6c81\u65d7"

    const-string v2, "\u963f\u9c81\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u514b\u4ec0\u514b\u817e\u65d7"

    const-string v2, "\u514b\u4ec0\u514b\u817e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u7fc1\u725b\u7279\u65d7"

    const-string v2, "\u7fc1\u725b\u7279"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6556\u6c49\u65d7"

    const-string v2, "\u6556\u6c49"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8fbe\u62c9\u7279\u65d7"

    const-string v2, "\u8fbe\u62c9\u7279"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u51c6\u683c\u5c14\u65d7"

    const-string v2, "\u51c6\u683c\u5c14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9102\u6258\u514b\u524d\u65d7"

    const-string v2, "\u9102\u524d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4f0a\u91d1\u970d\u6d1b\u65d7"

    const-string v2, "\u4f0a\u91d1\u970d\u6d1b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e4c\u62c9\u7279\u524d\u65d7"

    const-string v2, "\u4e4c\u524d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e4c\u62c9\u7279\u4e2d\u65d7"

    const-string v2, "\u4e4c\u4e2d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e4c\u62c9\u7279\u540e\u65d7"

    const-string v2, "\u4e4c\u540e\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u5df4\u560e\u65d7"

    const-string v2, "\u963f\u5df4\u560e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u82cf\u5c3c\u7279\u5de6\u65d7"

    const-string v2, "\u82cf\u5de6\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u82cf\u5c3c\u7279\u53f3\u65d7"

    const-string v2, "\u82cf\u53f3\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e1c\u4e4c\u73e0\u7a46\u6c81\u65d7"

    const-string v2, "\u4e1c\u4e4c\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u897f\u4e4c\u73e0\u7a46\u6c81\u65d7"

    const-string v2, "\u897f\u4e4c\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6b63\u84dd\u65d7"

    const-string v2, "\u6b63\u5170\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u83ab\u529b\u8fbe\u74e6\u8fbe\u65a1\u5c14\u65cf\u81ea\u6cbb\u65d7"

    const-string v2, "\u83ab\u529b\u8fbe\u74e6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9102\u4f26\u6625\u81ea\u6cbb\u65d7"

    const-string v2, "\u9102\u4f26\u6625\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9102\u6e29\u514b\u65cf\u81ea\u6cbb\u65d7"

    const-string v2, "\u9102\u6e29\u514b\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9648\u5df4\u5c14\u864e\u65d7"

    const-string v2, "\u9648\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u65b0\u5df4\u5c14\u864e\u5de6\u65d7"

    const-string v2, "\u65b0\u5de6\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u65b0\u5df4\u5c14\u864e\u53f3\u65d7"

    const-string v2, "\u65b0\u53f3\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u79d1\u5c14\u6c81\u53f3\u7ffc\u4e2d\u65d7"

    const-string v2, "\u79d1\u53f3\u4e2d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u79d1\u5c14\u6c81\u53f3\u7ffc\u524d\u65d7"

    const-string v2, "\u79d1\u53f3\u524d\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u62c9\u5584\u5de6\u65d7"

    const-string v2, "\u963f\u5de6\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u963f\u62c9\u5584\u53f3\u65d7"

    const-string v2, "\u963f\u53f3\u65d7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u989d\u6d4e\u7eb3\u65d7"

    const-string v2, "\u989d\u6d4e\u7eb3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u624e\u8d49\u7279\u65d7"

    const-string v2, "\u624e\u8d49\u7279"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u516d\u679d\u7279\u533a"

    const-string v2, "\u516d\u679d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u7279\u522b\u884c\u653f\u533a"

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u7279\u5225\u884c\u653f\u5340"

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e5d\u9f99\u57ce\u533a"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u4e5d\u9f8d\u57ce\u5340"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u89c0\u5858\u5340"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6df1\u6c34\u57d7\u5340"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9ec3\u5927\u4ed9\u5340"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6cb9\u5c16\u65fa\u5340"

    const-string v2, "\u4e5d\u9f99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u96e2\u5cf6\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8475\u9752\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5317\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u897f\u8ca2\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u6c99\u7530\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5927\u57d4\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u8343\u7063\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5c6f\u9580\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u5143\u6717\u5340"

    const-string v2, "\u65b0\u754c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    const-string v1, "\u9999\u6e2f\u7279\u5225\u884c\u653f\u5340"

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCitySimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cityName"    # Ljava/lang/String;

    .prologue
    .line 286
    move-object v0, p0

    .line 287
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    sget-object v1, Lcom/smartisan/weather/lib/ResMappingUtil;->citySimpleNamesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 290
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getGroundWeatherCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "weatherText"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    const-string v1, "unknow"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->groundWeatherCode:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/HelveticaNeueLTStd-Bd.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->typeface:Landroid/graphics/Typeface;

    .line 35
    :cond_1
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->typeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getWindDirRedId(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/smartisan/weather/lib/ResMappingUtil;->windDir:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/smartisan/weather/lib/R$string;->unknow:I

    goto :goto_0
.end method
