.class public Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;
.super Ljava/lang/Object;
.source "ProfileAppSearchHelper.java"


.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private findMatchedActivity(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;
    .locals 4
    .param p2, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/LauncherActivityInfo;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 74
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 77
    :cond_0
    if-eqz p2, :cond_2

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 81
    .local v1, "launcherActivityInfo":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    return-object v1

    .line 87
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "launcherActivityInfo":Landroid/content/pm/LauncherActivityInfo;
    :cond_2
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    return-object v2
.end method

.method private getLauncherApps()Landroid/content/pm/LauncherApps;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method private getProfileActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object v0

    .line 36
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object v0

    .line 44
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private startProfileMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object v0

    .line 52
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method private getShadowDrawable(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 59
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIconDrawables(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 60
    .local v2, "shadowDrawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-object v3, v2, v4

    if-eqz v3, :cond_1

    .line 61
    return-object v3

    .line 63
    :cond_1
    return-object v1

    .line 65
    .end local v1    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shadowDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v0
.end method

.method private newProfileAppSearchBean(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfo;)Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
    .locals 8
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "launcherActivityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 70
    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    .line 71
    .local v7, "component":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "componentName":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0    # "componentName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "componentName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getIconData()[B

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Utils;->addProfileBadgeToIconData([B)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisanos/quicksearchbox/util/Util;->byteToDrawable(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_profile_icon_fallback

    goto :goto_profile_icon_ready

    :cond_profile_icon_fallback
    invoke-direct {p0, p4}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getShadowDrawable(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_profile_icon_ready
    .line 78
    .local v6, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-object v1

    .line 82
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v6    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_1
    return-object v0
.end method


.method public findProfileApps(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/util/List;
    .locals 10
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "profileAppSearchBeans":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;>;"
    if-eqz p1, :cond_4

    .line 88
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 94
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 97
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 98
    .local v5, "profileUser":Landroid/os/UserHandle;
    if-eqz v5, :goto_0

    if-eqz v2, :cond_1

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    :try_start_0
    invoke-direct {p0, v3, v5}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->getProfileActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 104
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->findMatchedActivity(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v8

    .line 105
    .local v8, "launcherActivityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v8, :cond_2

    .line 106
    invoke-direct {p0, p1, v3, v5, v8}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->newProfileAppSearchBean(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherActivityInfo;)Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    move-result-object v9

    .line 107
    .local v9, "profileAppSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
    if-eqz v9, :cond_2

    .line 108
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v9    # "profileAppSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
    :cond_2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v6    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v8    # "launcherActivityInfo":Landroid/content/pm/LauncherActivityInfo;
    :catch_0
    move-exception v6

    .line 112
    .local v6, "throwable":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query profile app failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v5    # "profileUser":Landroid/os/UserHandle;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public launch(Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)Z
    .locals 5
    .param p1, "profileAppSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    .prologue
    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_1

    .line 103
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->startProfileMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 106
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch profile app failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    .line 111
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    return v4
.end method
