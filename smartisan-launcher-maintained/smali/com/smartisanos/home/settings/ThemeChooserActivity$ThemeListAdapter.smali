.class Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeChooserActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;
    }
.end annotation


.field public static final TYPE_INSTALLED:I = 0x1

.field public static final TYPE_NOT_INSTALLED:I = 0x2


.field private mContext:Landroid/content/Context;

.field public mType:I

.field final synthetic this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.method public constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;Landroid/content/Context;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 345
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mType:I

    .line 346
    iput-object p2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mContext:Landroid/content/Context;

    .line 347
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown adapter type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iput p3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mType:I

    .line 351
    return-void
.end method

.method private setBackground(ILcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "holder"    # Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->getCount()I

    move-result v4

    .line 424
    .local v4, "themeCount":I
    const/4 v1, 0x0

    .line 425
    .local v1, "isLeft":Z
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_0

    .line 426
    const/4 v1, 0x1

    .line 428
    :cond_0
    div-int/lit8 v2, v4, 0x2

    .line 429
    .local v2, "rowCount":I
    div-int/lit8 v3, p1, 0x2

    .line 430
    .local v3, "rowIndex":I
    const/4 v0, 0x3

    .line 431
    .local v0, "bgType":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 432
    const/4 v0, 0x1

    .line 440
    :cond_1
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->setBackground(IZ)V

    .line 441
    return-void

    .line 434
    :cond_2
    if-nez v3, :cond_3

    .line 435
    const/4 v0, 0x2

    goto :goto_0

    .line 436
    :cond_3
    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_1

    .line 437
    const/4 v0, 0x4

    goto :goto_0
.end method


.method public getCount()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "count":I
    iget v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 366
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 369
    :cond_0
    return v0

    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$400(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 359
    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$500(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(I)Lcom/smartisanos/launcher/theme/Theme;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    iget v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 385
    :goto_0
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 387
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 388
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 391
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 377
    :pswitch_0
    iget-object v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v2}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$400(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;

    move-result-object v0

    .line 378
    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v2}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$500(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->getItem(I)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 396
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 402
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->getItem(I)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 404
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz p2, :cond_0

    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$layout;->theme_preview_block:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;Lcom/smartisanos/home/settings/ThemeChooserActivity$1;)V

    .line 407
    .local v0, "holder":Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;
    iput-object v2, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->view:Landroid/view/View;

    .line 408
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->phone_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->phonePreviewLayout:Landroid/widget/FrameLayout;

    .line 409
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_preview_block:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 410
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_name_preview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->themeName:Landroid/widget/TextView;

    .line 411
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_block_downloading_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingProgress:Landroid/widget/FrameLayout;

    .line 412
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_downloading_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->downloadingText:Landroid/widget/TextView;

    .line 413
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 417
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->setTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->setBackground(ILcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;)V

    .line 419
    iget-object v3, v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;->view:Landroid/view/View;

    return-object v3

    .line 415
    .end local v0    # "holder":Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter$ViewHolder;
    goto :goto_0
.end method
