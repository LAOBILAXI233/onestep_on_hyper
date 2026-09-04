.class public abstract Lcom/smartisanos/home/apps/EmbeddedApp;
.super Ljava/lang/Object;
.source "EmbeddedApp.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field public appPrivateName:Ljava/lang/String;

.field private isDockApp:Z

.field private mCmp:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/smartisanos/home/apps/EmbeddedApp;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/apps/EmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "dockApp"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mCmp:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mLabel:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mIcon:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->isDockApp:Z

    .line 45
    return-void
.end method


.method public appId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mCmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cmp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mCmp:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public icon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mIcon:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "redId":I
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDockApp()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->isDockApp:Z

    return v0
.end method

.method public name(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mLabel:Ljava/lang/String;

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "redId":I
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPrivateName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->appPrivateName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public toItemInfo()Lcom/smartisanos/launcher/data/ApplicationInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    new-instance v1, Lcom/smartisanos/launcher/data/ApplicationInfo;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/ApplicationInfo;-><init>()V

    .line 85
    .local v1, "item":Lcom/smartisanos/launcher/data/ApplicationInfo;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    const-string v3, "com.smartisanos.home.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->installed:Z

    .line 88
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->isSystemApp:Z

    .line 98
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mCmp:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->componentName:Ljava/lang/String;

    .line 100
    iput-byte v5, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->itemType:B

    .line 101
    iput v5, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->messagesNumber:I

    .line 102
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->isSystemApp:Z

    .line 103
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mIcon:Ljava/lang/String;

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->iconDrawableName:Ljava/lang/String;

    .line 104
    new-instance v2, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    iget-object v3, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "index":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->originIndex:Ljava/lang/String;

    .line 106
    aget-object v2, v0, v5

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->qwertyIndex:Ljava/lang/String;

    .line 107
    aget-object v2, v0, v4

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->t9Index:Ljava/lang/String;

    .line 108
    return-object v1

    .line 89
    .end local v0    # "index":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    const-string v3, "com.smartisan.setup.wizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->installed:Z

    .line 91
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->isSystemApp:Z

    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/apps/EmbeddedApp;->mPkg:Ljava/lang/String;

    const-string v3, "com.smartisanos.weather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->installed:Z

    .line 94
    iput-boolean v4, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->isSystemApp:Z

    goto :goto_0

    .line 96
    :cond_2
    iput-boolean v5, v1, Lcom/smartisanos/launcher/data/ApplicationInfo;->installed:Z

    goto :goto_0
.end method
