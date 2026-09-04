.class Lcom/smartisanos/launcher/view/TrashView$1;
.super Ljava/lang/Object;
.source "TrashView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TrashView;->handleUninstallFinish(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TrashView;


.method constructor <init>(Lcom/smartisanos/launcher/view/TrashView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TrashView;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView$1;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 297
    :cond_0
    return-void
.end method
