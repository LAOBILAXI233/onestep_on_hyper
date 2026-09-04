.class public Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "PageFlipAnimChooser.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;,
        Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;
    }
.end annotation


.field private mAdapter:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;

.field private mAnimArray:[Ljava/lang/String;

.field private mAnimIcon:Landroid/content/res/TypedArray;

.field private mCurrentAnim:I

.field private final mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$2;-><init>(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAnimIcon:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    .prologue
    .line 29
    iget v0, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mCurrentAnim:I

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAnimArray:[Ljava/lang/String;

    return-object v0
.end method

.method private addHeaderFooter()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-static {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "transparentHeaderView":Landroid/view/View;
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 109
    invoke-static {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "footer":Landroid/view/View;
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 112
    .end local v0    # "footer":Landroid/view/View;
    .end local v1    # "transparentHeaderView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static getValueFromPosition(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 92
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 98
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


.method public finish()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 86
    const v0, 0x7f050021

    .line 87
    .local v0, "slide_in_from_left":I
    const v1, 0x7f050024

    .line 88
    .local v1, "slide_out_to_right":I
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->overridePendingTransition(II)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 42
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 43
    const v2, 0x7f04004c

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 46
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAnimIcon:Landroid/content/res/TypedArray;

    .line 48
    const v2, 0x7f0b0063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAnimArray:[Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getCurrentScrollAnimType()I

    move-result v2

    iput v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mCurrentAnim:I

    .line 51
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    .line 52
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->addHeaderFooter()V

    .line 53
    new-instance v2, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;

    invoke-direct {v2, p0, p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;-><init>(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAdapter:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;

    .line 54
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mAdapter:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    const v2, 0x7f0f0100

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/home/widget/sys/Title;

    .line 59
    .local v1, "title":Lcom/smartisanos/home/widget/sys/Title;
    new-instance v2, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$1;-><init>(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x7f0800a4

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonTextByIntent(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
