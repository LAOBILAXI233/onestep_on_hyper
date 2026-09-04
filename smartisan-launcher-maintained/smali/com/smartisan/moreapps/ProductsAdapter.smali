.class public Lcom/smartisan/moreapps/ProductsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProductsAdapter.java"


.field private isGooglePlayVersion:Z

.field private mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

.field private mContext:Landroid/content/Context;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/smartisan/moreapps/AppInfoList;

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/moreapps/AppInfoList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    .line 39
    invoke-static {p1}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isGooglePlayChannel(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->isGooglePlayVersion:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/moreapps/ProductsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/moreapps/ProductsAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/moreapps/ProductsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/smartisan/moreapps/ProductsAdapter;->startApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisan/moreapps/ProductsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/moreapps/ProductsAdapter;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->isGooglePlayVersion:Z

    return v0
.end method

.method static synthetic access$300(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/moreapps/ProductsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/smartisan/moreapps/ProductsAdapter;->downloadApp(Ljava/lang/String;)V

    return-void
.end method

.method private downloadApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v4, p1}, Lcom/smartisan/moreapps/AppInfoList;->getDownloadLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "location":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/smartisan/moreapps/SmartisanAppUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 126
    .local v2, "networkType":I
    if-eqz v1, :cond_0

    .line 127
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 128
    new-instance v0, Lcom/smartisan/moreapps/download/AppDownloader;

    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/smartisan/moreapps/download/AppDownloader;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "downloader":Lcom/smartisan/moreapps/download/AppDownloader;
    invoke-virtual {v0, p1, v1}, Lcom/smartisan/moreapps/download/AppDownloader;->DownloadApk(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .end local v0    # "downloader":Lcom/smartisan/moreapps/download/AppDownloader;
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "networkType":I
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v1    # "location":Ljava/lang/String;
    .restart local v2    # "networkType":I
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 131
    invoke-direct {p0, p1, v1}, Lcom/smartisan/moreapps/ProductsAdapter;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    if-nez v2, :cond_0

    .line 133
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v1}, Lcom/smartisan/moreapps/download/DownloadPending;->addDownloadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/smartisan/libmoreapps/R$string;->download_no_net:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "noNetworkMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initActiveStatus()V
    .locals 10

    .prologue
    .line 49
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v6, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 52
    .local v5, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 53
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 54
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 55
    .local v1, "existPkg":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v7}, Lcom/smartisan/moreapps/AppInfoList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 56
    iget-object v7, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v7, v2}, Lcom/smartisan/moreapps/AppInfoList;->get(I)Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    move-result-object v0

    .line 57
    .local v0, "appInfo":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v7, v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    iget-object v7, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    iget-object v8, v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/smartisan/moreapps/AppInfoList;->setClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "appInfo":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    .end local v1    # "existPkg":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method private setClassName(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 106
    .local v0, "existPkg":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/smartisan/moreapps/AppInfoList;->setClassName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/lang/String;

    .prologue
    .line 142
    move-object v2, p1

    .line 143
    .local v2, "packageName":Ljava/lang/String;
    move-object v1, p2

    .line 144
    .local v1, "location":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/smartisan/libmoreapps/R$string;->download_dialog_title:I

    .line 146
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/smartisan/libmoreapps/R$string;->download_dialog_message:I

    .line 147
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/smartisan/libmoreapps/R$string;->download_dialog_cancel:I

    .line 148
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/smartisan/moreapps/ProductsAdapter$2;

    invoke-direct {v5, p0}, Lcom/smartisan/moreapps/ProductsAdapter$2;-><init>(Lcom/smartisan/moreapps/ProductsAdapter;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/smartisan/libmoreapps/R$string;->download_dialog_download:I

    .line 155
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/smartisan/moreapps/ProductsAdapter$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/smartisan/moreapps/ProductsAdapter$1;-><init>(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 167
    return-void
.end method

.method private startApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v1, p1}, Lcom/smartisan/moreapps/AppInfoList;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v0}, Lcom/smartisan/moreapps/AppInfoList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v0, p1}, Lcom/smartisan/moreapps/AppInfoList;->get(I)Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    move-object v7, p2

    .line 192
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_0

    .line 193
    iget-object v8, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 195
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/smartisan/libmoreapps/R$layout;->product_list_item:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 198
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    if-nez p1, :cond_3

    .line 199
    sget v8, Lcom/smartisan/libmoreapps/R$drawable;->list_item_top:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    :goto_0
    iget-object v8, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v8, p1}, Lcom/smartisan/moreapps/AppInfoList;->get(I)Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    move-result-object v5

    .line 206
    .local v5, "item":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    if-eqz v5, :cond_2

    .line 207
    sget v8, Lcom/smartisan/libmoreapps/R$id;->product_app_icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 208
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    .line 209
    iget-object v8, v5, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_1
    sget v8, Lcom/smartisan/libmoreapps/R$id;->product_app_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v8, v5, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget v8, Lcom/smartisan/libmoreapps/R$id;->product_app_describe:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, "appDes":Landroid/widget/TextView;
    iget-object v8, v5, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mAppDes:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget v8, Lcom/smartisan/libmoreapps/R$id;->product_app_operation:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 218
    .local v2, "button":Landroid/widget/Button;
    iget-object v6, v5, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    .line 219
    .local v6, "pkgName":Ljava/lang/String;
    iget-boolean v8, v5, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    if-eqz v8, :cond_5

    .line 220
    sget v8, Lcom/smartisan/libmoreapps/R$string;->app_open_txt:I

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 221
    new-instance v8, Lcom/smartisan/moreapps/ProductsAdapter$3;

    invoke-direct {v8, p0, v6}, Lcom/smartisan/moreapps/ProductsAdapter$3;-><init>(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .end local v0    # "appDes":Landroid/widget/TextView;
    .end local v1    # "appName":Landroid/widget/TextView;
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v7

    .line 200
    .end local v5    # "item":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_3
    iget-object v8, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v8}, Lcom/smartisan/moreapps/AppInfoList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_4

    .line 201
    sget v8, Lcom/smartisan/libmoreapps/R$drawable;->list_item_bottom:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 203
    :cond_4
    sget v8, Lcom/smartisan/libmoreapps/R$drawable;->list_item_middle:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 229
    .restart local v0    # "appDes":Landroid/widget/TextView;
    .restart local v1    # "appName":Landroid/widget/TextView;
    .restart local v2    # "button":Landroid/widget/Button;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "item":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    .restart local v6    # "pkgName":Ljava/lang/String;
    :cond_5
    sget v8, Lcom/smartisan/libmoreapps/R$string;->app_install_txt:I

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 230
    new-instance v8, Lcom/smartisan/moreapps/ProductsAdapter$4;

    invoke-direct {v8, p0, v6}, Lcom/smartisan/moreapps/ProductsAdapter$4;-><init>(Lcom/smartisan/moreapps/ProductsAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v0}, Lcom/smartisan/moreapps/AppInfoList;->initList()V

    .line 44
    invoke-direct {p0}, Lcom/smartisan/moreapps/ProductsAdapter;->initActiveStatus()V

    .line 45
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisan/moreapps/AppInfoList;->clearAppInfoSelf(Ljava/lang/String;)Z

    .line 46
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public updateAppList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v0, p1}, Lcom/smartisan/moreapps/AppInfoList;->updateList(Ljava/util/ArrayList;)V

    .line 90
    invoke-direct {p0}, Lcom/smartisan/moreapps/ProductsAdapter;->initActiveStatus()V

    .line 91
    iget-object v0, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    iget-object v1, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisan/moreapps/AppInfoList;->clearAppInfoSelf(Ljava/lang/String;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public updateAppState(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v2}, Lcom/smartisan/moreapps/AppInfoList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    invoke-virtual {v2, v0}, Lcom/smartisan/moreapps/AppInfoList;->get(I)Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    move-result-object v1

    .line 70
    .local v1, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    iget-object v2, v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iput-boolean p2, v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    .line 72
    iget-boolean v2, v1, Lcom/smartisan/moreapps/AppInfoList$AppInfo;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/smartisan/moreapps/ProductsAdapter;->setClassName(Ljava/lang/String;)V

    .line 79
    :goto_1
    const/4 v2, 0x1

    .line 84
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :goto_2
    return v2

    .line 77
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_0
    iget-object v2, p0, Lcom/smartisan/moreapps/ProductsAdapter;->mAppInfoList:Lcom/smartisan/moreapps/AppInfoList;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/smartisan/moreapps/AppInfoList;->setClassName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
