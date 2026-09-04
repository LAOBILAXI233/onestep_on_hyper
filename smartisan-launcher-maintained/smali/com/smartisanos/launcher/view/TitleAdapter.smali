.class Lcom/smartisanos/launcher/view/TitleAdapter;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

.implements Landroid/widget/ListAdapter;


.field private mContext:Landroid/content/Context;

.field private mTextSize:F

.field private mTitleStrings:[Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ResIds$array;->pre_title_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTitleStrings:[Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTextSize:F

    .line 134
    return-void
.end method


.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTitleStrings:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTitleStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, "textView":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 180
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 181
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 182
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    sget v2, Lcom/smartisanos/launcher/ResIds$drawable;->page_title_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 184
    const/high16 v2, 0x66000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget v2, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 186
    iget-object v2, p0, Lcom/smartisanos/launcher/view/TitleAdapter;->mTitleStrings:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 187
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 149
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 154
    return-void
.end method
