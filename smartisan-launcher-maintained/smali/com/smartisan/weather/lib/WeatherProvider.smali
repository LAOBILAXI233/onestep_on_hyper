.class public Lcom/smartisan/weather/lib/WeatherProvider;
.super Landroid/content/ContentProvider;
.source "WeatherProvider.java"


.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisan.provider.weather"

.field public static final COLUMN_NAME_TEMP_TYPE:Ljava/lang/String; = "tempType"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CURRENT_TEMP_TYPE_PATH:Ljava/lang/String; = "tempType"

.field public static final CURRENT_WEATHER_PATH:Ljava/lang/String; = "current"

.field public static final CURRENT_WEATHER_URI:Ljava/lang/String; = "/weather/current"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ITEM_CURRENT:I = 0x4

.field public static final ITEM_LOCATION:I = 0x3

.field public static final LOCATION:Ljava/lang/String; = "englishLocationName"

.field public static final uriMatcher:Landroid/content/UriMatcher;


.field public final TABLE_NAME:Ljava/lang/String;

.field public databasehelper:Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-string v0, "content://com.smartisan.provider.weather/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisan/weather/lib/WeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisan/weather/lib/WeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 45
    sget-object v0, Lcom/smartisan/weather/lib/WeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisan.provider.weather"

    const-string v2, "weather/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 37
    const-string v0, "weather_provider"

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherProvider;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method


.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, -0x1

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 130
    const-string v0, ""

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherProvider;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/smartisan/weather/lib/WeatherProvider;->mContext:Landroid/content/Context;

    const-string v1, "weather_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 54
    new-instance v0, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    iget-object v1, p0, Lcom/smartisan/weather/lib/WeatherProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/WeatherProvider;->databasehelper:Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisan/weather/lib/WeatherProvider;->databasehelper:Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-virtual {v2}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 68
    .local v9, "c":Landroid/database/Cursor;
    const-string v2, "WeatherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuery:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/smartisan/weather/lib/WeatherProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 72
    .local v16, "locationName":Ljava/lang/String;
    const-string v2, "weather_provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "englishLocationName like \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 72
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 115
    .end local v16    # "locationName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 73
    .restart local v16    # "locationName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 80
    .end local v16    # "locationName":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 81
    .local v18, "path":Ljava/lang/String;
    const-string v2, "localeOnly"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v14

    .line 82
    .local v14, "islocaleOnly":Z
    const-string v2, "WeatherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQueryParameter:islocaleOnly = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "current"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/smartisan/weather/lib/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object v15

    .line 85
    .local v15, "locationDBHelper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    const/4 v12, 0x0

    .line 86
    .local v12, "currentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v14, :cond_3

    .line 87
    invoke-virtual {v15}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v12

    .line 91
    :goto_2
    if-eqz v12, :cond_2

    iget-object v2, v12, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationkey = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "query_selection":Ljava/lang/String;
    const-string v2, "weather_provider"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 98
    .end local v4    # "query_selection":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/smartisan/weather/lib/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/weather/lib/NewUpdateService;->startService(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 89
    :cond_3
    invoke-virtual {v15}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryFirstLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v12

    goto :goto_2

    .line 94
    :cond_4
    const-string v2, ""

    goto :goto_3

    .line 99
    .end local v12    # "currentLocation":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .end local v15    # "locationDBHelper":Lcom/smartisan/weather/lib/db/LocationDBHelper;
    :cond_5
    const-string v2, "tempType"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v13, 0x1

    .line 101
    .local v13, "currentType":I
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tempType"

    aput-object v3, v10, v2

    .line 104
    .local v10, "columnNames":[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    .local v17, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 106
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v2

    .line 108
    .local v11, "columnValues":[Ljava/lang/Integer;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 109
    move-object/from16 v9, v17

    .line 110
    goto/16 :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, -0x1

    return v0
.end method
