.class Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/cmd/WbAppActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrequencyHelper"
.end annotation


.field private static final DEFAULT_FREQUENCY:I = 0x36ee80

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "frequency_get_cmd"

.field private static final KEY_LAST_TIME_GET_CMD:Ljava/lang/String; = "last_time_get_cmd"

.field private static final WEIBO_SDK_PREFERENCES_NAME:Ljava/lang/String; = "com_sina_weibo_sdk"


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;)J
    .locals 3

    .prologue
    const-wide/32 v0, 0x36ee80

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v2, "frequency_get_cmd"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 168
    :cond_0
    return-wide v0
.end method

.method public static getLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v2, "last_time_get_cmd"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 193
    :cond_0
    return-wide v0
.end method

.method public static getWeiboSdkSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 154
    const-string v0, "com_sina_weibo_sdk"

    .line 155
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public static saveFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
    .locals 2

    .prologue
    .line 177
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 178
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    const-string v1, "frequency_get_cmd"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    :cond_0
    return-void
.end method

.method public static saveLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;J)V
    .locals 2

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    const-string v1, "last_time_get_cmd"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    :cond_0
    return-void
.end method
