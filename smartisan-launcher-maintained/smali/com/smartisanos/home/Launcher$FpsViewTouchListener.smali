.class Lcom/smartisanos/home/Launcher$FpsViewTouchListener;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FpsViewTouchListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method private constructor <init>(Lcom/smartisanos/home/Launcher;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$FpsViewTouchListener;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "### on click ###"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 275
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/DebugInfoManager;->isParitcleConfigDebugEnable:Z

    if-eqz v1, :cond_1

    .line 276
    invoke-static {}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->getInstance()Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    move-result-object v0

    .line 277
    .local v0, "p":Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->showView()V

    .line 279
    .end local v0    # "p":Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;
    :cond_1
    return-void
.end method
