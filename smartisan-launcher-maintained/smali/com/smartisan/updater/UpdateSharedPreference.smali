.class Lcom/smartisan/updater/UpdateSharedPreference;
.super Ljava/lang/Object;
.source "UpdateSharedPreference.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;
    }
.end annotation


.field private static final KEY_CHECK_VERSION:Ljava/lang/String; = "check_version"

.field private static final KEY_DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field private static final KEY_NEED_UPDATE:Ljava/lang/String; = "need_update"

.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "show_dialog"

.field private static final KEY_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field private static final PREF_NAME:Ljava/lang/String; = "version_update"

.field private static instance:Lcom/smartisan/updater/UpdateSharedPreference;


.field private mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mOnUpdateChangeListener:Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/updater/UpdateSharedPreference;)Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/UpdateSharedPreference;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mOnUpdateChangeListener:Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/smartisan/updater/UpdateSharedPreference;->instance:Lcom/smartisan/updater/UpdateSharedPreference;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/smartisan/updater/UpdateSharedPreference;

    invoke-direct {v0}, Lcom/smartisan/updater/UpdateSharedPreference;-><init>()V

    sput-object v0, Lcom/smartisan/updater/UpdateSharedPreference;->instance:Lcom/smartisan/updater/UpdateSharedPreference;

    .line 40
    sget-object v0, Lcom/smartisan/updater/UpdateSharedPreference;->instance:Lcom/smartisan/updater/UpdateSharedPreference;

    invoke-direct {v0, p0}, Lcom/smartisan/updater/UpdateSharedPreference;->initSharedPreferences(Landroid/content/Context;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/smartisan/updater/UpdateSharedPreference;->instance:Lcom/smartisan/updater/UpdateSharedPreference;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "version_update"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    new-instance v0, Lcom/smartisan/updater/UpdateSharedPreference$1;

    invoke-direct {v0, p0}, Lcom/smartisan/updater/UpdateSharedPreference$1;-><init>(Lcom/smartisan/updater/UpdateSharedPreference;)V

    iput-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 63
    iget-object v0, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 64
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 65
    return-void
.end method


.method public getCheckTime()J
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCheckVersion()I
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDownloadId()J
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public needShowDialog()Z
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCheckVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "check_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public setDownloadId(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_id"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method public setOnUpdateChangeListener(Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;)V
    .locals 0
    .param p1, "onUpdateChangeListener"    # Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smartisan/updater/UpdateSharedPreference;->mOnUpdateChangeListener:Lcom/smartisan/updater/UpdateSharedPreference$OnUpdateChangeListener;

    .line 93
    return-void
.end method

.method public showDialog(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/smartisan/updater/UpdateSharedPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method
