.class final Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$4;
.super Ljava/lang/Object;
.source "DownloadEmbeddedApp.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->showNetworkIsClosedDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 181
    return-void
.end method
