.class Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11$1;
.super Lcom/smartisanos/smengine/Event;
.source "ParticleConfigDialog.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;


.method constructor <init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;
    .param p2, "type"    # I

    .prologue
    .line 188
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11$1;->this$1:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V

    .line 194
    :cond_0
    return-void
.end method
