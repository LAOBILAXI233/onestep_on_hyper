.class public Lcom/smartisanos/launcher/view/EditTitleDialog;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"


.field private static log:Lcom/smartisanos/launcher/LOG;


.field mContext:Landroid/content/Context;

.field mEditPageTitleDialog:Landroid/app/Dialog;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/EditTitleDialog;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


.method public dismiss()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    .line 121
    return-void
.end method

.method public show(Lcom/smartisanos/launcher/view/Page;)V
    .locals 10
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 44
    iget-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 45
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/view/EditTitleDialog;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "A140"

    const-string v9, "showEditPageTitleDialog is not null"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "currentTitle":Ljava/lang/String;
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mContext:Landroid/content/Context;

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 51
    .local v6, "themeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 53
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/smartisanos/launcher/ResIds$layout;->pre_title_layout:I

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "layout":Landroid/view/View;
    sget v7, Lcom/smartisanos/launcher/ResIds$id;->pre_title_edittext:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 55
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 57
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 60
    sget v7, Lcom/smartisanos/launcher/ResIds$id;->pre_title_gridview:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 61
    .local v3, "gridView":Landroid/widget/GridView;
    new-instance v0, Lcom/smartisanos/launcher/view/TitleAdapter;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/smartisanos/launcher/view/TitleAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "adapter":Lcom/smartisanos/launcher/view/TitleAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    new-instance v7, Lcom/smartisanos/launcher/view/EditTitleDialog$1;

    invoke-direct {v7, p0, v2}, Lcom/smartisanos/launcher/view/EditTitleDialog$1;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->enter_page_title:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->ok:I

    new-instance v9, Lcom/smartisanos/launcher/view/EditTitleDialog$5;

    invoke-direct {v9, p0, v2, p1}, Lcom/smartisanos/launcher/view/EditTitleDialog$5;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog;Landroid/widget/EditText;Lcom/smartisanos/launcher/view/Page;)V

    .line 76
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->cancel:I

    new-instance v9, Lcom/smartisanos/launcher/view/EditTitleDialog$4;

    invoke-direct {v9, p0}, Lcom/smartisanos/launcher/view/EditTitleDialog$4;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog;)V

    .line 95
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/view/EditTitleDialog$3;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/EditTitleDialog$3;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog;)V

    .line 100
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/view/EditTitleDialog$2;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/EditTitleDialog$2;-><init>(Lcom/smartisanos/launcher/view/EditTitleDialog;)V

    .line 105
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    .line 112
    iget-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 113
    iget-object v7, p0, Lcom/smartisanos/launcher/view/EditTitleDialog;->mEditPageTitleDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
