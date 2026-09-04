.class public Landroid/app/SmartisanProgressDialog;
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
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Landroid/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/SmartisanProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    new-instance v0, Landroid/app/SmartisanProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/SmartisanProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "dialog":Landroid/app/SmartisanProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/app/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/SmartisanProgressDialog;->show()V

    .line 43
    return-object v0
.end method


.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x20000

    const/4 v4, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lsmartisanos/widget/R$layout;->smartisan_progress_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    sget v2, Lsmartisanos/widget/R$id;->progress_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    .line 53
    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 54
    sget v2, Lsmartisanos/widget/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 56
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/app/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/app/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_1
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Landroid/app/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/app/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/app/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    invoke-virtual {p0}, Landroid/app/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 68
    invoke-virtual {p0}, Landroid/app/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/SmartisanProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 70
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Landroid/app/SmartisanProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setIndeterminateDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 88
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/SmartisanProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/SmartisanProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-object p1, p0, Landroid/app/SmartisanProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/SmartisanProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Landroid/app/SmartisanProgressDialog;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Landroid/app/SmartisanProgressDialog;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method
