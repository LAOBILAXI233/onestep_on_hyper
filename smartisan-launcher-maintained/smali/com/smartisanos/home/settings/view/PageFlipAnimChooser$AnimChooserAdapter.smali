.class Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;
.super Lcom/smartisanos/home/settings/SettingsAdapter;
.source "PageFlipAnimChooser.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimChooserAdapter"
.end annotation


.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;


.method public constructor <init>(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/SettingsAdapter;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->access$000(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 137
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

    .line 143
    if-nez p2, :cond_0

    .line 144
    new-instance v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;

    invoke-direct {v0}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;-><init>()V

    .line 145
    .local v0, "holder":Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;
    new-instance p2, Lcom/smartisanos/home/settings/SettingItemCheck;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-direct {p2, v1}, Lcom/smartisanos/home/settings/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 146
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p2

    .line 148
    check-cast v1, Lcom/smartisanos/home/settings/SettingItemCheck;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/SettingItemCheck;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object v1, p2

    .line 149
    check-cast v1, Lcom/smartisanos/home/settings/SettingItemCheck;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/SettingItemCheck;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;->name:Landroid/widget/TextView;

    .line 150
    iget-object v1, v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->access$100(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->getAnimIndexFromValue(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    move-object v1, p2

    .line 157
    check-cast v1, Lcom/smartisanos/home/settings/SettingItemCheck;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/SettingItemCheck;->setChecked(Z)V

    .line 161
    :goto_1
    iget-object v1, v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->access$200(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v2}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->access$000(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->this$0:Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;->access$000(Lcom/smartisanos/home/settings/view/PageFlipAnimChooser;)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$AnimChooserAdapter;->getBackgroundRes(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    return-object p2

    .line 153
    .end local v0    # "holder":Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;

    .restart local v0    # "holder":Lcom/smartisanos/home/settings/view/PageFlipAnimChooser$ViewHolder;
    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 159
    check-cast v1, Lcom/smartisanos/home/settings/SettingItemCheck;

    invoke-virtual {v1, v5}, Lcom/smartisanos/home/settings/SettingItemCheck;->setChecked(Z)V

    goto :goto_1
.end method
