.class final Lcom/smartisanos/launcher/animations/PageScrollAnimationList$1;
.super Lcom/smartisanos/smengine/Event;
.source "PageScrollAnimationList.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationList;->onScrollAnimationTypeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 13
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationList;->getScrollAnimation(I)Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    .line 14
    .local v0, "psa":Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/DragLayer;->switchScrollAnimation(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V

    .line 15
    return-void
.end method
