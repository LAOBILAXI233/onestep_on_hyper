.class final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPackChoiceSupport.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChoiceAdapter"
.end annotation


.field private final activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field private final context:Landroid/content/Context;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;"
        }
    .end annotation
.end field

.field private final showLabel:Z


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;Z)V"
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .line 361
    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    .line 362
    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->items:Ljava/util/ArrayList;

    .line 363
    iput-boolean p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->showLabel:Z

    .line 364
    return-void
.end method


.method public getCount()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 373
    instance-of p3, p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 374
    check-cast p2, Landroid/widget/LinearLayout;

    .line 375
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 376
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    .line 378
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 381
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->showLabel:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7c

    goto :goto_0

    :cond_1
    const/16 v3, 0x68

    :goto_0
    invoke-static {v2, v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->access$200(Landroid/content/Context;I)I

    move-result v2

    .line 382
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 384
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 385
    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->showLabel:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x50

    goto :goto_1

    :cond_2
    const/16 v4, 0x54

    :goto_1
    invoke-static {v3, v4}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->access$200(Landroid/content/Context;I)I

    move-result v3

    .line 386
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-boolean v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->showLabel:Z

    if-eqz v3, :cond_3

    .line 388
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 391
    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 392
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p3, v2

    goto :goto_2

    .line 394
    :cond_3
    move-object p3, v2

    .line 397
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    .line 398
    iget-object v1, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 399
    :goto_3
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    if-eqz v0, :cond_6

    iget-object p3, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->label:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_6
    iget-object p3, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->label:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 402
    return-object p2
.end method

.method setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;)V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->notifyDataSetChanged()V

    return-void
.end method
