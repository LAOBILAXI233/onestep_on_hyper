.class Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;
.super Ljava/lang/Object;
.source "PageScrollAnimationRotateIcon.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->pressedHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;

    const/high16 v1, -0x41800000    # -0.25f

    const/4 v2, 0x0

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3e99999a    # 0.3f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2$1;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon$2;)V

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotateIcon;->playAnimation(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 225
    return-void
.end method
