.class final Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DotView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyAnimationListener"
.end annotation


.field public mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/DotView;


.method private constructor <init>(Lcom/smartisanos/launcher/view/DotView;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/DotView;Lcom/smartisanos/launcher/view/DotView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/view/DotView;
    .param p2, "x1"    # Lcom/smartisanos/launcher/view/DotView$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;-><init>(Lcom/smartisanos/launcher/view/DotView;)V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DotView;->stopAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;)V

    .line 305
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_3

    .line 308
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/DotView;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "## send dot disappear event ###"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DotView;->access$300(Lcom/smartisanos/launcher/view/DotView;)Lcom/smartisanos/smengine/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 310
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DotView;->access$300(Lcom/smartisanos/launcher/view/DotView;)Lcom/smartisanos/smengine/Event;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 297
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->mAnimType:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyAnimationListener;->this$0:Lcom/smartisanos/launcher/view/DotView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DotView;->access$200(Lcom/smartisanos/launcher/view/DotView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 300
    :cond_0
    return-void
.end method
