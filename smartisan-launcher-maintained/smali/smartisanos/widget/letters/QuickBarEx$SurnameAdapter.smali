.class final Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickBarEx.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/letters/QuickBarEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SurnameAdapter"
.end annotation


.field private context:Landroid/content/Context;

.field private surnames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method public constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p3, "surnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1306
    iput-object p2, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->context:Landroid/content/Context;

    .line 1307
    iput-object p3, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    .line 1310
    return-void
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1320
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1325
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1330
    if-nez p2, :cond_0

    .line 1331
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lsmartisanos/widget/R$layout;->surname_popup_item_ex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1332
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v3}, Lsmartisanos/widget/letters/QuickBarEx;->access$2000(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v3

    iget-object v4, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v4}, Lsmartisanos/widget/letters/QuickBarEx;->access$2100(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    :cond_0
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v2}, Lsmartisanos/widget/letters/QuickBarEx;->access$2200(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v2

    rem-int v1, p1, v2

    .line 1336
    .local v1, "offset":I
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1337
    sget v2, Lsmartisanos/widget/R$drawable;->surname_popup_item_special:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    move-object v0, p2

    .line 1346
    check-cast v0, Landroid/widget/TextView;

    .line 1348
    .local v0, "content":Landroid/widget/TextView;
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->surnames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    return-object p2

    .line 1338
    .end local v0    # "content":Landroid/widget/TextView;
    :cond_1
    if-nez v1, :cond_2

    .line 1339
    sget v2, Lsmartisanos/widget/R$drawable;->surname_popup_item_right:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1340
    :cond_2
    iget-object v2, p0, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v2}, Lsmartisanos/widget/letters/QuickBarEx;->access$2200(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx$SurnameAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    .line 1341
    :cond_3
    sget v2, Lsmartisanos/widget/R$drawable;->surname_popup_item_left:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1343
    :cond_4
    sget v2, Lsmartisanos/widget/R$drawable;->surname_popup_item_middle:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
