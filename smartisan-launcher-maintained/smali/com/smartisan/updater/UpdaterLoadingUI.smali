.class public Lcom/smartisan/updater/UpdaterLoadingUI;
.super Ljava/lang/Object;
.source "UpdaterLoadingUI.java"

.implements Lcom/smartisan/updater/UpdateUI;


.field private mDialog:Landroid/app/ProgressDialog;


.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/smartisan/updater/UpdaterLoadingUI;->mDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public checkContinue()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisan/updater/UpdaterLoadingUI;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public checkComplete()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisan/updater/UpdaterLoadingUI;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/updater/UpdaterLoadingUI;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
