.class public Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;
.super Landroid/widget/RelativeLayout;
.source "SelectCountryItemView.java"


.field private mCountryCode:Landroid/widget/TextView;

.field private mCountryName:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p2, p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->initView(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private initView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/16 v6, 0x10

    const/high16 v5, 0x41800000    # 16.0f

    const/16 v4, 0xf

    const/4 v3, -0x2

    .line 23
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 24
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 23
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 33
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 48
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    const v1, -0xaf8251

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->addView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->mCountryCode:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


.method public updateContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
