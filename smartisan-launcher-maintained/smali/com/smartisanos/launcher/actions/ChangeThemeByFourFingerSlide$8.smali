.class final Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->showDialogDownloadTheme(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 221
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;->val$context:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f080082

    .line 223
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080043

    .line 224
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800eb

    new-instance v3, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$2;-><init>(Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080032

    new-instance v3, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$1;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8$1;-><init>(Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide$8;)V

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    .local v0, "downloadThemeDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 244
    return-void
.end method
