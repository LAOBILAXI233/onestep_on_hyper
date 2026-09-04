.class Lcom/smartisanos/launcher/animations/IconSortAnimation$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->prepareGenerateSpecialCubeForIconSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 255
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$000(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 257
    new-instance v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$2;I)V

    .line 268
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;->send(F)V

    .line 279
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$000(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 272
    new-instance v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$2;I)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;->send(F)V

    goto :goto_0
.end method
