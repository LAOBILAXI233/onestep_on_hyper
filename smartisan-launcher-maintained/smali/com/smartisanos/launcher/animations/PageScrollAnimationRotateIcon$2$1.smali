.class Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2$1;
.super Ljava/lang/Object;
.source "PageScrollAnimationRotateIcon.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2$1;->this$1:Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 222
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 223
    return-void
.end method
