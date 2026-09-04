.class public Lcom/sina/weibo/sdk/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlert(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sina/weibo/sdk/utils/UIUtils;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 47
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_0
    return-void
.end method

.method public static showToastInCenter(Landroid/content/Context;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 98
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_0
    return-void
.end method
