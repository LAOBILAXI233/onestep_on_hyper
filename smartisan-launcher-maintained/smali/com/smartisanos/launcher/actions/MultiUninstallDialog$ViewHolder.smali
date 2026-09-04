.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;
.super Ljava/lang/Object;
.source "MultiUninstallDialog.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

.field public view:Landroid/view/View;


.method private constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
    .param p2, "x1"    # Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)V

    return-void
.end method


.method public setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-byte v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v7, :cond_1

    .line 192
    iget-object v4, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 193
    .local v4, "pkg":Ljava/lang/String;
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 194
    .local v0, "cmp":Ljava/lang/String;
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v7}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$500(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 195
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 196
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 197
    .local v1, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v8}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$500(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 200
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 204
    .end local v0    # "cmp":Ljava/lang/String;
    .end local v1    # "componentName":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-byte v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 205
    iget-object v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iget-object v8, p1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([BLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 207
    :cond_2
    if-eqz v2, :cond_3

    .line 208
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_3
    iget-object v7, p1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 211
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_4
    return-void
.end method
