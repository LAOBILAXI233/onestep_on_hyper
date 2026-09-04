.class public final Lcom/smartisan/updater/OsUpdateNotifer;
.super Ljava/lang/Object;
.source "OsUpdateNotifer.java"


.field private static final COMMON_EVT_ID_SHOW_DLG:I = 0x1f40


.field private mDialog:Landroid/app/AlertDialog;

.field private mEvtIdPrefix:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/updater/OsUpdateNotifer;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/updater/OsUpdateNotifer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/smartisan/updater/OsUpdateNotifer;->openUpdateUrl(Landroid/content/Context;)V

    return-void
.end method

.method private createDialog(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 94
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/smartisan/updater/R$string;->os_update_dlg_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/smartisan/updater/R$string;->os_update_dlg_msg:I

    .line 95
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/smartisan/updater/R$string;->os_update_dlg_cancel_btn:I

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/smartisan/updater/R$string;->os_update_dlg_ok_btn:I

    new-instance v3, Lcom/smartisan/updater/OsUpdateNotifer$1;

    invoke-direct {v3, p0, p1}, Lcom/smartisan/updater/OsUpdateNotifer$1;-><init>(Lcom/smartisan/updater/OsUpdateNotifer;Landroid/content/Context;)V

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    .line 103
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 104
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 108
    iget-object v1, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mEvtIdPrefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mEvtIdPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisan/trackerlib/Agent;->onEvent(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/trackerlib/Agent;->flush()V

    .line 113
    :cond_1
    return-void
.end method

.method private getUpdateUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "com.smartisan.reader"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "http://www.smartisan.com/apps/gx.html?utm_source=%E9%94%A4%E5%AD%90%E9%98%85%E8%AF%BB&utm_medium=%E6%9B%B4%E7%BB%86%E6%8F%90%E7%A4%BA%E6%A1%86&utm_campaign=258OS%E5%8D%87%E7%BA%A7"

    .line 135
    :goto_0
    return-object v1

    .line 130
    :cond_0
    const-string v1, "com.smartisanos.bbs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "http://www.smartisan.com/apps/gx.html?utm_source=%E9%94%A4%E5%AD%90%E8%AE%BA%E5%9D%9B&utm_medium=%E6%9B%B4%E7%BB%86%E6%8F%90%E7%A4%BA%E6%A1%86&utm_campaign=258OS%E5%8D%87%E7%BA%A7"

    goto :goto_0

    .line 132
    :cond_1
    const-string v1, "com.smartisanos.drivingmode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string v1, "http://www.smartisan.com/apps/gx.html?utm_source=%E9%94%A4%E5%AD%90%E9%A9%BE%E9%A9%B6&utm_medium=%E6%9B%B4%E7%BB%86%E6%8F%90%E7%A4%BA%E6%A1%86&utm_campaign=258OS%E5%8D%87%E7%BA%A7"

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "http://gx.t.tt"

    goto :goto_0
.end method

.method private initAgent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/smartisan/trackerlib/Agent;->init(Landroid/app/Application;)V

    .line 37
    return-void
.end method

.method private isSmartisanOsNeedUpgrade()Z
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v8, 0x1

    const/4 v13, 0x2

    const/4 v9, 0x0

    .line 49
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v11, "smartisan"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 50
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 51
    .local v5, "prop":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 53
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "build.prop"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    if-eqz v2, :cond_0

    .line 60
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 66
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/Properties;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 67
    const-string v10, "ro.smartisan.version"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "osVersion":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 69
    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "versionCodes":[Ljava/lang/String;
    array-length v10, v7

    new-array v6, v10, [I

    .line 71
    .local v6, "vCode":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_3

    .line 73
    :try_start_3
    aget-object v10, v7, v3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v6, v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 71
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "i":I
    .end local v4    # "osVersion":Ljava/lang/String;
    .end local v6    # "vCode":[I
    .end local v7    # "versionCodes":[Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 65
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 59
    :goto_4
    if-eqz v1, :cond_2

    .line 60
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :cond_2
    :goto_5
    throw v8

    .line 62
    :catch_3
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "osVersion":Ljava/lang/String;
    .restart local v6    # "vCode":[I
    .restart local v7    # "versionCodes":[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    aget v10, v6, v9

    if-gt v10, v13, :cond_5

    aget v10, v6, v9

    if-ne v10, v13, :cond_4

    aget v10, v6, v8

    if-gt v10, v14, :cond_5

    :cond_4
    array-length v10, v6

    const/4 v11, 0x3

    if-lt v10, v11, :cond_6

    aget v10, v6, v9

    if-ne v10, v13, :cond_6

    aget v10, v6, v8

    if-ne v10, v14, :cond_6

    aget v10, v6, v13

    const/16 v11, 0x8

    if-lt v10, v11, :cond_6

    :cond_5
    move v8, v9

    .line 88
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "i":I
    .end local v4    # "osVersion":Ljava/lang/String;
    .end local v5    # "prop":Ljava/util/Properties;
    .end local v6    # "vCode":[I
    .end local v7    # "versionCodes":[Ljava/lang/String;
    :cond_6
    :goto_6
    return v8

    :cond_7
    move v8, v9

    goto :goto_6

    .line 58
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "prop":Ljava/util/Properties;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 55
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private openUpdateUrl(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-direct {p0, p1}, Lcom/smartisan/updater/OsUpdateNotifer;->getUpdateUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


.method public notifyIfUpdatable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/smartisan/updater/OsUpdateNotifer;->isSmartisanOsNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisan/updater/UpdateUtils;->getSmartisanAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/updater/OsUpdateNotifer;->mEvtIdPrefix:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/smartisan/updater/OsUpdateNotifer;->initAgent(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/smartisan/updater/OsUpdateNotifer;->createDialog(Landroid/content/Context;)V

    .line 45
    :cond_0
    return-void
.end method
