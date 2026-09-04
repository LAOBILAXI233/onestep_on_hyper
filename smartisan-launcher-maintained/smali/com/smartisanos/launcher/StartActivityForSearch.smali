.class public Lcom/smartisanos/launcher/StartActivityForSearch;
.super Landroid/app/Activity;
.source "StartActivityForSearch.java"


.field static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/smartisanos/launcher/StartActivityForSearch;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/StartActivityForSearch;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private launchApplication(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 35
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v6, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    const-string v6, "com.smartisanos.launcher.data.SearchProvider"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 43
    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchProvider.AUTHORITY [com.smartisanos.launcher.data.SearchProvider], uri authority ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 47
    .local v4, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 50
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 51
    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "cmp":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v1, "componentName":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10200000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/smartisanos/launcher/StartActivityForSearch;->launchProfileApplication(Landroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 58
    :cond_3
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/StartActivityForSearch;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchProfileApplication(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "serialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/StartActivityForSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "launcherapps"

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/StartActivityForSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v4, v7, v7}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v6
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v2, Lcom/smartisanos/launcher/StartActivityForSearch;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "StartActivityForSearch onCreate"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/launcher/StartActivityForSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 29
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/StartActivityForSearch;->launchApplication(Landroid/net/Uri;)V

    .line 31
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/StartActivityForSearch;->finish()V

    .line 32
    return-void
.end method
