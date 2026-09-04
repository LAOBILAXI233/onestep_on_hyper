.class public Lcom/smartisan/trackerlib/utils/SharePreferenceManager;
.super Ljava/lang/Object;
.source "SharePreferenceManager.java"


.field private static final perferencename:Ljava/lang/String; = "com.smartisanos.realtrack"

.field public static sharedPreferences:Lcom/smartisan/trackerlib/utils/SharePreferenceManager;


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/smartisan/trackerlib/utils/SharePreferenceManager;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->sharedPreferences:Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    invoke-direct {v0}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;-><init>()V

    sput-object v0, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->sharedPreferences:Lcom/smartisan/trackerlib/utils/SharePreferenceManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->sharedPreferences:Lcom/smartisan/trackerlib/utils/SharePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "xmlname"    # Ljava/lang/String;
    .param p2, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "com.smartisanos.realtrack"

    .end local p1    # "xmlname":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


.method public clear(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "xmlname"    # Ljava/lang/String;
    .param p2, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public containKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p2, p1}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 47
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "xmlname"    # Ljava/lang/String;
    .param p2, "contextutil"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;
    .param p4, "defaultValue"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "spf":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p4

    .line 38
    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "xmlname"    # Ljava/lang/String;
    .param p4, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p3, p4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
    .param p3, "xmlname"    # Ljava/lang/String;
    .param p4, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p3, p4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "xmlname"    # Ljava/lang/String;
    .param p4, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p3, p4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "xmlname"    # Ljava/lang/String;
    .param p4, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p3, p4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "xmlname"    # Ljava/lang/String;
    .param p4, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p3, p4}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "xmlname"    # Ljava/lang/String;
    .param p3, "contextutil"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p2, p3}, Lcom/smartisan/trackerlib/utils/SharePreferenceManager;->getPreferences(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
