.class public Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "LauncherAnimChooseActivity.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;,
        Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;
    }
.end annotation


.field private mAdapter:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

.field private mCurrentIndex:I

.field private mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

.field private final mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

.field private mThemeIcon:Landroid/content/res/TypedArray;

.field private mThemeName:[Ljava/lang/String;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$2;-><init>(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mAdapter:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mThemeIcon:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mThemeName:[Ljava/lang/String;

    return-object v0
.end method

.method private addHeaderFooter()V
    .locals 3

    .prologue
    .line 92
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "transparentHeaderView":Landroid/view/View;
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "transparentFooterView":Landroid/view/View;
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    invoke-virtual {v2, v1}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;)V

    .line 95
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    invoke-virtual {v2, v0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->addFooterView(Landroid/view/View;)V

    .line 96
    return-void
.end method


.method public finish()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 150
    const v0, 0x7f050021

    .line 151
    .local v0, "slide_in_from_left":I
    const v1, 0x7f050024

    .line 152
    .local v1, "slide_out_to_right":I
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->overridePendingTransition(II)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 36
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 38
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 39
    const v2, 0x7f040032

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mThemeIcon:Landroid/content/res/TypedArray;

    .line 44
    const v2, 0x7f0b0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mThemeName:[Ljava/lang/String;

    .line 46
    const v2, 0x7f0f00cd

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    iput-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    .line 47
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->setNumColumns(I)V

    .line 48
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    const v3, 0x7f0202ba

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->setSelector(I)V

    .line 49
    invoke-direct {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->addHeaderFooter()V

    .line 50
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    iget-object v3, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    new-instance v2, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    invoke-direct {v2, p0, p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;-><init>(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mAdapter:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    .line 53
    iget-object v2, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mGridView:Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;

    iget-object v3, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mAdapter:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    const v2, 0x7f0f0057

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/home/widget/sys/Title;

    .line 56
    .local v1, "title":Lcom/smartisanos/home/widget/sys/Title;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v2, 0x7f0800f3

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    .line 58
    new-instance v2, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$1;-><init>(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onResume()V

    .line 70
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getCurrentScrollAnimType()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->getAnimIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mCurrentIndex:I

    .line 71
    iget-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->mAdapter:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
