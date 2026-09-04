.class final Lcom/smartisanos/launcher/actions/UninstallApp$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp;->sendWaitingUninstallAppBackNoAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 124
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "cancelActionEvent set mUninstallDialog to be null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 126
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->restoreFromPending()V

    .line 127
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 130
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/actions/UninstallApp$1$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$1$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$1;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
