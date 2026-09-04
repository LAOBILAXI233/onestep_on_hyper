.class public Lcom/smartisanos/home/settings/ShareView;
.super Landroid/app/Dialog;
.source "ShareView.java"


.field public static final READ_SHARE_ASSET:Ljava/lang/String; = "share_img.jpg"

.field public static final SHARE_DIR:Ljava/lang/String;

.field public static final SHARE_DIR_OLD:Ljava/lang/String;

.field public static final SHARE_IMAGE:Ljava/lang/String;


.field private activeComponent:[Z

.field private appNames:[Landroid/content/ComponentName;

.field private classNames:[Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/widget/Button;

.field shareClickListener:Landroid/view/View$OnClickListener;

.field private shareIconInvails:[I

.field private shareIcons:[I

.field private shareViews:[Landroid/widget/TextView;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartisan/launcher/share/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "share_img.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/ShareView;->SHARE_IMAGE:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartisan/launcher/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR_OLD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x6

    .line 87
    const v0, 0x7f0a00e0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->shareIcons:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->shareIconInvails:[I

    .line 69
    new-array v0, v1, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sina.weibo"

    const-string v3, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.twitter.android"

    const-string v3, "com.twitter.android.composer.ComposerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qzone"

    const-string v3, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sina.weibo.EditActivity"

    aput-object v1, v0, v6

    const-string v1, "com.sina.weibo.ComposerDispatchActivity"

    aput-object v1, v0, v5

    const-string v1, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    aput-object v1, v0, v7

    const-string v1, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "com.facebook.composer.shareintent.ImplicitShareIntentHandler"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->classNames:[Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/smartisanos/home/settings/ShareView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/ShareView$3;-><init>(Lcom/smartisanos/home/settings/ShareView;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->shareClickListener:Landroid/view/View$OnClickListener;

    .line 88
    iput-object p1, p0, Lcom/smartisanos/home/settings/ShareView;->mActivity:Landroid/app/Activity;

    .line 89
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ShareView;->initWindow()V

    .line 92
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ShareView;->initShareView()V

    .line 94
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->mCancelButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/smartisanos/home/settings/ShareView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/ShareView$1;-><init>(Lcom/smartisanos/home/settings/ShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/ShareView;->setCanceledOnTouchOutside(Z)V

    .line 105
    return-void

    .line 55
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 59
    nop

    :array_1
    .array-data 4
        0x7f0202b4
        0x7f0202b7
        0x7f0202ae
        0x7f0201a4
        0x7f020199
        0x7f0200d9
    .end array-data

    .line 64
    :array_2
    .array-data 4
        0x7f0202b5
        0x7f0202b8
        0x7f0202af
        0x7f0201a5
        0x7f02019a
        0x7f0200da
    .end array-data
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/ShareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ShareView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ShareView;->activeComponent()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/ShareView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ShareView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/ShareView;)[Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ShareView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    return-object v0
.end method

.method private activeComponent()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 136
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    invoke-static {v9, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 140
    .local v7, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v0, v8, :cond_4

    .line 142
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 143
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    array-length v9, v9

    if-ge v3, v9, :cond_3

    .line 144
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_0

    .line 145
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "name":Ljava/lang/String;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 148
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    aput-boolean v12, v9, v3

    .line 149
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 150
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    aput-boolean v12, v9, v3

    .line 143
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->classNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 155
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/smartisanos/home/settings/ShareView;->classNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    aput-boolean v12, v9, v3

    .line 157
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->classNames:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {p0, v3, v9}, Lcom/smartisanos/home/settings/ShareView;->updateComponentName(ILjava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 141
    .end local v4    # "m":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "j":I
    .end local v8    # "size":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    array-length v8, v9

    .restart local v8    # "size":I
    :goto_4
    if-ge v0, v8, :cond_6

    .line 169
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->activeComponent:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_5

    .line 170
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/smartisanos/home/settings/ShareView;->shareIcons:[I

    aget v10, v10, v0

    invoke-virtual {v9, v11, v10, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 171
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/smartisanos/home/settings/ShareView;->shareClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 173
    :cond_5
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/smartisanos/home/settings/ShareView;->shareIconInvails:[I

    aget v10, v10, v0

    invoke-virtual {v9, v11, v10, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 174
    iget-object v9, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 177
    :cond_6
    return-void
.end method

.method private clearOldFile()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR_OLD:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "oldDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->deleteFilesFromDir(Ljava/io/File;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 311
    :cond_0
    return-void
.end method

.method private deleteFilesFromDir(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    :cond_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 319
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 321
    aget-object v0, v1, v2

    .line 322
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initShareView()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 118
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f0f015b

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 119
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 120
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x3

    const v0, 0x7f0f015d

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 121
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x4

    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 122
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->shareViews:[Landroid/widget/TextView;

    const/4 v2, 0x5

    const v0, 0x7f0f015f

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 123
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ShareView;->checkActiveComponent()V

    .line 124
    return-void
.end method

.method private initWindow()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ShareView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 110
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 111
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 112
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 113
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, "isExist":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 332
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v4, "newDirectory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 335
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 336
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v1, v5

    .line 337
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, v1, v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 339
    const/4 v2, 0x1

    .line 336
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 350
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newDirectory":Ljava/io/File;
    :cond_2
    return v2
.end method

.method private updateComponentName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 180
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "cmpName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/smartisanos/home/settings/ShareView;->appNames:[Landroid/content/ComponentName;

    aput-object v0, v1, p1

    goto :goto_0
.end method


.method public checkActiveComponent()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/home/settings/ShareView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/ShareView$2;-><init>(Lcom/smartisanos/home/settings/ShareView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method public checkShareImage()Landroid/net/Uri;
    .locals 10

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ShareView;->clearOldFile()V

    .line 258
    new-instance v4, Ljava/io/File;

    sget-object v8, Lcom/smartisanos/home/settings/ShareView;->SHARE_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, "file":Ljava/io/File;
    sget-object v8, Lcom/smartisanos/home/settings/ShareView;->SHARE_IMAGE:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/smartisanos/home/settings/ShareView;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 263
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 264
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 265
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/smartisanos/home/settings/ShareView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "share_img.jpg"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 267
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 268
    .local v2, "cache":[B
    const/4 v6, -0x1

    .line 269
    .local v6, "length":I
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 270
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 272
    .end local v2    # "cache":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 273
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v5, :cond_0

    .line 277
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 284
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 293
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_3
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/smartisanos/home/settings/ShareView;->SHARE_DIR:Ljava/lang/String;

    const-string v9, ".nomedia"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v7, "noMedia":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 296
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 302
    :cond_2
    :goto_4
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 275
    .end local v7    # "noMedia":Ljava/io/File;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "cache":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "length":I
    :cond_3
    if-eqz v5, :cond_4

    .line 277
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 282
    :cond_4
    :goto_5
    if-eqz v1, :cond_1

    .line 284
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 285
    :catch_1
    move-exception v3

    .line 286
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 278
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 279
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 278
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "cache":[B
    .end local v6    # "length":I
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 279
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 285
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 286
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v5, :cond_5

    .line 277
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 282
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 284
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 287
    :cond_6
    :goto_8
    throw v8

    .line 278
    :catch_5
    move-exception v3

    .line 279
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 285
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 286
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 297
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "noMedia":Ljava/io/File;
    :catch_7
    move-exception v3

    .line 298
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "noMedia":Ljava/io/File;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 272
    :catch_8
    move-exception v3

    goto :goto_1
.end method
