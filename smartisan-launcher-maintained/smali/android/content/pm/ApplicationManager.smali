.class public Landroid/content/pm/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ApplicationManager$PackageDeleteObserver;
    }
.end annotation


.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final UNINSTALL_COMPLETE:I = 0x2

.field private static log:Lcom/smartisanos/launcher/LOG;


.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUninstallmethod:Ljava/lang/reflect/Method;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Landroid/content/pm/ApplicationManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;-><init>(Landroid/content/pm/ApplicationManager;)V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 33
    iput-object p2, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Landroid/content/pm/ApplicationManager;->initUninstallMethod()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ApplicationManager;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/pm/ApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/content/pm/ApplicationManager;->sendResultMessage(ILjava/lang/String;)V

    return-void
.end method

.method private initUninstallMethod()V
    .locals 5

    .prologue
    .line 39
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 45
    .local v2, "uninstalltypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deletePackage"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "es":Ljava/lang/SecurityException;
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v1    # "es":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "en":Ljava/lang/NoSuchMethodException;
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResultMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "returnCode"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v1, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 117
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method


.method public enableApplication(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v2, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "name":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable setupWizard fail, exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unInstallPackage(Ljava/lang/String;)V
    .locals 9
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 55
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    sget-object v4, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "name":Landroid/content/ComponentName;
    :goto_1
    invoke-direct {p0, v6, p1}, Landroid/content/pm/ApplicationManager;->sendResultMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ie":Ljava/lang/IllegalArgumentException;
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable setupWizard fail, exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    .end local v1    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v3, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    .line 70
    iget-object v4, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/ApplicationManager$PackageDeleteObserver;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 72
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_2
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 86
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    sget-object v3, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "UninstallMethod is null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
