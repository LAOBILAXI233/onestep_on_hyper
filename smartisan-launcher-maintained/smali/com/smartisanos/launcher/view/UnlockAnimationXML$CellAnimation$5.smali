.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateAnimation()V
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
    .line 718
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$5;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBeforeUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sn is null, crash!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    check-cast p1, Lcom/smartisanos/launcher/view/Cell;

    .end local p1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->updateUnlockAnimationOneFrame()V

    .line 728
    :cond_1
    return-void
.end method
