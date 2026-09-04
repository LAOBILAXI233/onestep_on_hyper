.class final Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$6;
.super Ljava/lang/Object;
.source "DownloadEmbeddedApp.java"

.implements Landroid/content/DialogInterface$OnCancelListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->showConfirmDialog(Lcom/smartisanos/home/apps/EmbeddedApp;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 253
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 254
    return-void
.end method
