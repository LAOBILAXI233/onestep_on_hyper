.class public Lcom/smartisanos/expandservice/launcher/actions/PackageAction;
.super Ljava/lang/Object;
.source "PackageAction.java"

.implements Lcom/smartisanos/expandservice/launcher/actions/Action;


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/smartisanos/expandservice/launcher/actions/PackageAction;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/expandservice/launcher/actions/PackageAction;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 41
    invoke-static {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getCategoryFromPredefinedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "predefined":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 43
    const-string v4, "-1000"

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, "params":Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;->SYNC_APP_CATEGORY_BY_PACKAGE:Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;

    invoke-static {p1, v5, v3}, Lcom/smartisanos/expandservice/launcher/service/LauncherService;->send(Landroid/content/Context;Lcom/smartisanos/expandservice/launcher/service/LauncherService$Task;Ljava/util/List;)V

    .line 48
    .end local v3    # "params":Ljava/util/List;
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "pkg"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v5, "category_id"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v5, "sync_time"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-static {v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateAppCategory(Landroid/content/ContentValues;)V

    goto :goto_0
.end method


.method public call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
