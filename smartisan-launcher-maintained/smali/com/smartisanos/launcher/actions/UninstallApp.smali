.class public Lcom/smartisanos/launcher/actions/UninstallApp;
.super Ljava/lang/Object;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    }
.end annotation


.field public static final REMOVE_MULTI_APPS:I = 0x2

.field public static final REMOVE_SINGLE_APP:I = 0x1

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static mCancelUninstallWithoutAnimRun:Z

.field public static mUninstallDialog:Landroid/app/AlertDialog;

.field private static volatile uninstallAppRunning:Z


.field private uninstallApp:Lcom/smartisanos/launcher/view/Cell;

.field private uninstallApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    .line 45
    sput-boolean v1, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    .line 155
    sput-boolean v1, Lcom/smartisanos/launcher/actions/UninstallApp;->mCancelUninstallWithoutAnimRun:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallApp:Lcom/smartisanos/launcher/view/Cell;

    .line 43
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallApps:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/actions/UninstallApp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/actions/UninstallApp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/UninstallApp;->cancelAction(I)V

    return-void
.end method

.method private cancelAction(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 412
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAction begin !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    if-eqz v1, :cond_1

    .line 416
    sget-object v1, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "cancelAction return by uninstallAppRunning is true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 419
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "NegativeButton click"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    .line 421
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/UninstallApp;->createCancelActionEvent(I)Lcom/smartisanos/smengine/Event;

    move-result-object v0

    .line 422
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto :goto_0
.end method

.method public static cancelUninstallWithoutAnim()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 159
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "cancelUninstallWithoutAnim nothing to do by mUninstallDialog is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mCancelUninstallWithoutAnimRun:Z

    .line 163
    new-instance v0, Lcom/smartisanos/launcher/actions/UninstallApp$2;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/actions/UninstallApp$2;-><init>(I)V

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/UninstallApp$2;->send(F)V

    goto :goto_0
.end method

.method public static handleInternalMessage(Landroid/os/Message;)V
    .locals 11
    .param p0, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    .line 322
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "handleInternalMessage begin !"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v5, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 324
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 325
    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "handleInternalMessage pkg is null"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleInternalMessage ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 329
    :cond_3
    iget v7, p0, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    .line 378
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown message type when handle uninstall message ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 331
    :pswitch_1
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplicationManager.DELETE_SUCCEEDED ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :pswitch_2
    const/4 v2, 0x0

    .line 338
    .local v2, "needRetrieve":Z
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 339
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 340
    .local v3, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 341
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 342
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_4

    .line 345
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 346
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 348
    const/4 v2, 0x1

    .line 357
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 358
    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uninstall failed DELETE_FAILED_INTERNAL_ERROR ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], add app to launcher !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/smartisanos/launcher/LauncherModel;->insertPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    :goto_2
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uninstall app error, handleInternalMessage ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uninstall app ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] failed, app is not exist, so just remove app info from launcher !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uninstall failed DELETE_FAILED_INTERNAL_ERROR ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], but can\'t query it from pms !"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v5}, Lcom/smartisanos/launcher/LauncherModel;->removePackage(Ljava/lang/String;)V

    goto :goto_2

    .line 368
    .end local v2    # "needRetrieve":Z
    :pswitch_3
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DELETE_FAILED_DEVICE_POLICY_MANAGER !!! ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 370
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_user_app_fail:I

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 371
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isUninstallAppRunning()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppRunning:Z

    return v0
.end method

.method public static sendWaitingUninstallAppBackNoAnim()V
    .locals 21

    .prologue
    .line 53
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 54
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v16

    .line 55
    .local v16, "trash":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 56
    .local v5, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellAnimation()Lcom/smartisanos/launcher/animations/CellAnimation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/animations/CellAnimation;->emergencyBrakeWhenCellIsRock()V

    .line 61
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "back to parent view begin !"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v17

    if-nez v17, :cond_6

    .line 64
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 65
    .local v10, "target":Lcom/smartisanos/smengine/SceneNode;
    if-nez v10, :cond_2

    .line 66
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 68
    :cond_2
    instance-of v0, v10, Lcom/smartisanos/launcher/view/Page;

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 69
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "ERROR,target is not page,dock cell back to unknown Parent!!!!!!!!!!!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_3
    move-object v12, v10

    .line 71
    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 73
    .local v12, "targetPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v13

    .line 74
    .local v13, "targetRowIndex":I
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 77
    .local v11, "targetColIndex":I
    invoke-virtual {v5, v13, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 78
    const v17, 0x3e99999a    # 0.3f

    move/from16 v0, v17

    invoke-virtual {v5, v12, v0}, Lcom/smartisanos/launcher/view/Cell;->cellUpReturnToPage(Lcom/smartisanos/launcher/view/Page;F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v9

    .line 79
    .local v9, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 80
    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 82
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 112
    .end local v9    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v10    # "target":Lcom/smartisanos/smengine/SceneNode;
    .end local v11    # "targetColIndex":I
    .end local v12    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    .end local v13    # "targetRowIndex":I
    :cond_4
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v8, "params":Ljava/util/ArrayList;
    new-instance v14, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 114
    .local v14, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e99999a    # 0.3f

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 117
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e99999a    # 0.3f

    .line 118
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 119
    sget-object v17, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v18, 0x3e99999a    # 0.3f

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 120
    sget-object v17, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v18, 0x3e99999a    # 0.3f

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 121
    new-instance v17, Lcom/smartisanos/launcher/actions/UninstallApp$1;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/smartisanos/launcher/actions/UninstallApp$1;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 140
    invoke-virtual {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 141
    invoke-virtual {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 142
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 144
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v17

    const v18, 0x3e99999a    # 0.3f

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v9

    .line 145
    .restart local v9    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v9, :cond_5

    .line 146
    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 147
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/AnimationController;->forceFinishScrollTo()V

    .line 149
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 150
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 151
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 152
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v17

    const/16 v18, 0x40

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    goto/16 :goto_0

    .line 85
    .end local v8    # "params":Ljava/util/ArrayList;
    .end local v9    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v14    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v7, "parameters":Ljava/util/ArrayList;
    new-instance v14, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 87
    .restart local v14    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v15, 0x0

    .line 90
    .local v15, "toLoc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 91
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    const/16 v18, 0x0

    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 93
    .local v6, "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    array-length v0, v6

    move/from16 v17, v0

    if-lez v17, :cond_7

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v17

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 94
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v17

    aget-object v15, v6, v17

    .line 96
    :cond_7
    iget v0, v15, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v17, v0

    iget v0, v15, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    iget v0, v15, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 97
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v4

    .line 98
    .local v4, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v4}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v17, v0

    invoke-virtual {v4}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v18, v0

    invoke-virtual {v4}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v19, v0

    invoke-virtual {v4}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 99
    sget-boolean v17, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v17, :cond_8

    sget v17, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v18, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 100
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 102
    :cond_8
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 103
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e99999a    # 0.3f

    .line 104
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 105
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e99999a    # 0.3f

    .line 106
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 107
    invoke-virtual {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 108
    invoke-virtual {v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 109
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "sendWaitingUninstallAppBackNoAnim timeLine.forceFinish begin !"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static setDialogCloseable(Z)V
    .locals 4
    .param p0, "isNotClose"    # Z

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    sget-object v2, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mShowing"

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 440
    :goto_0
    if-eqz v1, :cond_0

    .line 441
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 443
    :try_start_1
    sget-object v2, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 449
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 451
    :cond_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 446
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


.method public createCancelActionEvent(I)Lcom/smartisanos/smengine/Event;
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/16 v3, 0x64

    .line 179
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 180
    new-instance v0, Lcom/smartisanos/launcher/actions/UninstallApp$3;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/actions/UninstallApp$3;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp;I)V

    .line 317
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v1, Lcom/smartisanos/launcher/actions/UninstallApp$4;

    invoke-direct {v1, p0, v3}, Lcom/smartisanos/launcher/actions/UninstallApp$4;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp;I)V

    .local v1, "event":Lcom/smartisanos/smengine/Event;
    move-object v0, v1

    .line 317
    goto :goto_0
.end method

.method public uninstallAppOrShortcut(Lcom/smartisanos/launcher/view/Cell;F)V
    .locals 9
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "time"    # F

    .prologue
    const/4 v8, 0x0

    .line 384
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 385
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "uninstallAppOrShortcut return by illegal cell !"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallApp:Lcom/smartisanos/launcher/view/Cell;

    .line 397
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 398
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 399
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getCellAnimation()Lcom/smartisanos/launcher/animations/CellAnimation;

    move-result-object v0

    .line 400
    .local v0, "animation":Lcom/smartisanos/launcher/animations/CellAnimation;
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getCellAnimation()Lcom/smartisanos/launcher/animations/CellAnimation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/animations/CellAnimation;->setIsCancelAction(Z)V

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "params":Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v3, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->MOVE_TO_TRASH:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    invoke-virtual {v0, v3, p2, v1}, Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 404
    new-instance v2, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 405
    .local v2, "thread":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/actions/UninstallApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "lock touch & hard key by uninstallAppOrShortcut !"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 407
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 408
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    goto :goto_0
.end method

.method public uninstallMultiApps(Ljava/util/List;Ljava/util/List;Lcom/smartisanos/launcher/view/MultiSelectNode;F)V
    .locals 27
    .param p3, "multiSelectNode"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p4, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/launcher/view/MultiSelectNode;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, "commonAppCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p2, "systemAppCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallApps:Ljava/util/List;

    .line 713
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v25

    .line 714
    .local v25, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    sget-object v4, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 715
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_3

    .line 716
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 722
    :cond_2
    :goto_1
    new-instance v16, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 723
    .local v16, "moveToTrashTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v26, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v26 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 724
    .local v26, "trash_world_loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/TrashView;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 725
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v0, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    move/from16 v24, v0

    .line 726
    .local v24, "trashHeight":F
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 728
    .local v3, "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p3 .. p3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 730
    .local v11, "from":Lcom/smartisanos/smengine/math/Vector3f;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    iget v13, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    .line 732
    .local v13, "iconHeight":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v20

    .line 733
    .local v20, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v22

    .line 734
    .local v22, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v17, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 735
    .local v17, "result":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 737
    new-instance v23, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v17

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v24, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v13, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 739
    .local v23, "to":Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 740
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 741
    const/4 v4, 0x0

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v23

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v23

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v23

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 742
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 743
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 745
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v15, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    .line 747
    .local v18, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_4

    .line 748
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v14

    .line 749
    .local v14, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 718
    .end local v3    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "i":I
    .end local v13    # "iconHeight":F
    .end local v14    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v15    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v16    # "moveToTrashTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v17    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "size":I
    .end local v20    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v22    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v23    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v24    # "trashHeight":F
    .end local v26    # "trash_world_loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    sget-object v4, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FLOAT_UP:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    move-object/from16 v0, v25

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    .line 719
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto/16 :goto_1

    .line 751
    .restart local v3    # "trash_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .restart local v11    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v12    # "i":I
    .restart local v13    # "iconHeight":F
    .restart local v15    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v16    # "moveToTrashTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .restart local v17    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v18    # "size":I
    .restart local v20    # "t":Lcom/smartisanos/smengine/math/Transform;
    .restart local v22    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .restart local v23    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v24    # "trashHeight":F
    .restart local v26    # "trash_world_loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    if-nez p2, :cond_5

    const/16 v19, 0x0

    .line 752
    .local v19, "systemAppCount":I
    :goto_3
    new-instance v21, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp;Ljava/util/List;I)V

    .line 755
    .local v21, "thread":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 756
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 757
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    goto/16 :goto_0

    .line 751
    .end local v19    # "systemAppCount":I
    .end local v21    # "thread":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    goto :goto_3
.end method
