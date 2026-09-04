.class public Lcom/smartisanos/home/widget/sys/CopyActionMenu;
.super Ljava/lang/Object;
.source "CopyActionMenu.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;
    }
.end annotation


.field mContext:Landroid/content/Context;

.field private mItemsClickListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuDialog:Lsmartisanos/app/MenuDialog;

.field private mMenuDialogListAdapter:Lsmartisanos/app/MenuDialogListAdapter;

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mItemsClickListeners:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mTitles:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->buildDialog()V

    .line 29
    return-void
.end method

.method private addActionItem(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "res"    # I
    .param p2, "cl"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mItemsClickListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildDialog()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lsmartisanos/app/MenuDialog;

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisanos/app/MenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    .line 92
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    new-instance v0, Lsmartisanos/app/MenuDialogListAdapter;

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mTitles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mItemsClickListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lsmartisanos/app/MenuDialogListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialogListAdapter:Lsmartisanos/app/MenuDialogListAdapter;

    .line 95
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialogListAdapter:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-virtual {v0, v1}, Lsmartisanos/app/MenuDialog;->setAdapter(Lsmartisanos/app/MenuDialogListAdapter;)V

    .line 96
    return-void
.end method


.method public addActionItem(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;>;"
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mItemsClickListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialogListAdapter:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-virtual {v1}, Lsmartisanos/app/MenuDialogListAdapter;->notifyDataSetChanged()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;

    .line 74
    .local v0, "menuItem":Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;
    iget v2, v0, Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;->title:I

    iget-object v3, v0, Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;->ocl:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->addActionItem(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    .end local v0    # "menuItem":Lcom/smartisanos/home/widget/sys/CopyActionMenu$ActionItem;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialogListAdapter:Lsmartisanos/app/MenuDialogListAdapter;

    invoke-virtual {v1}, Lsmartisanos/app/MenuDialogListAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->dismiss()V

    .line 41
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->hide()V

    .line 37
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0, p1}, Lsmartisanos/app/MenuDialog;->setTitle(I)V

    .line 60
    return-void
.end method

.method public setMenuTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleStr"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0, p1}, Lsmartisanos/app/MenuDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setNegativeButton(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0, p1}, Lsmartisanos/app/MenuDialog;->setNegativeButton(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0, p1}, Lsmartisanos/app/MenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/CopyActionMenu;->mMenuDialog:Lsmartisanos/app/MenuDialog;

    invoke-virtual {v0}, Lsmartisanos/app/MenuDialog;->show()V

    .line 33
    return-void
.end method
