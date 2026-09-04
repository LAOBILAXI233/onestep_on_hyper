.class public Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;
.super Landroid/app/Dialog;
.source "SmartisanProgressDialog.java"


.field private mContext:Landroid/content/Context;

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const v0, 0x7f0a00cf

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    new-instance v0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "dialog":Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;
    invoke-virtual {v0, p1}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, p2}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->show()V

    .line 41
    return-object v0
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x20000

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04006b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f0162

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0f0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 52
    const v2, 0x7f0f0164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 54
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 66
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setIndeterminateDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method
