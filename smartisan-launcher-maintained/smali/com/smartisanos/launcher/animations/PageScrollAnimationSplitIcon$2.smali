.class Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;
.super Ljava/lang/Object;
.source "PageScrollAnimationSplitIcon.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->pressedHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;

.field final synthetic val$splitX:F

.field final synthetic val$toProgress:F


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;

    iput p2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->val$toProgress:F

    iput p3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->val$splitX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 391
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;

    new-array v1, v4, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->val$toProgress:F

    aput v3, v1, v2

    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;->val$splitX:F

    aput v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3e99999a    # 0.3f

    new-instance v6, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;)V

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 402
    return-void

    .line 391
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
