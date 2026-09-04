.class public Lcom/smartisanos/home/widget/sys/SelectOptionsView;
.super Landroid/widget/LinearLayout;
.source "SelectOptionsView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;
    }
.end annotation


.field private mAnimNameArray:[Ljava/lang/String;

.field private mOptionsSelectedCallback:Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;

.field private mOriginIndex:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    .line 30
    return-void
.end method

.method private updateViewTitle()V
    .locals 3

    .prologue
    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;

    .line 78
    .local v0, "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    iget v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    if-ne v1, v2, :cond_0

    .line 79
    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setTitle(I)V

    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    .end local v0    # "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    :cond_1
    return-void
.end method


.method public initView(II)V
    .locals 15
    .param p1, "imageArrayId"    # I
    .param p2, "nameArrayId"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    .local v1, "animIconArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    iget-object v13, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    array-length v13, v13

    if-eq v12, v13, :cond_0

    .line 36
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "got different array size between images and names!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 38
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 39
    new-instance v5, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;

    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v5, "itemView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900d0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 41
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090119

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 42
    .local v2, "height":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x1

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09011a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 45
    invoke-virtual {v5, v7}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900cf

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 50
    .local v10, "topPadding":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v4, "iconAreaParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53
    invoke-virtual {v5}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->getIconAreaFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ce

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 56
    .local v8, "titleMarginTop":I
    invoke-virtual {v5}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v9

    .line 57
    .local v9, "titleView":Landroid/widget/TextView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v6, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v8, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v12, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mAnimNameArray:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v5, v12}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setItemImage(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v12, 0x7f020178

    invoke-virtual {v5, v12}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setSelectedImageRes(I)V

    .line 64
    invoke-virtual {v5, p0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 68
    .end local v2    # "height":I
    .end local v4    # "iconAreaParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "itemView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    .end local v6    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "titleMarginTop":I
    .end local v9    # "titleView":Landroid/widget/TextView;
    .end local v10    # "topPadding":I
    .end local v11    # "width":I
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    instance-of v2, p1, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;

    if-eqz v2, :cond_4

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 101
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;

    .line 102
    .local v0, "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    if-ne v0, p1, :cond_2

    .line 103
    iget v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    if-ne v1, v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setActive(ZZ)V

    .line 104
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOptionsSelectedCallback:Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOptionsSelectedCallback:Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;

    invoke-interface {v2, v1}, Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;->onSelectIndex(I)V

    .line 100
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 103
    goto :goto_1

    .line 108
    :cond_2
    iget v2, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    if-ne v1, v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v0, v4, v2}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setActive(ZZ)V

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    .line 112
    .end local v0    # "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->indexOfChild(Landroid/view/View;)I

    .line 113
    return-void
.end method

.method public setCallback(Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOptionsSelectedCallback:Lcom/smartisanos/home/widget/sys/SelectOptionsView$OptionsSelectedCallback;

    .line 88
    return-void
.end method

.method public setOriginIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    .line 72
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->updateViewTitle()V

    .line 73
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;

    .line 93
    .local v0, "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    if-ne p1, v1, :cond_0

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/smartisanos/home/widget/sys/SelectOptionsView;->mOriginIndex:I

    if-ne v1, v5, :cond_1

    move v5, v3

    :goto_2
    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setActive(ZZ)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 93
    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    .line 95
    .end local v0    # "childView":Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
    :cond_2
    return-void
.end method
