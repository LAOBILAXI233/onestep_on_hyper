.class Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;
.super Ljava/lang/Object;
.source "ParticleConfigDialog.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;


.method constructor <init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->dismiss()V

    .line 188
    new-instance v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11$1;-><init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11;I)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 196
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$11$1;->send(F)V

    .line 198
    return-void
.end method
