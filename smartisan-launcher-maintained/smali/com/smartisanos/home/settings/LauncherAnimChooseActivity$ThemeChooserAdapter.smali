.class Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;
.super Lcom/smartisanos/home/settings/SettingsAdapter;
.source "LauncherAnimChooseActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeChooserAdapter"
.end annotation


.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;


.method public constructor <init>(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/SettingsAdapter;-><init>()V

    .line 102
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    return-void
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$200(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    new-instance v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;

    invoke-direct {v0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;-><init>()V

    .line 125
    .local v0, "holder":Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;
    iget-object v1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04002d

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 126
    const v1, 0x7f0f002f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 127
    const v1, 0x7f0f00bd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0f00be

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->current:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0f00bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->checked:Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->getCount()I

    move-result v1

    invoke-static {p1, v1, p2}, Lcom/smartisanos/launcher/data/Utils;->setBackgroundForGridItemChooser(IILandroid/view/View;)V

    .line 137
    iget-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v3}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$300(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v3}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$200(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v3, v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;->checked:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->this$0:Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;->access$100(Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ThemeChooserAdapter;->getCount()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_visible

    const/4 v1, 0x7

    if-ne p1, v1, :cond_visible

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_done

    :cond_visible
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_done
    return-object p2

    .line 132
    .end local v0    # "holder":Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/smartisanos/home/settings/LauncherAnimChooseActivity$ViewHolder;
    goto :goto_0

    .line 140
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
