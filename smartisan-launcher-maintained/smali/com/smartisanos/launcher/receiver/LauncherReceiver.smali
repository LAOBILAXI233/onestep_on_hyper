.class public Lcom/smartisanos/launcher/receiver/LauncherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherReceiver.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private isOkRun:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->isOkRun:Z

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->isOkRun:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/receiver/LauncherReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->isOkRun:Z

    return p1
.end method

.method public static handleUnFinishIntent()V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    .line 148
    .local v0, "context":Landroid/content/Context;
    .local v2, "receiver":Lcom/smartisanos/launcher/receiver/LauncherReceiver;
    :cond_0
    :goto_0
    return-void

    .line 138
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "receiver":Lcom/smartisanos/launcher/receiver/LauncherReceiver;
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "handleUnFinishIntent begin !"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 142
    :cond_2
    new-instance v2, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {v2}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;-><init>()V

    .line 143
    .restart local v2    # "receiver":Lcom/smartisanos/launcher/receiver/LauncherReceiver;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .restart local v0    # "context":Landroid/content/Context;
    sget-object v3, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 147
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v3, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showDialogForThemeUninstalled()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver$1;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;I)V

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver$1;->send(F)V

    .line 166
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launcher onReceive intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v6, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->onDownloadComplete(Landroid/content/Intent;)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    .local v1, "needCache":Z
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 49
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    iget-boolean v6, v6, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-nez v6, :cond_3

    .line 50
    const/4 v1, 0x1

    .line 51
    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "Launcher startup, data init running !"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 58
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 59
    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cache intent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 60
    sget-object v6, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_4
    const/4 v1, 0x1

    .line 55
    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "Launcher activity is null !"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    .line 65
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 66
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 67
    :cond_6
    invoke-static {p2, p1}, Lcom/smartisanos/expandservice/launcher/actions/PackageAction;->handleIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 75
    const-string v6, "com.smartisanos.launcher.theme"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 76
    invoke-static {p2, v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatusByAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 79
    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v4

    .line 80
    .local v4, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v4, :cond_1

    .line 81
    const-string v6, "launcher_theme"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "themeId":Ljava/lang/String;
    if-eqz v5, :cond_1

    iget-object v6, v4, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const-string v6, "launcher_theme"

    const-string v7, "smartisan_theme_black"

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->showDialogForThemeUninstalled()V

    goto/16 :goto_0

    .line 92
    .end local v4    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v5    # "themeId":Ljava/lang/String;
    :cond_7
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 93
    .local v3, "replacing":Z
    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "A140"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXTRA_REPLACING replacing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 97
    if-eqz v3, :cond_8

    .line 98
    invoke-static {v2}, Lcom/smartisanos/launcher/LauncherModel;->updateAppPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_8
    invoke-static {p1, v2}, Lcom/smartisanos/launcher/LauncherModel;->insertPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_9
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 104
    invoke-static {v2}, Lcom/smartisanos/launcher/LauncherModel;->updateAppPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_a
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    if-nez v3, :cond_1

    .line 107
    invoke-static {v2}, Lcom/smartisanos/launcher/LauncherModel;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "replacing":Z
    :cond_b
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 113
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/actions/ShortcutAction;->handleInstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 114
    :cond_c
    const-string v6, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 115
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/actions/ShortcutAction;->handleUninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    :cond_d
    const-string v6, "com.smartisanos.launcher.update_icon"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 117
    invoke-static {p2}, Lcom/smartisanos/launcher/LauncherModel;->handleOnUpdateIcon(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 118
    :cond_e
    const-string v6, "com.smartisanos.launcher.SORT_ICON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    const-string v6, "com.smartisanos.COLOR_THEME_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 120
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->handleChangeTheme(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    :cond_f
    const-string v6, "com.smartisan.push.MESSAGE_RECEIVE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 122
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->handleMsg(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :cond_10
    const-string v6, "com.android.providers.downloads.ACTION_SYNC_DATA_FINISH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 125
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 126
    :cond_11
    const-string v6, "com.smartisanos.weather.data.update"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 127
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/WeatherView;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 128
    :cond_12
    const-string v6, "smartisan.alarm.upload.tracker"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    sget-object v6, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "LauncherReceiver UPLOAD_TRACKER"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/smartisanos/home/tracker/LauncherAgent;->flush()V

    goto/16 :goto_0
.end method
