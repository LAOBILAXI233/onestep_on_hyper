.class public Lcom/smartisanos/launcher/provider/LauncherCallProvider;
.super Landroid/content/ContentProvider;
.source "LauncherCallProvider.java"


.field private static final ALL_ROWS:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisanos.launcher.call_method"

.field public static final LAUNCHER_AUTHORITY:Ljava/lang/String; = "content://com.smartisanos.launcher.call_method"

.field public static final METHOD_QUERY_APP_CATEGORY:Ljava/lang/String; = "query_app_category"

.field public static final METHOD_WEATHER_DATA_CHANGED:Ljava/lang/String; = "weather_data_changed"

.field public static final PROVIDER_TYPE_NAME:Ljava/lang/String; = "launcher_call"

.field private static final SINGLE_ROW:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final matcher:Landroid/content/UriMatcher;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const-class v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/LOG;

    .line 29
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->matcher:Landroid/content/UriMatcher;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.call_method"

    const-string v2, "launcher_call"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.call_method"

    const-string v2, "launcher_call/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    .line 80
    sget-object v2, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LauncherCallProvider handle method ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 81
    const-string v2, "weather_data_changed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {p2, p3}, Lcom/smartisanos/launcher/actions/WeatherDataChanged;->handleWeatherDataChange(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    :cond_0
    const-string v2, "query_app_category"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;

    invoke-direct {v0}, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;-><init>()V

    .line 86
    .local v0, "action":Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;
    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .end local v0    # "action":Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    sget-object v1, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 47
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.smartisan.launcher.call"

    .line 52
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.smartisan.launcher.call"

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
