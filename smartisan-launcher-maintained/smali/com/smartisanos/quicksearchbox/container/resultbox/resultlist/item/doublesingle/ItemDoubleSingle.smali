.class public Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
.super Landroid/widget/RelativeLayout;
.source "ItemDoubleSingle.java"

.implements Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$View;


.field private mBaseItemOnClikcListener:Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

.field private mDoubleSingleItemBean:Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

.field private mIcon:Landroid/widget/ImageView;

.field private mPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;

.field private mText:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


.method public create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V
    .locals 1
    .param p1, "doubleSingleItemBean"    # Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setText(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setIconVisible()V

    .line 59
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getBaseItemOnClikcListener()Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$1;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle$2;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setIconGone()V

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "this item cannot be click"

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mText:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "drawable"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/smartisanos/quicksearchbox/util/Util;->bitmapToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method

.method public setIconGone()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public setIconInVisible()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public setIconVisible()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public setLongClickable()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setLongClickable(Z)V

    .line 87
    return-void
.end method

.method public setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;

    .line 137
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingleContract$Presenter;)V

    return-void
.end method

.method public setText(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setUnLongClickable()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setLongClickable(Z)V

    .line 92
    return-void
.end method
