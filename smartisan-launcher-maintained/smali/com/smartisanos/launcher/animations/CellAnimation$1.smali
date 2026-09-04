.class Lcom/smartisanos/launcher/animations/CellAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

.field final synthetic val$time:F


.method constructor <init>(Lcom/smartisanos/launcher/animations/CellAnimation;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    iput p2, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->val$time:F

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$300(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->clearAllAnmiation()V

    .line 194
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$302(Lcom/smartisanos/launcher/animations/CellAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 195
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    sget-object v1, Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;->ROCK_WHEN_UNINSTALL:Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;

    iget v2, p0, Lcom/smartisanos/launcher/animations/CellAnimation$1;->val$time:F

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;F)V

    .line 196
    return-void
.end method
