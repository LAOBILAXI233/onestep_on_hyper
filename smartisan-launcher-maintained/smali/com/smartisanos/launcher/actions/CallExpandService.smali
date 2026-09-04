.class public Lcom/smartisanos/launcher/actions/CallExpandService;
.super Ljava/lang/Object;
.source "CallExpandService.java"


.field public static final EXPAND_SERVICE_URI:Ljava/lang/String; = "content://com.smartisanos.expandservice.launcher"

.field public static final METHOD_SYNC_WEATHER_DATA:Ljava/lang/String; = "sync_weather_data"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callRemoteMethod(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0, v0}, Lcom/smartisanos/launcher/actions/CallExpandService;->callRemoteMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static callRemoteMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v3, "content://com.smartisanos.expandservice.launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 21
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
