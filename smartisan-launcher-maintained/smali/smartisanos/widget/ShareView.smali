.class public Lsmartisanos/widget/ShareView;
.super Landroid/app/Dialog;
.source "ShareView.java"


.field public static mReadShareAssetImage:Ljava/lang/String;

.field public static mShareDir:Ljava/lang/String;

.field public static mShareImage:Ljava/lang/String;


.field private mActiveComponent:[Z

.field private mActivity:Landroid/app/Activity;

.field private mAppNames:[Landroid/content/ComponentName;

.field private mCancelButton:Landroid/widget/Button;

.field private mClassNames:[Ljava/lang/String;

.field mShareClickListener:Landroid/view/View$OnClickListener;

.field private mShareIconInvails:[I

.field private mShareIcons:[I

.field private mShareMsg:Ljava/lang/String;

.field private mShareViews:[Landroid/widget/TextView;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartisan/share/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v0, Lsmartisanos/widget/ShareView;->mShareImage:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lsmartisanos/widget/ShareView;->mReadShareAssetImage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 83
    sget v0, Lsmartisanos/widget/R$style;->ShareDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lsmartisanos/widget/R$drawable;->weibo:I

    aput v1, v0, v6

    sget v1, Lsmartisanos/widget/R$drawable;->wx:I

    aput v1, v0, v5

    sget v1, Lsmartisanos/widget/R$drawable;->twitter:I

    aput v1, v0, v7

    sget v1, Lsmartisanos/widget/R$drawable;->qzone:I

    aput v1, v0, v8

    sget v1, Lsmartisanos/widget/R$drawable;->pyq:I

    aput v1, v0, v9

    const/4 v1, 0x5

    sget v2, Lsmartisanos/widget/R$drawable;->fb:I

    aput v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mShareIcons:[I

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lsmartisanos/widget/R$drawable;->weibo_invail:I

    aput v1, v0, v6

    sget v1, Lsmartisanos/widget/R$drawable;->wx_invail:I

    aput v1, v0, v5

    sget v1, Lsmartisanos/widget/R$drawable;->twitter_invail:I

    aput v1, v0, v7

    sget v1, Lsmartisanos/widget/R$drawable;->qzone_invail:I

    aput v1, v0, v8

    sget v1, Lsmartisanos/widget/R$drawable;->pyq_invail:I

    aput v1, v0, v9

    const/4 v1, 0x5

    sget v2, Lsmartisanos/widget/R$drawable;->fb_invail:I

    aput v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mShareIconInvails:[I

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/content/ComponentName;

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

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    .line 74
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

    const-string v1, "com.facebook.composer.shareintent.ImplicitShareIntentHandler"

    aput-object v1, v0, v9

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mClassNames:[Ljava/lang/String;

    .line 184
    new-instance v0, Lsmartisanos/widget/ShareView$3;

    invoke-direct {v0, p0}, Lsmartisanos/widget/ShareView$3;-><init>(Lsmartisanos/widget/ShareView;)V

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mShareClickListener:Landroid/view/View$OnClickListener;

    .line 84
    iput-object p1, p0, Lsmartisanos/widget/ShareView;->mActivity:Landroid/app/Activity;

    .line 85
    sget v0, Lsmartisanos/widget/R$layout;->setting_share:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lsmartisanos/widget/ShareView;->initWindow()V

    .line 88
    invoke-direct {p0}, Lsmartisanos/widget/ShareView;->initShareView()V

    .line 90
    sget v0, Lsmartisanos/widget/R$id;->share_cancel:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mCancelButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lsmartisanos/widget/ShareView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lsmartisanos/widget/ShareView$1;

    invoke-direct {v1, p0}, Lsmartisanos/widget/ShareView$1;-><init>(Lsmartisanos/widget/ShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0, v5}, Lsmartisanos/widget/ShareView;->setCanceledOnTouchOutside(Z)V

    .line 101
    return-void

    .line 51
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lsmartisanos/widget/ShareView;)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/ShareView;

    .prologue
    .line 27
    invoke-direct {p0}, Lsmartisanos/widget/ShareView;->activeComponent()V

    return-void
.end method

.method static synthetic access$100(Lsmartisanos/widget/ShareView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/ShareView;

    .prologue
    .line 27
    iget-object v0, p0, Lsmartisanos/widget/ShareView;->mShareMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lsmartisanos/widget/ShareView;)[Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/ShareView;

    .prologue
    .line 27
    iget-object v0, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Lsmartisanos/widget/ShareView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/ShareView;

    .prologue
    .line 27
    iget-object v0, p0, Lsmartisanos/widget/ShareView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private activeComponent()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 132
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    invoke-static {v9, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 136
    .local v7, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v0, v8, :cond_4

    .line 138
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 139
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    array-length v9, v9

    if-ge v3, v9, :cond_3

    .line 140
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_0

    .line 141
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "name":Ljava/lang/String;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 144
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    aput-boolean v12, v9, v3

    .line 145
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    aput-boolean v12, v9, v3

    .line 139
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mClassNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 151
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lsmartisanos/widget/ShareView;->mClassNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    aput-boolean v12, v9, v3

    .line 153
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mClassNames:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {p0, v3, v9}, Lsmartisanos/widget/ShareView;->updateComponentName(ILjava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 137
    .end local v4    # "m":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "j":I
    .end local v8    # "size":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    array-length v8, v9

    .restart local v8    # "size":I
    :goto_4
    if-ge v0, v8, :cond_6

    .line 165
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mActiveComponent:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_5

    .line 166
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lsmartisanos/widget/ShareView;->mShareIcons:[I

    aget v10, v10, v0

    invoke-virtual {v9, v11, v10, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 167
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lsmartisanos/widget/ShareView;->mShareClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 169
    :cond_5
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    iget-object v10, p0, Lsmartisanos/widget/ShareView;->mShareIconInvails:[I

    aget v10, v10, v0

    invoke-virtual {v9, v11, v10, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 170
    iget-object v9, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    aget-object v9, v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 173
    :cond_6
    return-void
.end method

.method private initShareView()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v0, Lsmartisanos/widget/R$id;->share_weibo:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 114
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x1

    sget v0, Lsmartisanos/widget/R$id;->share_weixin:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 115
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x2

    sget v0, Lsmartisanos/widget/R$id;->share_twitter:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 116
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x3

    sget v0, Lsmartisanos/widget/R$id;->share_qzone:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 117
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x4

    sget v0, Lsmartisanos/widget/R$id;->share_weixin_timeline:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 118
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mShareViews:[Landroid/widget/TextView;

    const/4 v2, 0x5

    sget v0, Lsmartisanos/widget/R$id;->share_facebook:I

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 119
    invoke-virtual {p0}, Lsmartisanos/widget/ShareView;->checkActiveComponent()V

    .line 120
    return-void
.end method

.method private initWindow()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lsmartisanos/widget/ShareView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 105
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 106
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 107
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 108
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 109
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, "isExist":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 273
    new-instance v7, Ljava/io/File;

    sget-object v8, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v7, "newDirectory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 275
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 276
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 277
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 278
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 280
    const/4 v4, 0x1

    .line 277
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 291
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "newDirectory":Ljava/io/File;
    :cond_2
    return v4
.end method

.method private updateComponentName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 176
    if-ltz p1, :cond_0

    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "cmpName":Landroid/content/ComponentName;
    iget-object v1, p0, Lsmartisanos/widget/ShareView;->mAppNames:[Landroid/content/ComponentName;

    aput-object v0, v1, p1

    goto :goto_0
.end method


.method public checkActiveComponent()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsmartisanos/widget/ShareView$2;

    invoke-direct {v1, p0}, Lsmartisanos/widget/ShareView$2;-><init>(Lsmartisanos/widget/ShareView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public checkShareImage()Landroid/net/Uri;
    .locals 10

    .prologue
    .line 221
    new-instance v4, Ljava/io/File;

    sget-object v8, Lsmartisanos/widget/ShareView;->mShareImage:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, "file":Ljava/io/File;
    sget-object v8, Lsmartisanos/widget/ShareView;->mShareImage:Ljava/lang/String;

    invoke-direct {p0, v8}, Lsmartisanos/widget/ShareView;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 226
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    sget-object v9, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 228
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    iget-object v8, p0, Lsmartisanos/widget/ShareView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    sget-object v9, Lsmartisanos/widget/ShareView;->mReadShareAssetImage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 230
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 231
    .local v2, "cache":[B
    const/4 v6, -0x1

    .line 232
    .local v6, "length":I
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 233
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 235
    .end local v2    # "cache":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 236
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    if-eqz v5, :cond_0

    .line 240
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 245
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 247
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 256
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_3
    new-instance v7, Ljava/io/File;

    sget-object v8, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    const-string v9, ".nomedia"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v7, "noMedia":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 259
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 265
    :cond_2
    :goto_4
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 238
    .end local v7    # "noMedia":Ljava/io/File;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "cache":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "length":I
    :cond_3
    if-eqz v5, :cond_4

    .line 240
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 245
    :cond_4
    :goto_5
    if-eqz v1, :cond_1

    .line 247
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 248
    :catch_1
    move-exception v3

    .line 249
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 241
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 242
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 241
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "cache":[B
    .end local v6    # "length":I
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 249
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v5, :cond_5

    .line 240
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 245
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 247
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 250
    :cond_6
    :goto_8
    throw v8

    .line 241
    :catch_5
    move-exception v3

    .line 242
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 249
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 260
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "noMedia":Ljava/io/File;
    :catch_7
    move-exception v3

    .line 261
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 238
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

    .line 235
    :catch_8
    move-exception v3

    goto :goto_1
.end method

.method public setReadShareAssetImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "readShareAssetImage"    # Ljava/lang/String;

    .prologue
    .line 307
    sput-object p1, Lsmartisanos/widget/ShareView;->mReadShareAssetImage:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setShareDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareDir"    # Ljava/lang/String;

    .prologue
    .line 299
    sput-object p1, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setShareImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "shareImage"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsmartisanos/widget/ShareView;->mShareDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/ShareView;->mShareImage:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setShareMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareMessage"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lsmartisanos/widget/ShareView;->mShareMsg:Ljava/lang/String;

    .line 296
    return-void
.end method
