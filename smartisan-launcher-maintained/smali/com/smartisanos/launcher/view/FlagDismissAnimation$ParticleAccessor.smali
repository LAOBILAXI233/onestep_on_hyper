.class Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;
.super Ljava/lang/Object;
.source "FlagDismissAnimation.java"

.implements Laurelienribon/tweenengine/TweenAccessor;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/FlagDismissAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParticleAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/smartisanos/launcher/view/FlagDismissAnimation;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;->this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getValues(Lcom/smartisanos/launcher/view/FlagDismissAnimation;I[F)I
    .locals 2
    .param p1, "target"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->getProgress()F

    move-result v1

    aput v1, p3, v0

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    .prologue
    .line 281
    check-cast p1, Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;->getValues(Lcom/smartisanos/launcher/view/FlagDismissAnimation;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/smartisanos/launcher/view/FlagDismissAnimation;I[F)V
    .locals 1
    .param p1, "target"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 291
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->setProgress(F)V

    .line 292
    return-void
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    .prologue
    .line 281
    check-cast p1, Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/FlagDismissAnimation$ParticleAccessor;->setValues(Lcom/smartisanos/launcher/view/FlagDismissAnimation;I[F)V

    return-void
.end method
