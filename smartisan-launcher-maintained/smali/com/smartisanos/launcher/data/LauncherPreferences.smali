.class public Lcom/smartisanos/launcher/data/LauncherPreferences;
.super Ljava/lang/Object;
.source "LauncherPreferences.java"


.field public static final LAUNCHER_THEME:Ljava/lang/String; = "launcher_theme"

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final PREFS_KEY_BASE_MODE_SCALE:Ljava/lang/String; = "prefs_key_base_mode_scale"

.field private static final PREFS_KEY_COLOR_ALGORITHM_VERSION:Ljava/lang/String; = "prefs_key_color_algorithm_version"

.field public static final PREFS_KEY_COLUMN_COMPLEX:Ljava/lang/String; = "prefs_key_column_complex"

.field public static final PREFS_KEY_COLUMN_SIMPLE:Ljava/lang/String; = "prefs_key_column_simple"

.field private static final PREFS_KEY_EXCEPTION_COUNT:Ljava/lang/String; = "prefs_key_exception_count"

.field private static final PREFS_KEY_EXCEPTION_TIME:Ljava/lang/String; = "prefs_key_exception_time"

.field public static final PREFS_KEY_FIRST_ENTER:Ljava/lang/String; = "prefs_key_first_enter"

.field private static final PREFS_KEY_IS_FIRST_TIME_USE_MENU_KEY_SWITCH_PAGE_MODE:Ljava/lang/String; = "prefs_key_is_first_time_use_menu_key_switch_page_mode"

.field private static final PREFS_KEY_LAUNCHER_BASE_MODE:Ljava/lang/String; = "prefs_key_launcher_mode"

.field public static final PREFS_KEY_LOCALE:Ljava/lang/String; = "prefs_key_locale"

.field public static final PREFS_KEY_LOCALE_CHANGED:Ljava/lang/String; = "prefs_key_locale_changed"

.field public static final PREFS_KEY_LOCK_PASSWORD:Ljava/lang/String; = "prefs_key_lock_password"

.field public static final PREFS_KEY_ROW_COMPLEX:Ljava/lang/String; = "prefs_key_row_complex"

.field public static final PREFS_KEY_ROW_SIMPLE:Ljava/lang/String; = "prefs_key_row_simple"

.field private static final PREFS_KEY_SYSTEM_UPDATE_TIME:Ljava/lang/String; = "prefs_key_system_update_time"

.field private static final PREFS_KEY_TRANSITION_ANIM_SCALE:Ljava/lang/String; = "prefs_key_transition_animation_scale"

.field public static final PREFS_KEY_WEATHER_DATA:Ljava/lang/String; = "prefs_key_user_experience_plan_state"

.field private static final PREFS_KEY_WINDOW_ANIM_SCALE:Ljava/lang/String; = "prefs_key_window_animation_scale"

.field public static final PREFS_NAME:Ljava/lang/String; = "com.smartisanos.launcher_prefs"

.field private static final SORT_BUBBLE_DISPLAY_TIMES:Ljava/lang/String; = "prefs_key_sort_bubble_display_times"

.field public static final TRANSITION_ANIM_SCALE:I = 0x1

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final WINDOW_ANIM_SCALE:I

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mInstance:Lcom/smartisanos/launcher/data/LauncherPreferences;

.field private static mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/smartisanos/launcher/data/LauncherPreferences;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->log:Lcom/smartisanos/launcher/LOG;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/data/LauncherPreferences;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/LauncherPreferences;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mInstance:Lcom/smartisanos/launcher/data/LauncherPreferences;

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherSettings;->getInstance()Lcom/smartisanos/launcher/data/LauncherSettings;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "LauncherPreferences create !"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static clearFirstEnter(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 114
    const-string v1, "com.smartisanos.launcher_prefs"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_first_enter"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method public static enableSweepMessageFlag()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->enableSweepMessageFlag()Z

    move-result v0

    return v0
.end method

.method public static getColorAlgorithmVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prefs_key_color_algorithm_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnableSweepMessageFlagFromSystem(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getEnableSweepMessageFlagFromSystem(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getFirstTimeToUseMenuKeySwitchPageModeResult(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prefs_key_is_first_time_use_menu_key_switch_page_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHideAppTitleFromSystem(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getHideAppTitleFromSystem(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getHideMessageFlagFromSystem(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getHideMessageFlagFromSystem(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mInstance:Lcom/smartisanos/launcher/data/LauncherPreferences;

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 247
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prefs_key_locale"

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocaleChangedStatus(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string v2, "com.smartisanos.launcher_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "prefs_key_locale_changed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    .local v1, "status":Z
    return v1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static getSystemUpdateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prefs_key_system_update_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isFirstEnter(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prefs_key_first_enter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isHideAppTitle()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->isHideAppTitle()Z

    move-result v0

    return v0
.end method

.method public static isHideMessageFlag()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->isHideMessageFlag()Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    return-void
.end method

.method public static putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 210
    return-void
.end method

.method public static setBaseModeToSharedPreferences(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 252
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "launcher_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public static setColorAlgorithmVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_color_algorithm_version"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public static setFirstTimeToUseMenuKeySwitchPageModeResult(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 242
    const-string v1, "com.smartisanos.launcher_prefs"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_is_first_time_use_menu_key_switch_page_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/data/LauncherPreferences;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLanguage to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_locale"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public static setLocaleChangedStatus(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "changed"    # Z

    .prologue
    .line 102
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_locale_changed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public static setSystemUpdateTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_system_update_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method


.method public getAnimationScale(Landroid/content/Context;I)F
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 178
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return v1

    .line 181
    :cond_0
    const-string v2, "com.smartisanos.launcher_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    const-string v2, "prefs_key_window_animation_scale"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v2, "prefs_key_transition_animation_scale"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getComplexMode()I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getComplexMode()I

    move-result v0

    return v0
.end method

.method public getCurrentBaseMode()I
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getBaseMode()I

    move-result v0

    return v0
.end method

.method public getOldBaseMode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v3, "com.smartisanos.launcher_prefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "prefs_key_launcher_mode"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .local v2, "savedBaseMode":I
    const/4 v0, -0x1

    .line 132
    .local v0, "baseMode":I
    sparse-switch v2, :sswitch_data_0

    .line 141
    :goto_0
    return v0

    .line 135
    :sswitch_0
    const/4 v0, 0x1

    .line 136
    goto :goto_0

    .line 138
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherPreferences;->mSettings:Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/data/LauncherSettings;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public saveBaseMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseMode"    # I

    .prologue
    .line 146
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 147
    const/16 v0, 0x10

    .line 151
    .local v0, "mode":I
    :goto_0
    const-string v2, "com.smartisanos.launcher_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prefs_key_launcher_mode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void

    .line 149
    .end local v0    # "mode":I
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/16 v0, 0x9

    .restart local v0    # "mode":I
    goto :goto_0
.end method

.method public setAnimationScale(Landroid/content/Context;IF)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return v1

    .line 163
    :cond_0
    const-string v2, "com.smartisanos.launcher_prefs"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_window_animation_scale"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_transition_animation_scale"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
