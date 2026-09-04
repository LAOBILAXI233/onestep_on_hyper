.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->generateBatchShadow()V
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
    .line 394
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation$1;->this$1:Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellAnimation;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->access$200(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 399
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
