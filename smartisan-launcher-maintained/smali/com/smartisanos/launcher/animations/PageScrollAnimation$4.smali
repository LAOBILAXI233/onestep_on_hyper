.class Lcom/smartisanos/launcher/animations/PageScrollAnimation$4;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimation;->pressedHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$4;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 450
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 451
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 452
    return-void
.end method
