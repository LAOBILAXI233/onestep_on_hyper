.class public Lcom/smartisan/weather/lib/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


.field public static final ACCUAPIKEY:Ljava/lang/String; = "9672adca35414e0597a05b392ccc95d6"

.field public static final ACTION_SMARTISAN_WEATHER_DATA_UPDATE:Ljava/lang/String; = "com.smartisan.weather.data.update"

.field public static final ACTION_SMARTISAN_WEATHER_SERVICE:Ljava/lang/String; = "com.smartisan.service.weather"

.field public static final ACTION_SMARTISAN_WEATHER_UPDATE:Ljava/lang/String; = "com.smartisan.weather.update"

.field public static final LANGUAGE:Ljava/lang/String; = "zh-CN"

.field public static final LANGUAGE_ENG:Ljava/lang/String; = "en"

.field public static final MESSAGE_CIRCLE_PROGRESSBAR_START:I = 0x29

.field public static final MESSAGE_CIRCLE_PROGRESSBAR_STOP:I = 0x2a

.field public static final MESSAGE_NETWORK_UNAVAIABLE:I = 0x33

.field public static final MESSAGE_UPDATE_CURRENT_WEATHER_FAILED:I = 0x1a

.field public static final MESSAGE_UPDATE_CURRENT_WEATHER_SUCCESS:I = 0x19

.field public static final MESSAGE_UPDATE_LOCATION_CITY_NOT_FIND:I = 0x18

.field public static final MESSAGE_UPDATE_LOCATION_FAILED:I = 0x17

.field public static final MESSAGE_UPDATE_LOCATION_NO_CHANGE:I = 0x15

.field public static final MESSAGE_UPDATE_LOCATION_SERVER_UNAVAILABLE:I = 0xc

.field public static final MESSAGE_UPDATE_LOCATION_SUCCESS:I = 0x16

.field public static final MESSAGE_UPDATE_NETWORK_UNAVAILABLE:I = 0xb

.field public static final MESSAGE_UPDATE_NORMAL_WEATHER_OVER:I = 0x1b

.field public static final MESSAGE_UPDATE_WEATHER_FAILED:I = 0x2c

.field public static final MESSAGE_UPDATE_WEATHER_SUCCESS:I = 0x2b

.field public static final MESSAGE_WEATHER_DETAIL_UPDATE_WEATHER_FAILED:I = 0x1f

.field public static final MESSAGE_WEATHER_DETAIL_UPDATE_WEATHER_SUCCESS:I = 0x1f

.field public static final PREFERENCE_NAME_C_OR_F:Ljava/lang/String; = "c_or_f"

.field public static final PREFERENCE_NAME_FRIST_IN:Ljava/lang/String; = "app_frist_in"

.field public static final PREFERENCE_NAME_MAIN:Ljava/lang/String; = "weather_preference"

.field public static final PREFERENCE_NAME_TIMEZONE_MAP:Ljava/lang/String; = "weather_timezone_map"

.field public static final PREFERENCE_NAME_USE_CURRENT_WEATHER:Ljava/lang/String; = "use_current_weather"

.field public static final PREFERENCE_VALUE_C:I = 0x1

.field public static final PREFERENCE_VALUE_F:I = 0x2

.field public static final PREFERENCE_VERSION_CODE_CITY_DB:Ljava/lang/String; = "version_code_city_db"

.field public static REQUEST_CODE_LOCATION_SETTING:I = 0x0

.field public static final RESULT_CODE_ADD_CITY:I = 0xa

.field public static final RESULT_CODE_ADD_CITY_EXIST:I = 0x66

.field public static final RESULT_CODE_ADD_CITY_SUCCESS:I = 0x65

.field public static final RESULT_CODE_ADD_CURRENT_CITY:I = 0xe

.field public static final RESULT_CODE_ADD_CURRENT_CITY_EXIST:I = 0xf

.field public static final RESULT_CODE_DEL_CITY_SUCCESS:I = 0xd

.field public static final UNKNOW_STRING:Ljava/lang/String; = "?"


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0xa

    sput v0, Lcom/smartisan/weather/lib/Constants;->REQUEST_CODE_LOCATION_SETTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
