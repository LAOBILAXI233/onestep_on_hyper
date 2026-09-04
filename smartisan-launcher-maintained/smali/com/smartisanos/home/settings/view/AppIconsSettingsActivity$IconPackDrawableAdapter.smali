.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppIconsSettingsActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconPackDrawableAdapter"
.end annotation


.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:I

.field private mSize:I

.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "items"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mItems:Ljava/util/ArrayList;

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mSize:I

    const/16 v0, 0x6

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mPadding:I

    return-void
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method


.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_new_view

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    goto :goto_bind

    :cond_new_view
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mSize:I

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mPadding:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v1, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    :goto_bind
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconPackDrawableAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
