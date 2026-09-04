.class Lcom/smartisanos/launcher/view/TitleView$8;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TitleView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TitleView;->switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TitleView;


.method constructor <init>(Lcom/smartisanos/launcher/view/TitleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$8;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$8;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$8;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$8;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setNeedUpdateUV(Z)V

    .line 1224
    :cond_0
    return-void
.end method
