.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;
.super Ljava/lang/Object;
.source "UninstallApp.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveMultiAppsOnClickListener"
.end annotation


.field private itemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;


.method public constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    .line 644
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    .line 645
    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 649
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v10

    const-string v11, "DEBUG"

    const-string v12, "RemoveMultiAppsOnClickListener onClick"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 654
    :cond_2
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    goto :goto_0

    .line 657
    :cond_3
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 658
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 659
    .local v0, "activity":Lcom/smartisanos/home/Launcher;
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    .line 660
    .local v2, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/content/pm/ApplicationManager;

    invoke-direct {v1, v0, v2}, Landroid/content/pm/ApplicationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 661
    .local v1, "am":Landroid/content/pm/ApplicationManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v4, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 663
    .local v3, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-byte v11, v3, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v11, :cond_4

    .line 664
    iget-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 665
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 669
    .end local v3    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v7, "params":Ljava/util/ArrayList;
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_MULTI_APPS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 672
    new-instance v10, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener$1;

    const/16 v11, 0x64

    invoke-direct {v10, p0, v11}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;I)V

    const/4 v11, 0x0

    .line 688
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener$1;->send(F)V

    .line 689
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;->itemInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 690
    .restart local v3    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-byte v9, v3, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 691
    .local v9, "type":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v6, "paramList":Ljava/util/ArrayList;
    if-nez v9, :cond_7

    .line 693
    iget-object v5, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 694
    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v11, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_HANDLE_UNINSTALL:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v12, 0x0

    invoke-static {v11, v12, v6}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 697
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    if-ne v9, v11, :cond_6

    move-object v8, v3

    .line 698
    check-cast v8, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 699
    .local v8, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v11, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v12, 0x0

    invoke-static {v11, v12, v6}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
