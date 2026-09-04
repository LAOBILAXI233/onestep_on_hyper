.class public Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"


.field public static volatile THEME_CHANGING:Z

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->THEME_CHANGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fingerSlide(Z)V
    .locals 4
    .param p0, "direction"    # Z

    .prologue
    .line 40
    sget-boolean v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->THEME_CHANGING:Z

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by THEME_CHANGING true"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->verifyStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide verifyStatus return false"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->THEME_CHANGING:Z

    .line 49
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->fingerSlideImpl(Z)Z

    move-result v0

    .line 50
    .local v0, "readyForChange":Z
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    sput-boolean v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->THEME_CHANGING:Z

    goto :goto_0
.end method

.method private static fingerSlideImpl(Z)Z
    .locals 17
    .param p0, "direction"    # Z

    .prologue
    .line 57
    new-instance v5, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$1;

    invoke-direct {v5}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$1;-><init>()V

    .line 65
    .local v5, "showDialogTask":Ljava/lang/Runnable;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x12c

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$2;

    invoke-direct {v14}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$2;-><init>()V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 73
    .local v11, "themeList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 74
    .local v0, "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .line 75
    .local v6, "size":I
    if-eqz v6, :cond_0

    const/4 v13, 0x1

    if-ne v6, v13, :cond_1

    .line 76
    :cond_0
    sget-object v13, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fingerSlide return by theme count ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v5}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->removeDialogTask(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->showDialogDownloadTheme(Landroid/content/Context;)V

    .line 79
    const/4 v13, 0x0

    .line 140
    :goto_0
    return v13

    .line 81
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 82
    .local v1, "currentThemeId":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, "themeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v12, "themeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/theme/Theme;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/theme/Theme;

    .line 85
    .local v8, "t":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v8, :cond_2

    .line 88
    iget-object v2, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 89
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v12, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    .end local v2    # "id":Ljava/lang/String;
    .end local v8    # "t":Lcom/smartisanos/launcher/theme/Theme;
    :cond_3
    invoke-interface {v10, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 94
    .local v3, "index":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "nextThemeId":Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v3, v13, :cond_4

    .line 97
    if-eqz p0, :cond_6

    .line 99
    add-int/lit8 v13, v3, 0x1

    if-lt v13, v6, :cond_5

    .line 101
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextThemeId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 116
    .restart local v4    # "nextThemeId":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/theme/Theme;

    .line 117
    .local v9, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v9, :cond_8

    .line 118
    invoke-static {v5}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->removeDialogTask(Ljava/lang/Runnable;)V

    .line 119
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "find theme err"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 103
    .end local v9    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_5
    add-int/lit8 v13, v3, 0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextThemeId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "nextThemeId":Ljava/lang/String;
    goto :goto_2

    .line 107
    :cond_6
    add-int/lit8 v13, v3, -0x1

    if-gez v13, :cond_7

    .line 109
    add-int/lit8 v13, v6, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextThemeId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "nextThemeId":Ljava/lang/String;
    goto :goto_2

    .line 111
    :cond_7
    add-int/lit8 v13, v3, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextThemeId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "nextThemeId":Ljava/lang/String;
    goto :goto_2

    .line 121
    .restart local v9    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/smartisanos/launcher/theme/ThemeManager;->storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 122
    .local v7, "store":Z
    if-nez v7, :cond_9

    .line 124
    sget-object v13, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "Store new theme to current failed"

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 125
    invoke-static {v5}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->removeDialogTask(Ljava/lang/Runnable;)V

    .line 126
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 128
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v14

    if-eqz p0, :cond_a

    sget-object v13, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    :goto_3
    invoke-virtual {v14, v13}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->requireChangeThemeAnim(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 130
    const-string v13, "launcher_theme"

    iget-object v14, v9, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V

    .line 132
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/home/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/launcher/InvisibleApi;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 133
    invoke-static {v9}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->prepareAndStartChangeTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 134
    new-instance v13, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$3;

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$3;-><init>(I)V

    const/4 v14, 0x0

    .line 139
    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$3;->send(F)V

    .line 140
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 128
    :cond_a
    sget-object v13, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    goto :goto_3
.end method

.method private static removeDialogTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 183
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$7;

    invoke-direct {v1}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private static showDialogDownloadTheme(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    new-instance v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "showDialogTask":Ljava/lang/Runnable;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public static switchTheme(Lcom/smartisanos/launcher/theme/Theme;Z)V
    .locals 6
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p1, "direction"    # Z

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$4;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$4;-><init>()V

    .line 155
    .local v0, "showDialogTask":Ljava/lang/Runnable;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$5;

    invoke-direct {v3}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$5;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 163
    .local v1, "store":Z
    if-nez v1, :cond_1

    .line 165
    sget-object v2, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Store new theme to current failed"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->removeDialogTask(Ljava/lang/Runnable;)V

    .line 168
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    if-eqz p1, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->requireChangeThemeAnim(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 170
    const-string v2, "launcher_theme"

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V

    .line 172
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/InvisibleApi;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 173
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->prepareAndStartChangeTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 174
    new-instance v2, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$6;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$6;-><init>(I)V

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$6;->send(F)V

    goto/16 :goto_0

    .line 168
    :cond_2
    sget-object v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    goto :goto_1
.end method

.method private static verifyStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by launcher instance is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-nez v1, :cond_1

    .line 199
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by ENABLE_RECEIVER true"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v1, v2, :cond_2

    .line 203
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by MULTI_PAGE_MODE true"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isRequireChangeThemeAnim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by isRequireChangeThemeAnim true"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    if-nez v1, :cond_4

    .line 211
    sget-object v1, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "fingerSlide return by current theme is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
