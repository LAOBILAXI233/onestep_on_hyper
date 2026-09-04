.class Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


.field public static final BG_BOTTOM:I = 0x4

.field public static final BG_MIDDLE:I = 0x3

.field public static final BG_SINGLE:I = 0x1

.field public static final BG_TOP:I = 0x2


.field public downloadingProgress:Landroid/widget/FrameLayout;

.field public downloadingText:Landroid/widget/TextView;

.field public phonePreviewLayout:Landroid/widget/FrameLayout;

.field public themeName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

.field public thumbnail:Landroid/widget/ImageView;

.field public view:Landroid/view/View;


.method private constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->this$1:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;Lcom/smartisanos/home/settings/ThemeChooserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;
    .param p2, "x1"    # Lcom/smartisanos/home/settings/ThemeChooserActivity$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;)V

    return-void
.end method


.method public setBackground(IZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "isLeft"    # Z

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 517
    :goto_0
    if-lez v0, :cond_0

    .line 518
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    :cond_0
    return-void

    .line 485
    :pswitch_0
    if-eqz p2, :cond_1

    .line 486
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_single_left:I

    goto :goto_0

    .line 488
    :cond_1
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_single_right:I

    .line 490
    goto :goto_0

    .line 493
    :pswitch_1
    if-eqz p2, :cond_2

    .line 494
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_top_left:I

    goto :goto_0

    .line 496
    :cond_2
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_top_right:I

    .line 498
    goto :goto_0

    .line 501
    :pswitch_2
    if-eqz p2, :cond_3

    .line 502
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_mid_left:I

    goto :goto_0

    .line 504
    :cond_3
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_mid_right:I

    .line 506
    goto :goto_0

    .line 509
    :pswitch_3
    if-eqz p2, :cond_4

    .line 510
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_bottom_left:I

    goto :goto_0

    .line 512
    :cond_4
    sget v0, Lcom/smartisanos/launcher/ResIds$drawable;->selector_theme_list_item_bottom_right:I

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 4
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 458
    if-nez p1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->phonePreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->phonePreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 467
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->phonePreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->themeName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :cond_1
    iget v0, p1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->themeName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->this$1:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    iget-object v1, v1, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$700(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Lcom/smartisanos/launcher/theme/DrawableCache;

    move-result-object v1

    iget-object v2, p1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/theme/DrawableCache;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
