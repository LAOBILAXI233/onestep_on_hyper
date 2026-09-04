.class Lcom/smartisanos/launcher/view/TitleView$7;
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
    .line 1203
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$7;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$7;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TitleView;->access$1100(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1207
    iget-object v0, p0, Lcom/smartisanos/launcher/view/TitleView$7;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    .line 1208
    return-void
.end method
