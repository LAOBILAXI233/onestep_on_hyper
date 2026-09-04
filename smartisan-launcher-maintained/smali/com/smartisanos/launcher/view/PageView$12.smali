.class Lcom/smartisanos/launcher/view/PageView$12;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;

.field final synthetic val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 2928
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$12;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/PageView$12;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$12;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 2937
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$12;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMySlideAnimationLisenter:Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->onComplete()V

    .line 2939
    return-void
.end method

.method public onKill()V
    .locals 1

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$12;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onKill()V

    .line 2944
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$12;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onStart()V

    .line 2932
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$12;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMySlideAnimationLisenter:Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;->onStart()V

    .line 2933
    return-void
.end method
