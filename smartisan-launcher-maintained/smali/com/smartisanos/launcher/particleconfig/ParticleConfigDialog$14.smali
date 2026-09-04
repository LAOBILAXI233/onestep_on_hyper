.class Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;
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
    .line 281
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    iput p3, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;->val$itemID:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 284
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$14;->val$itemID:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 287
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 289
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->updateFlagMessageNumber(I)V

    .line 293
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
