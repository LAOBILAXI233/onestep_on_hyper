.class public Lcom/smartisanos/home/settings/EngineSetActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "EngineSetActivity.java"

.implements Landroid/view/View$OnClickListener;


.field private mBaidu:Landroid/view/View;

.field private mBaiduSelect:Landroid/view/View;

.field private mBing:Landroid/view/View;

.field private mBingSelect:Landroid/view/View;

.field private mGoogle:Landroid/view/View;

.field private mGoogleSelect:Landroid/view/View;

.field private mSm:Landroid/view/View;

.field private mSmSelect:Landroid/view/View;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private clearSelected()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 85
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaiduSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogleSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBingSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSmSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 46
    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaidu:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaidu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0f0136

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBing:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBing:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSm:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSm:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0f0133

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogle:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogle:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaiduSelect:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaiduSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogleSelect:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogleSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const v0, 0x7f0f0138

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBingSelect:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBingSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v0, 0x7f0f013b

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSmSelect:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSmSelect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->initEngineSetting(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->initCurrentEngine()V

    .line 64
    return-void
.end method

.method private initCurrentEngine()V
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngine(Landroid/content/Context;)I

    move-result v0

    .line 68
    .local v0, "engine":I
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToBaidu()V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToGoogle()V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToBing()V

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToSm()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSelectEngineToBaidu()V
    .locals 3

    .prologue
    .line 96
    const/16 v1, 0x44d

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z

    .line 97
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->clearSelected()V

    .line 98
    iget-object v1, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaiduSelect:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSelectEngineToBing()V
    .locals 3

    .prologue
    .line 106
    const/16 v1, 0x44f

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z

    .line 107
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->clearSelected()V

    .line 108
    iget-object v1, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBingSelect:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSelectEngineToGoogle()V
    .locals 3

    .prologue
    .line 126
    const/16 v1, 0x44e

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z

    .line 127
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->clearSelected()V

    .line 128
    iget-object v1, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogleSelect:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSelectEngineToSm()V
    .locals 3

    .prologue
    .line 116
    const/16 v1, 0x450

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->setSearchEngine(Landroid/content/Context;I)Z

    .line 117
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->clearSelected()V

    .line 118
    iget-object v1, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSmSelect:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


.method public finish()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 137
    const v0, 0x7f050021

    .line 138
    .local v0, "slide_in_from_left":I
    const v1, 0x7f050024

    .line 139
    .local v1, "slide_out_to_right":I
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/EngineSetActivity;->overridePendingTransition(II)V

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBaidu:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToBaidu()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mBing:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToBing()V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mSm:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToSm()V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/home/settings/EngineSetActivity;->mGoogle:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->setSelectEngineToGoogle()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 31
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 32
    const v1, 0x7f040062

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/EngineSetActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f0f0057

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/EngineSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/Title;

    .line 34
    .local v0, "title":Lcom/smartisanos/home/widget/sys/Title;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    .line 36
    new-instance v1, Lcom/smartisanos/home/settings/EngineSetActivity$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/EngineSetActivity$1;-><init>(Lcom/smartisanos/home/settings/EngineSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Lcom/smartisanos/home/settings/EngineSetActivity;->init()V

    .line 43
    return-void
.end method
