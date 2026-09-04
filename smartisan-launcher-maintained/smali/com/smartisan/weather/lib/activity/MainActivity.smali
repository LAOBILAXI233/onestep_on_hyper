.class public Lcom/smartisan/weather/lib/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


.field private mTextView:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/weather/lib/activity/MainActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/weather/lib/activity/MainActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/weather/lib/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/weather/lib/activity/MainActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/smartisan/weather/lib/activity/MainActivity;->getCurrentTemp()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/smartisan/weather/lib/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/weather/lib/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/activity/MainActivity;->showCurrentTemp(I)V

    return-void
.end method

.method private getCurrentTemp()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    .local v7, "result":I
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "temp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 52
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_1
    return v7
.end method

.method private showCurrentTemp(I)V
    .locals 3
    .param p1, "temp"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/smartisan/weather/lib/R$layout;->main_layout:I

    invoke-virtual {p0, v0}, Lcom/smartisan/weather/lib/activity/MainActivity;->setContentView(I)V

    .line 28
    sget v0, Lcom/smartisan/weather/lib/R$id;->tv:I

    invoke-virtual {p0, v0}, Lcom/smartisan/weather/lib/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mTextView:Landroid/widget/TextView;

    .line 29
    sget-object v0, Lcom/smartisan/weather/lib/WeatherProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "current"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mUri:Landroid/net/Uri;

    .line 30
    invoke-direct {p0}, Lcom/smartisan/weather/lib/activity/MainActivity;->getCurrentTemp()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/activity/MainActivity;->showCurrentTemp(I)V

    .line 31
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/weather/lib/activity/MainActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/smartisan/weather/lib/activity/MainActivity$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/smartisan/weather/lib/activity/MainActivity$1;-><init>(Lcom/smartisan/weather/lib/activity/MainActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method
