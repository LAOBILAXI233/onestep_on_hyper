.class Lcom/smartisanos/launcher/actions/UninstallApp$1$1;
.super Ljava/lang/Object;
.source "UninstallApp.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/UninstallApp$1;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/UninstallApp$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$1$1;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    :cond_0
    return-void
.end method
