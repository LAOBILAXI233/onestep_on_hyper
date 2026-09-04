.class Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;
.super Ljava/lang/Object;
.source "ParticleConfigDialog.java"

.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->initListener(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/SeekBar;FFFLcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

.field final synthetic val$l:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;

.field final synthetic val$max:F

.field final synthetic val$min:F

.field final synthetic val$p:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


.method constructor <init>(Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;FFLandroid/widget/TextView;Ljava/lang/String;Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    iput p2, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$min:F

    iput p3, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$max:F

    iput-object p4, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$p:Ljava/lang/String;

    iput-object p6, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$l:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 221
    iget v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$min:F

    int-to-float v2, p2

    iget v3, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$max:F

    iget v4, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$min:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 222
    .local v0, "value":F
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$l:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;

    invoke-interface {v1, v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$onProgressChanged;->onProgressChanged(F)V

    .line 224
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 230
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    sget v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    sget v1, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    iget-object v0, v0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->test_life_l_p:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 236
    iget v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$min:F

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    .line 237
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 238
    invoke-virtual {p0, p1, v3, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->this$0:Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7c92\u5b50\u751f\u547d\u5468\u671f\u6700\u5c0f\u503c\u5fc5\u987b\u5c0f\u4e8e\u6700\u5927\u503c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_0
    return-void

    .line 240
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->val$max:F

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    .line 241
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 242
    invoke-virtual {p0, p1, v4, v2}, Lcom/smartisanos/launcher/particleconfig/ParticleConfigDialog$13;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method
