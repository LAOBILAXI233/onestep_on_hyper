.class Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeInListener"
.end annotation


.field private mpc:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    .line 105
    return-void
.end method


.method public onBegin()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 109
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 113
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeInListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setIsEnableBlend(Z)V

    .line 115
    return-void
.end method
