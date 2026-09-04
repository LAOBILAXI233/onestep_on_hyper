.class public Lcom/smartisanos/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mSelf:Lcom/smartisanos/launcher/LauncherApplication;


.field private proxy:Lcom/smartisanos/launcher/ApplicationProxy;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/smartisanos/launcher/LauncherApplication;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/LauncherApplication;
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->mSelf:Lcom/smartisanos/launcher/LauncherApplication;

    if-nez v0, :cond_0

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "LauncherApplication getInstance() is null !!!"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->mSelf:Lcom/smartisanos/launcher/LauncherApplication;

    return-object v0
.end method

.method private initLauncherAgent(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/smartisanos/home/tracker/LauncherAgent;->init(Landroid/app/Application;)V

    .line 79
    invoke-static {p1}, Lcom/smartisanos/home/tracker/LauncherAgent;->reportNewUser(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/smartisanos/home/tracker/LauncherAgent;->onLaunch()V

    .line 82
    invoke-static {p1}, Lcom/smartisanos/home/tracker/LauncherAgent;->setAlarmToUploadTracker(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private initService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v0, "predefined_category"

    invoke-static {v0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "initService ==> INIT_CATEGORY_DATA"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->INIT_CATEGORY_DATA:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    invoke-static {p1, v0}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->send(Landroid/content/Context;Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;)V

    .line 75
    :cond_0
    return-void
.end method


.method public getProxy()Lcom/smartisanos/launcher/ApplicationProxy;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "locale":Ljava/lang/String;
    invoke-static {p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "oldLan":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    sput-boolean v4, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    .line 58
    invoke-static {p0, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setLocaleChangedStatus(Landroid/content/Context;Z)V

    .line 62
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "oldLan":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ApplicationProxy;->setLoading(Z)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "LauncherApplication onCreate !"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    invoke-direct {p0, p0}, Lcom/smartisanos/launcher/LauncherApplication;->initLauncherAgent(Landroid/app/Application;)V

    .line 36
    sput-object p0, Lcom/smartisanos/launcher/LauncherApplication;->mSelf:Lcom/smartisanos/launcher/LauncherApplication;

    .line 37
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ApplicationProxy;->onCreate()V

    .line 39
    invoke-direct {p0, p0}, Lcom/smartisanos/launcher/LauncherApplication;->initService(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 48
    iget-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ApplicationProxy;->onTerminate()V

    .line 49
    return-void
.end method
