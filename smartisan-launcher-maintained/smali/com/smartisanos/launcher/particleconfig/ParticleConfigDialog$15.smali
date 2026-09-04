.class Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;
.super Lcom/smartisanos/smengine/Event;
.source "ParticleConfigDialog.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->generateFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

.field final synthetic val$itemID:I


.method constructor <init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;
    .param p2, "type"    # I

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    iput p3, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;->val$itemID:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 317
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$15;->val$itemID:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 320
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 322
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->createFlagNewRect()V

    .line 326
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
