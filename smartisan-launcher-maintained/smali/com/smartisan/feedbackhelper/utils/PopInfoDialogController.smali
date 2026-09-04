.class public Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;
.super Ljava/lang/Object;
.source "PopInfoDialogController.java"


.field private static final TAG:Ljava/lang/String;


.field private mContext:Landroid/content/Context;

.field private mInfoDialog:Landroid/app/Dialog;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mContext:Landroid/content/Context;

    sget v2, Lcom/smartisan/feedbackhelper/R$style;->pop_info_dialog_style:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    .line 33
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    return-void
.end method

.method private initTransparentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    sget v0, Lcom/smartisan/feedbackhelper/R$id;->transparent_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController$1;

    invoke-direct {v1, p0}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController$1;-><init>(Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


.method public setupDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->initDialog()V

    .line 40
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->initTransparentView(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setupDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->initDialog()V

    .line 58
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/smartisan/feedbackhelper/R$layout;->setting_item_popup_info_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/smartisan/feedbackhelper/R$id;->popup_info_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "info":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->initTransparentView(Landroid/view/View;)V

    .line 65
    .end local v0    # "info":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->TAG:Ljava/lang/String;

    const-string v1, "plz init the dialog first!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->mInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
