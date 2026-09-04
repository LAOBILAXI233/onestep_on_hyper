.class Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;
.super Ljava/lang/Object;
.source "PageScrollAnimationLouver.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->pressedHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 433
    const/4 v0, 0x5

    new-array v3, v0, [Laurelienribon/tweenengine/TweenEquation;

    .line 434
    .local v3, "animType":[Laurelienribon/tweenengine/TweenEquation;
    const/4 v0, 0x0

    sget-object v1, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    aput-object v1, v3, v0

    .line 435
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v0, v4, :cond_0

    .line 436
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v4

    .line 437
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 438
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 439
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    const v1, -0x41b33333    # -0.2f

    const v4, 0x3e99999a    # 0.3f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2$1;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;->playTimeLineAnimation(FF[Laurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 457
    return-void

    .line 441
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v0, v3, v4

    .line 442
    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 443
    const/4 v0, 0x3

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    .line 444
    const/4 v0, 0x4

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {v1, v4, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V

    aput-object v1, v3, v0

    goto :goto_0
.end method
