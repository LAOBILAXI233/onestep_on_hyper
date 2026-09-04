.class public Lcom/smartisanos/launcher/actions/ColorThemeChanged;
.super Ljava/lang/Object;
.source "ColorThemeChanged.java"


.field public static changeThemeMessage:Landroid/os/Message;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/smartisanos/launcher/actions/ColorThemeChanged;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeWhenChangePhoneBackColor(Lcom/smartisanos/launcher/theme/Theme;)V

    return-void
.end method

.method private static changeThemeWhenChangePhoneBackColor(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 4
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 226
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    .line 227
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/smartisanos/launcher/actions/ColorThemeChanged$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/actions/ColorThemeChanged$3;-><init>(Lcom/smartisanos/launcher/theme/Theme;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method public static handleChangeTheme(Landroid/content/Intent;)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x11

    const/4 v10, -0x1

    .line 43
    if-nez p0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v9, "color"

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "color":I
    if-ne v0, v10, :cond_1

    .line 48
    sget-object v9, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "handleChangeTheme color is -1"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeIdByColor(I)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "themeId":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 53
    sget-object v9, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t find theme by color ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 57
    .local v1, "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v1, :cond_3

    .line 58
    sget-object v9, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "currentTheme is null"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v9, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    sget-object v9, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current theme is same ! ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    if-nez v9, :cond_5

    .line 66
    sget-object v9, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "launcher is null !!"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_5
    invoke-static {v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    .line 70
    .local v7, "targetTheme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v7, :cond_6

    .line 71
    iget-object v5, v7, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 72
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 73
    const/4 v4, 0x0

    .line 75
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 76
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 78
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-nez v4, :cond_6

    .line 80
    invoke-static {v7}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->showThemeItemActivity(Lcom/smartisanos/launcher/theme/Theme;)V

    goto/16 :goto_0

    .line 86
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    .line 88
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    invoke-virtual {v2, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 90
    .local v3, "msg":Landroid/os/Message;
    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 77
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private static handleChangeThemeBegin(Ljava/lang/String;)V
    .locals 7
    .param p0, "themeId"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "targetTheme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 156
    .local v2, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v2, :cond_0

    .line 157
    iget-object v5, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    move-object v1, v2

    .line 163
    .end local v2    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_1
    if-nez v1, :cond_2

    .line 164
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleChangeTheme error, can\'t find theme by id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_2
    move-object v2, v1

    .line 168
    .restart local v2    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "isChangeThemeAnimating return !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 174
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/theme/ThemeManager;->storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, "store":Z
    if-nez v0, :cond_4

    .line 177
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "Store new theme to current failed"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->PHONE_BACK_COLOR:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->requireChangeThemeAnim(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 181
    const-string v4, "launcher_theme"

    iget-object v5, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V

    .line 183
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/smartisanos/launcher/actions/ColorThemeChanged$1;

    invoke-direct {v5}, Lcom/smartisanos/launcher/actions/ColorThemeChanged$1;-><init>()V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    invoke-static {v2}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->prepareAndStartChangeTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    goto :goto_0
.end method

.method public static handleMessageForChangeTheme(Landroid/os/Message;)V
    .locals 5
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    const/4 v1, 0x0

    sput-object v1, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    .line 144
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "themeId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handleChangeTheme error for themeId is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_CHANGE_THEME begin ! to theme ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->handleChangeThemeBegin(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static handleMessageForColorThemeChanged(Landroid/os/Message;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "MESSAGE_COLOR_THEME_CHANGED begin !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "targetThemeId":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 117
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "targetThemeId is null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v1

    .line 121
    .local v1, "handler":Landroid/os/Handler;
    const/4 v4, 0x0

    sput-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    .line 122
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    if-nez v4, :cond_2

    .line 123
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 124
    .local v2, "message":Landroid/os/Message;
    const/16 v4, 0x12

    iput v4, v2, Landroid/os/Message;->what:I

    .line 125
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    sput-object v2, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    .line 129
    .end local v2    # "message":Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getEditPageTitleDialog()Lcom/smartisanos/launcher/view/EditTitleDialog;

    move-result-object v0

    .line 130
    .local v0, "dialog":Lcom/smartisanos/launcher/view/EditTitleDialog;
    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/EditTitleDialog;->dismiss()V

    .line 133
    :cond_3
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->isHome(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/home/Launcher;->toHome(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static prepareAndStartChangeTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 4
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    sget-object v1, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "theme is null, so return"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 199
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->prepareChangeThemeCover(Landroid/graphics/Bitmap;)V

    .line 200
    new-instance v0, Lcom/smartisanos/launcher/actions/ColorThemeChanged$2;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/actions/ColorThemeChanged$2;-><init>(ILcom/smartisanos/launcher/theme/Theme;)V

    .line 221
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 222
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0
.end method

.method private static showThemeItemActivity(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 4
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const-class v3, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, "themeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const v0, 0x10028000

    .line 100
    .local v0, "flags":I
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    const-string v2, "extra_theme_package"

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "extra_component_id"

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "extra_theme_name"

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/LauncherApplication;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
