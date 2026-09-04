.class public Lsmartisanos/app/MenuDialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuDialogListAdapter.java"


.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Ljava/util/List;, "Ljava/util/List<Landroid/view/View$OnClickListener;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->list:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->listener:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lsmartisanos/app/MenuDialogListAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lsmartisanos/app/MenuDialogListAdapter;->list:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lsmartisanos/app/MenuDialogListAdapter;->listener:Ljava/util/List;

    .line 33
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 36
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lsmartisanos/app/MenuDialogListAdapter;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/app/MenuDialogListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lsmartisanos/app/MenuDialogListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/app/MenuDialogListAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->listener:Ljava/util/List;

    return-object v0
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lsmartisanos/app/MenuDialogListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    iget-object v1, p0, Lsmartisanos/app/MenuDialogListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lsmartisanos/widget/R$layout;->menu_dialog_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "button":Landroid/widget/TextView;
    iget-object v1, p0, Lsmartisanos/app/MenuDialogListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v1, Lsmartisanos/app/MenuDialogListAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lsmartisanos/app/MenuDialogListAdapter$1;-><init>(Lsmartisanos/app/MenuDialogListAdapter;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object p2
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 39
    iput-object p1, p0, Lsmartisanos/app/MenuDialogListAdapter;->dialog:Landroid/app/Dialog;

    .line 40
    return-void
.end method
