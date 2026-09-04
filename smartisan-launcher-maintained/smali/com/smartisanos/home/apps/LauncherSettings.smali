.class public Lcom/smartisanos/home/apps/LauncherSettings;
.super Lcom/smartisanos/home/apps/EmbeddedApp;
.source "LauncherSettings.java"


.field public static final cmp:Ljava/lang/String; = "com.smartisanos.home.settings.view.SettingMainActivity"

.field public static final dockApp:Z = true

.field public static final icon:Ljava/lang/String; = "launcher_settings"

.field public static final label:Ljava/lang/String; = "launcher_setting_name"

.field public static final pkg:Ljava/lang/String; = "com.smartisanos.home.settings"


.method public constructor <init>()V
    .locals 6

    .prologue
    .line 15
    const-string v1, "com.smartisanos.home.settings"

    const-string v2, "com.smartisanos.home.settings.view.SettingMainActivity"

    const-string v3, "launcher_setting_name"

    const-string v4, "launcher_settings"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/apps/EmbeddedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
