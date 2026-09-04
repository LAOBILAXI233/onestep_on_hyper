.class public Lcom/smartisan/moreapps/SmartisanAppPref;
.super Ljava/lang/Object;
.source "SmartisanAppPref.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/moreapps/SmartisanAppPref$OnUpdateChangeListener;
    }
.end annotation


.field private static final APP_LIST_CHECK_TIME_KEY:Ljava/lang/String; = "app_list_check_time"

.field private static final APP_LIST_UPDATE_FLAG:Ljava/lang/String; = "app_list_need_update"

.field private static final APP_LIST_VERSION_KEY:Ljava/lang/String; = "app_list_verion"

.field public static final PREF_NAME:Ljava/lang/String; = "smartisan_apps"

.field private static instance:Lcom/smartisan/moreapps/SmartisanAppPref;


.field private mSharedPreferences:Landroid/content/SharedPreferences;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/smartisan/moreapps/SmartisanAppPref;->instance:Lcom/smartisan/moreapps/SmartisanAppPref;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/smartisan/moreapps/SmartisanAppPref;

    invoke-direct {v0}, Lcom/smartisan/moreapps/SmartisanAppPref;-><init>()V

    sput-object v0, Lcom/smartisan/moreapps/SmartisanAppPref;->instance:Lcom/smartisan/moreapps/SmartisanAppPref;

    .line 32
    sget-object v0, Lcom/smartisan/moreapps/SmartisanAppPref;->instance:Lcom/smartisan/moreapps/SmartisanAppPref;

    invoke-direct {v0, p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->initSharedPreferences(Landroid/content/Context;)V

    .line 34
    :cond_0
    sget-object v0, Lcom/smartisan/moreapps/SmartisanAppPref;->instance:Lcom/smartisan/moreapps/SmartisanAppPref;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisan/moreapps/SmartisanAppPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "smartisan_apps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/moreapps/SmartisanAppPref;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method


.method public getAppListVersion()I
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_list_verion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDownloadId(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListCheckTime()J
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_list_check_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateFlag()Z
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_list_need_update"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppListVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_list_verion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public setDownloadId(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public setListCheckTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_list_check_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public setUpdateFlag(Z)V
    .locals 2
    .param p1, "update"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_list_need_update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method
