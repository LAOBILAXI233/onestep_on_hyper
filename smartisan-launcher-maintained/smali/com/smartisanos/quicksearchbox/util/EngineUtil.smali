.class public Lcom/smartisanos/quicksearchbox/util/EngineUtil;
.super Ljava/lang/Object;
.source "EngineUtil.java"


.field private static final BAIDU_URL_FORSEARCH:Ljava/lang/String; = "http://www.baidu.com/s?word="

.field private static final BING_URL_FORSEARCH:Ljava/lang/String; = "http://cn.bing.com/search?q="

.field public static final ENGINE_BAIDU:I = 0x44d

.field public static final ENGINE_BING:I = 0x44f

.field private static ENGINE_CURRENT:I = 0x0

.field private static final ENGINE_DEFAULT:I = 0x450

.field public static final ENGINE_ERROR:I = -0x1e1b9

.field public static final ENGINE_GOOGLE:I = 0x44e

.field public static final ENGINE_SM:I = 0x450

.field private static final GOOGLE_URL_FORSEARCH:Ljava/lang/String; = "http://www.google.com/#q="

.field private static final PREF_CURRENTENGINE:Ljava/lang/String; = "current_engine"

.field private static final SM_URL_FORSEARCH:Ljava/lang/String; = "http://m.sm.cn/s?q="

.field private static engineUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x450

    sput v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeEngineTo(I)Z
    .locals 2
    .param p0, "engine"    # I

    .prologue
    .line 220
    :try_start_0
    sget-object v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngine(Landroid/content/Context;)I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 228
    :goto_0
    return v1

    .line 223
    :cond_0
    sget-object v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static changeEngineToBaidu()Z
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x44d

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->changeEngineTo(I)Z

    move-result v0

    return v0
.end method

.method public static changeEngineToBing()Z
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x44f

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->changeEngineTo(I)Z

    move-result v0

    return v0
.end method

.method public static changeEngineToGoogle()Z
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x44e

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->changeEngineTo(I)Z

    move-result v0

    return v0
.end method

.method public static changeEngineToSM()Z
    .locals 1

    .prologue
    .line 215
    const/16 v0, 0x450

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->changeEngineTo(I)Z

    move-result v0

    return v0
.end method

.method public static getCurrentEngine(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_engine"

    const v2, -0x1e1b9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current engine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->info(Ljava/lang/String;)V

    .line 129
    sget v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    return v0
.end method

.method public static getCurrentEngineText(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x44f

    const/16 v6, 0x44e

    const/16 v5, 0x44d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngine(Landroid/content/Context;)I

    move-result v0

    .line 134
    .local v0, "engineIndex":I
    const v3, -0x1e1b9

    if-ne v0, v3, :cond_0

    move v3, v1

    :goto_0
    const/16 v4, 0x450

    if-ne v0, v4, :cond_1

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 135
    const/16 v1, 0x450

    sput v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_2
    return-object v1

    :cond_0
    move v3, v2

    .line 134
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 137
    :cond_2
    if-ne v0, v5, :cond_3

    .line 138
    sput v5, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 140
    :cond_3
    if-ne v0, v7, :cond_4

    .line 141
    sput v7, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 143
    :cond_4
    if-ne v0, v6, :cond_5

    .line 144
    sput v6, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 147
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u65e0\u6cd5\u83b7\u5f97\u641c\u7d22\u5f15\u64ce"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrentEngineTrackType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngine(Landroid/content/Context;)I

    move-result v0

    .line 153
    .local v0, "engineIndex":I
    const v3, -0x1e1b9

    if-ne v0, v3, :cond_0

    move v4, v2

    :goto_0
    const/16 v3, 0x450

    if-ne v0, v3, :cond_1

    move v3, v2

    :goto_1
    or-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 162
    :goto_2
    return v1

    :cond_0
    move v4, v1

    .line 153
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    .line 155
    :cond_2
    const/16 v1, 0x44d

    if-ne v0, v1, :cond_3

    .line 156
    const/4 v1, 0x3

    goto :goto_2

    .line 157
    :cond_3
    const/16 v1, 0x44f

    if-ne v0, v1, :cond_4

    move v1, v2

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    const/16 v1, 0x44e

    if-ne v0, v1, :cond_5

    .line 160
    const/4 v1, 0x2

    goto :goto_2

    .line 162
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public static initEngineSetting(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngine(Landroid/content/Context;)I

    move-result v1

    const v2, -0x1e1b9

    if-ne v1, v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngineToDefault(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static initEnineUrlMap()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    .line 57
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://www.baidu.com/s?word="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://www.google.com/#q="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://cn.bing.com/search?q="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://m.sm.cn/s?q="

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static makeSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v1, "intentSearchOnline":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 188
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->makeSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchUrl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->info(Ljava/lang/String;)V

    .line 190
    if-nez v2, :cond_0

    .line 191
    const-string v3, "make Search url Failed"

    invoke-static {v3}, Lcom/smartisanos/quicksearchbox/util/ThrowExceptionUtil;->makeExceptionCustom(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 194
    :cond_0
    :try_start_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static makeSearchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    sget v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    const/16 v2, 0x44c

    if-le v1, v2, :cond_0

    sget v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    const/16 v2, 0x451

    if-lt v1, v2, :cond_1

    .line 168
    :cond_0
    const-string v1, "illegal engine number"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/ThrowExceptionUtil;->makeExceptionCustom(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 172
    invoke-static {}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->initEnineUrlMap()V

    .line 174
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->engineUrlMap:Ljava/util/HashMap;

    sget v3, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setSearchEngine(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "engine"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/16 v3, 0x44c

    if-le p1, v3, :cond_0

    const/16 v3, 0x451

    if-lt p1, v3, :cond_1

    .line 84
    :cond_0
    const-string v3, "illegal engine number"

    invoke-static {v3}, Lcom/smartisanos/quicksearchbox/util/ThrowExceptionUtil;->makeExceptionCustom(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 89
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/Util;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "current_engine"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    sput p1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 93
    const/4 v3, 0x1

    .line 98
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return v3

    .line 95
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    sput p1, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->ENGINE_CURRENT:I

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setSearchEngineToDefault(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/16 v1, 0x450

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "set searchDefaultEngine successful"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->info(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    .line 116
    :goto_0
    return v1

    .line 110
    :cond_0
    const-string v1, "set searchDefaultEngine failed"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    .line 111
    const-string v1, "preference commit failed"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/ThrowExceptionUtil;->makeExceptionCustom(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method
