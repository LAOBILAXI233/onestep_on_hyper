.class public Lcom/smartisanos/home/apps/Weather;
.super Lcom/smartisanos/home/apps/EmbeddedApp;
.source "Weather.java"


.field public static final PRIVATE_APP_NAME:Ljava/lang/String; = "weather"

.field public static final cmp:Ljava/lang/String; = "#"

.field public static final dockApp:Z = false

.field public static final icon:Ljava/lang/String; = "app_icon_weather"

.field public static final label:Ljava/lang/String; = "app_name_weather"

.field public static final pkg:Ljava/lang/String; = "com.smartisanos.weather"


.method public constructor <init>()V
    .locals 6

    .prologue
    .line 14
    const-string v1, "com.smartisanos.weather"

    const-string v2, "#"

    const-string v3, "app_name_weather"

    const-string v4, "app_icon_weather"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/apps/EmbeddedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    const-string v0, "weather"

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/apps/Weather;->setAppPrivateName(Ljava/lang/String;)V

    .line 16
    return-void
.end method
