.class public Lcom/smartisanos/launcher/LauncherTracker;
.super Ljava/lang/Object;
.source "LauncherTracker.java"


.field public static final EVENT_CLEAR_BADGE:Ljava/lang/String; = "event_clear_badge"

.field private static final EVENT_GO_TO_EDIT_MODLE:Ljava/lang/String; = "event_go_to_edit_model"

.field public static final EVENT_MENU_TO_MULTIMODE:Ljava/lang/String; = "event_menu_to_multimode"

.field public static final EVENT_SLIDE_TO_MULTIMODE:Ljava/lang/String; = "event_slide_to_multimode"

.field public static final EVENT_SORT_BY_CATEGORY:Ljava/lang/String; = "event_sort_by_category"

.field public static final EVENT_SORT_BY_COLOR:Ljava/lang/String; = "event_sort_by_color"

.field public static final EVENT_SORT_BY_TIME:Ljava/lang/String; = "event_sort_by_time"

.field public static final EVENT_SORT_BY_USAGE:Ljava/lang/String; = "event_sort_by_usage"

.field private static final FLUSH_INTERVAL:J = 0x2932e00L

.field private static final HOUR_TO_MILLISECONDS_:J = 0x36ee80L

.field public static final LAUNCH_TYPE_16_64:Ljava/lang/String; = "16-64"

.field public static final LAUNCH_TYPE_9_36:Ljava/lang/String; = "9-36"

.field public static final LAUNCH_TYPE_9_81:Ljava/lang/String; = "9-81"

.field private static final STATUS_LAUNCHER_GRID_TYPE:Ljava/lang/String; = "status_laucher_grid_type"

.field private static final STATUS_PAGE_HIDEN_NUMBER:Ljava/lang/String; = "status_hiden_page_num"

.field private static final STATUS_PAGE_LOCKED_NUMBER:Ljava/lang/String; = "status_locked_page_num"

.field private static final STATUS_PAGE_NUMBER:Ljava/lang/String; = "status_page_number"

.field private static final STATUS_THEME_TYPE:Ljava/lang/String; = "status_theme_type"

.field private static final STATUS_TITLED_PAGE_RATIO:Ljava/lang/String; = "status_titled_page_ratio"

.field private static mTracker:Lcom/smartisanos/launcher/LauncherTracker;


.field private mContext:Landroid/content/Context;

.field private mFirstStart:Z

.field private mLastFlushTime:J

.field private mNeedFlush:Z


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mNeedFlush:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mLastFlushTime:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mFirstStart:Z

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/LauncherTracker;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/smartisanos/launcher/LauncherTracker;->mTracker:Lcom/smartisanos/launcher/LauncherTracker;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/smartisanos/launcher/LauncherTracker;

    invoke-direct {v0}, Lcom/smartisanos/launcher/LauncherTracker;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/LauncherTracker;->mTracker:Lcom/smartisanos/launcher/LauncherTracker;

    .line 60
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/LauncherTracker;->mTracker:Lcom/smartisanos/launcher/LauncherTracker;

    return-object v0
.end method

.method private static getJSONData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 310
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 317
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getJSONData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 305
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLauncherPreStatus_INT(Ljava/lang/String;)I
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/smartisanos/launcher/LauncherTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.smartisanos.launcher_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getLauncherPreStatus_STRING(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/smartisanos/launcher/LauncherTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.smartisanos.launcher_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 293
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method private onEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 89
    return-void
.end method

.method private onHidenPageNumberTypeStatusChanged(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 205
    const-string v0, "status_hiden_page_num"

    const/4 v1, 0x0

    const-string v2, "number"

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/LauncherTracker;->getJSONData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/LauncherTracker;->onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mNeedFlush:Z

    .line 207
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 208
    return-void
.end method

.method private onLockedPageNumberTypeStatusChanged(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 195
    const-string v0, "status_locked_page_num"

    const/4 v1, 0x0

    const-string v2, "number"

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/LauncherTracker;->getJSONData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/LauncherTracker;->onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mNeedFlush:Z

    .line 197
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 198
    return-void
.end method

.method private onPageNumberStatusChanged(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 185
    const-string v0, "status_page_number"

    const/4 v1, 0x0

    const-string v2, "number"

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/LauncherTracker;->getJSONData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/LauncherTracker;->onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mNeedFlush:Z

    .line 187
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 188
    return-void
.end method

.method private onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "subTag"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method private onTitledPageRatioChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "ratio"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "status_titled_page_ratio"

    const/4 v1, 0x0

    const-string v2, "ratio"

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/LauncherTracker;->getJSONData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/LauncherTracker;->onStatusDataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mNeedFlush:Z

    .line 215
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 216
    return-void
.end method

.method private setLauncherPreStatus_INT(Ljava/lang/String;I)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/smartisanos/launcher/LauncherTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.smartisanos.launcher_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method private setLauncherPreStatus_STRING(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/smartisanos/launcher/LauncherTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.smartisanos.launcher_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method


.method public flush()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public flushAllStatus()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public flushAllStatusWhenAppStart()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/LauncherTracker;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public onEventClearBadge()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "event_clear_badge"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/LauncherTracker;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 239
    return-void
.end method

.method public onEventClickEditButton()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "event_go_to_edit_model"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/LauncherTracker;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 103
    return-void
.end method

.method public onEventClickSort(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/LauncherTracker;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 224
    return-void
.end method

.method public onEventMenuToMultimode()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "event_menu_to_multimode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/LauncherTracker;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 234
    return-void
.end method

.method public onEventSlideToMultimode()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "event_slide_to_multimode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/LauncherTracker;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/smartisanos/launcher/LauncherTracker;->flush()V

    .line 229
    return-void
.end method

.method public onLaunchGridTypeStatusChanged(Z)V
    .locals 0
    .param p1, "flush"    # Z

    .prologue
    .line 129
    return-void
.end method

.method public onPageStatusChanged(Z)V
    .locals 0
    .param p1, "flush"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public onThemeTypeStatusChanged(Z)V
    .locals 0
    .param p1, "flush"    # Z

    .prologue
    .line 145
    return-void
.end method
