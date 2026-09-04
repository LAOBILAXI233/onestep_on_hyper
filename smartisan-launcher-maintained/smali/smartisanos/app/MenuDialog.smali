.class public Lsmartisanos/app/MenuDialog;
.super Landroid/app/Dialog;
.source "MenuDialog.java"


.field public static final ONE_HAND_MODE:Ljava/lang/String; = "one_hand_mode"


.field private mCancelButtonLeft:Landroid/widget/TextView;

.field private mCancelButtonRight:Landroid/widget/TextView;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mOkBtn:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    sget v0, Lsmartisanos/widget/R$style;->MenuDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v1, p0, Lsmartisanos/app/MenuDialog;->mTitle:Landroid/widget/TextView;

    .line 24
    iput-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    .line 94
    new-instance v0, Lsmartisanos/app/MenuDialog$1;

    invoke-direct {v0, p0}, Lsmartisanos/app/MenuDialog$1;-><init>(Lsmartisanos/app/MenuDialog;)V

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lsmartisanos/app/MenuDialog;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lsmartisanos/app/MenuDialog;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    sget v0, Lsmartisanos/widget/R$layout;->menu_dialog:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->setContentView(I)V

    .line 50
    sget v0, Lsmartisanos/widget/R$id;->title:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mTitle:Landroid/widget/TextView;

    .line 52
    sget v0, Lsmartisanos/widget/R$id;->btn_cancel_right:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lsmartisanos/widget/R$id;->btn_cancel_left:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lsmartisanos/app/MenuDialog;->initLeftRightHands()V

    .line 58
    sget v0, Lsmartisanos/widget/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    .line 59
    sget v0, Lsmartisanos/widget/R$id;->content_list:I

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    .line 60
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 62
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 63
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 65
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisanos/app/MenuDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    return-void
.end method

.method private initLeftRightHands()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x1

    .line 75
    .local v0, "value":I
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_hand_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    if-nez v0, :cond_1

    .line 86
    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_1
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0
.end method


.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0}, Lsmartisanos/app/MenuDialog;->initLeftRightHands()V

    .line 179
    :cond_0
    return-void
.end method

.method public setAdaper(Lsmartisanos/app/MenuDialogMultiAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "adapter"    # Lsmartisanos/app/MenuDialogMultiAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 110
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lsmartisanos/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisanos/widget/R$dimen;->menu_dialog_multi_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    sget v1, Lsmartisanos/widget/R$drawable;->menu_dialog_multi_list_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 116
    return-void
.end method

.method public setAdapter(Lsmartisanos/app/MenuDialogListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lsmartisanos/app/MenuDialogListAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mListView:Landroid/widget/ListView;

    sget v1, Lsmartisanos/widget/R$drawable;->menu_dialog_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 106
    invoke-virtual {p1, p0}, Lsmartisanos/app/MenuDialogListAdapter;->setDialog(Landroid/app/Dialog;)V

    .line 107
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 123
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lsmartisanos/app/MenuDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method public setNegativeButton(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 127
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonRight:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mCancelButtonLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 153
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lsmartisanos/app/MenuDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 157
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    new-instance v1, Lsmartisanos/app/MenuDialog$2;

    invoke-direct {v1, p0, p2}, Lsmartisanos/app/MenuDialog$2;-><init>(Lsmartisanos/app/MenuDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public setPositiveButtonGone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public setPositiveRedBg(Z)V
    .locals 2
    .param p1, "isRedBackground"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    sget v1, Lsmartisanos/widget/R$drawable;->menu_dialog_button_red:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mOkBtn:Landroid/widget/TextView;

    sget v1, Lsmartisanos/widget/R$drawable;->menu_dialog_button_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public setTitleSinleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lsmartisanos/app/MenuDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 46
    return-void
.end method
