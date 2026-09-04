.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateBackgroundAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$2;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 478
    iget-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$2;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->access$1300(Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 479
    return-void
.end method
