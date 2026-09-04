.class public Lcom/smartisan/feedbackhelper/utils/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "icon"    # I
    .param p4, "btn1"    # I
    .param p5, "btn1Listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 39
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-lez p2, :cond_0

    .line 42
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    :cond_0
    if-lez p3, :cond_1

    .line 44
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 45
    :cond_1
    if-lez p4, :cond_2

    .line 46
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "icon"    # I
    .param p4, "btn1"    # I
    .param p5, "btn1Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "btn2"    # I
    .param p7, "btn2Listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-lez p2, :cond_0

    .line 56
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_0
    if-lez p3, :cond_1

    .line 58
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_1
    if-lez p4, :cond_2

    .line 60
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :cond_2
    if-lez p6, :cond_3

    .line 62
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "icon"    # I
    .param p4, "btn1"    # I
    .param p5, "btn1Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "btn2"    # I
    .param p7, "btn2Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "btn3"    # I
    .param p9, "btn3Listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-lez p2, :cond_0

    .line 90
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    :cond_0
    if-lez p3, :cond_1

    .line 92
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 93
    :cond_1
    if-lez p4, :cond_2

    .line 94
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    :cond_2
    if-lez p6, :cond_3

    .line 96
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    :cond_3
    if-lez p8, :cond_4

    .line 98
    invoke-virtual {v0, p8, p9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "icon"    # I
    .param p4, "btn1"    # I
    .param p5, "btn1Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "btn2"    # I
    .param p7, "btn2Listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "customView"    # Landroid/view/View;

    .prologue
    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 70
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    if-eqz p8, :cond_0

    .line 72
    invoke-virtual {v0, p8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_0
    if-lez p2, :cond_1

    .line 74
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 75
    :cond_1
    if-lez p3, :cond_2

    .line 76
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_2
    if-lez p4, :cond_3

    .line 78
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_3
    if-lez p6, :cond_4

    .line 80
    invoke-virtual {v0, p6, p7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createDialog(Landroid/content/Context;IIIZ)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "title"    # I
    .param p3, "icon"    # I
    .param p4, "cancelable"    # Z

    .prologue
    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;IIZ)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # I
    .param p2, "icon"    # I
    .param p3, "cancelable"    # Z

    .prologue
    .line 24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/smartisan/feedbackhelper/R$style;->FeedBackAlertDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
