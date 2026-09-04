.class Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiUninstallDialog.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/MultiUninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppAdapter"
.end annotation


.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;


.method public constructor <init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Ljava/util/List;)V
    .locals 0
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
    .line 145
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->list:Ljava/util/List;

    .line 147
    return-void
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->getItem(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->getItem(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 168
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz p2, :cond_0

    instance-of v3, p2, Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-static {v3}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$500(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$layout;->multi_uninstall_preview_item:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 170
    .local v2, "view":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$AppAdapter;->this$0:Lcom/smartisanos/launcher/actions/MultiUninstallDialog;

    invoke-direct {v0, v3, v5}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;-><init>(Lcom/smartisanos/launcher/actions/MultiUninstallDialog;Lcom/smartisanos/launcher/actions/MultiUninstallDialog$1;)V

    .line 171
    .local v0, "holder":Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;
    iput-object v2, v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->view:Landroid/view/View;

    .line 172
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->app_icon:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 173
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->app_name:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->appName:Landroid/widget/TextView;

    .line 174
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 178
    .end local v2    # "view":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 179
    invoke-static {}, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView index ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 180
    iget-object v3, v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;->view:Landroid/view/View;

    return-object v3

    .line 176
    .end local v0    # "holder":Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;

    .restart local v0    # "holder":Lcom/smartisanos/launcher/actions/MultiUninstallDialog$ViewHolder;
    goto :goto_0
.end method
