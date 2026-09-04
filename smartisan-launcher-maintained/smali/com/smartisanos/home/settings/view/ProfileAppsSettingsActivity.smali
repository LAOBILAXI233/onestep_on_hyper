.class public Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "ProfileAppsSettingsActivity.java"


.field private launcherApps:Landroid/content/pm/LauncherApps;

.field private list:Landroid/widget/LinearLayout;

.field private userManager:Landroid/os/UserManager;


.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addShortcut(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/Intent;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->removeShortcut(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private addProfileRow(Landroid/content/pm/LauncherActivityInfo;JZ)V
    .locals 3

    .line 108
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->buildLaunchIntent(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    .line 110
    new-instance p3, Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p3, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;-><init>(Landroid/content/Context;)V

    .line 111
    const-string v1, "selector_setting_sub_item_bg_single"

    const-string v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p3, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0, p2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->hasShortcut(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 116
    new-instance v0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;-><init>(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Lcom/smartisanos/home/settings/SettingItemSwitch;)V

    invoke-virtual {p3, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    const-string p2, "settings_item_top_bottom_margin"

    const/16 p4, 0x8

    invoke-direct {p0, p4}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->dp(I)I

    move-result p4

    invoke-direct {p0, p2, p4}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getDimen(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 132
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method

.method private addShortcut(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;)Z
    .locals 6

    .line 164
    :try_start_0
    const-string v0, "com.smartisanos.launcher.data.ShortcutInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 166
    const-string v2, "packageName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v2, "componentName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#profileSerial="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 169
    const-string v2, "title"

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, v2, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-direct {v2, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "originIndex"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "qwertyIndex"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "t9Index"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string p1, "intent"

    invoke-direct {p0, v0, p1, p2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string p2, "EVENT_INSTALL_SHORTCUT"

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->updateDatabase(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 p1, 0x1

    return p1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    const/4 p1, 0x0

    return p1
.end method

.method private addTips(Ljava/lang/String;)V
    .locals 4

    .line 99
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    const p1, -0x777778

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->list:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x60

    invoke-direct {p0, v2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method private buildLaunchIntent(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2

    .line 136
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 137
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    .line 138
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 141
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 143
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 144
    const-string p3, "com.smartisanos.home"

    const-string p4, "com.smartisanos.launcher.StartActivityForSearch"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    return-object p2
.end method

.method private buildLayout()V
    .locals 3

    .line 42
    const-string v0, "setting_profile_apps"

    const-string v1, "layout"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setContentView(I)V

    .line 43
    const-string v0, "view_title"

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setupBackBtnOnTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getTitleView()Lcom/smartisanos/home/widget/sys/Title;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "activity_title_back"

    const-string v2, "string"

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    .line 48
    :cond_0
    const-string v0, "profile_apps_list"

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->list:Landroid/widget/LinearLayout;

    .line 49
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 230
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getDimen(Ljava/lang/String;I)I
    .locals 1

    .line 225
    const-string v0, "dimen"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 226
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method private getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private hasShortcut(Landroid/content/Intent;)Z
    .locals 6

    .line 151
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string v2, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string p1, "com.smartisanos.launcher.data.handler.ItemDB"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 154
    const-string v2, "listShortcuts"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 155
    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {p1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    return v0
.end method

.method private loadProfileApps()V
    .locals 10

    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    nop

    .line 64
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_3

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 70
    nop

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 72
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    .line 73
    cmp-long v8, v6, v3

    if-nez v8, :cond_2

    .line 74
    goto :goto_0

    .line 78
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    nop

    .line 82
    if-nez v5, :cond_3

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    .line 86
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_5

    .line 87
    goto :goto_1

    .line 89
    :cond_5
    if-nez v1, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, v8, v6, v7, v9}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addProfileRow(Landroid/content/pm/LauncherActivityInfo;JZ)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_7
    goto :goto_0

    .line 79
    :catch_0
    move-exception v5

    .line 80
    goto :goto_0

    .line 93
    :cond_8
    if-nez v1, :cond_9

    .line 94
    const-string v0, "\u672a\u53d1\u73b0\u5206\u8eab\u5e94\u7528"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addTips(Ljava/lang/String;)V

    .line 96
    :cond_9
    return-void

    .line 65
    :cond_a
    :goto_3
    const-string v0, "\u672a\u53d1\u73b0\u5206\u8eab\u5e94\u7528"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addTips(Ljava/lang/String;)V

    .line 66
    return-void

    .line 60
    :catch_1
    move-exception v0

    .line 61
    const-string v0, "\u5f53\u524d\u7cfb\u7edf\u4e0d\u652f\u6301\u8bfb\u53d6\u5206\u8eab\u5e94\u7528"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addTips(Ljava/lang/String;)V

    .line 62
    return-void

    .line 54
    :cond_b
    :goto_4
    const-string v0, "\u5f53\u524d\u7cfb\u7edf\u4e0d\u652f\u6301\u8bfb\u53d6\u5206\u8eab\u5e94\u7528"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addTips(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private removeShortcut(Landroid/content/Intent;)Z
    .locals 2

    .line 183
    :try_start_0
    const-string v0, "com.smartisanos.launcher.data.ShortcutInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 184
    const-string v1, "intent"

    invoke-direct {p0, v0, v1, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v0, "EVENT_UNINSTALL_SHORTCUT"

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->updateDatabase(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 p1, 0x1

    return p1

    .line 189
    :catch_0
    move-exception p1

    .line 190
    const/4 p1, 0x0

    return p1
.end method

.method private setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 204
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 211
    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    const-string v0, "com.smartisanos.launcher.data.DatabaseUpdater$Action"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 197
    const-string v2, "com.smartisanos.launcher.data.DatabaseUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 198
    const-string v3, "updateDatabase"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-class v0, Ljava/util/List;

    const/4 v7, 0x1

    aput-object v0, v5, v7

    const-class v0, Ljava/util/ArrayList;

    const/4 v8, 0x2

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object v1, v2, v7

    aput-object p2, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method


.method public finish()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 217
    const v0, 0x7f050021

    const v1, 0x7f050024

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->overridePendingTransition(II)V

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getWindow()Landroid/view/Window;

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 34
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 35
    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 36
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    .line 37
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->buildLayout()V

    .line 38
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->loadProfileApps()V

    .line 39
    return-void
.end method
