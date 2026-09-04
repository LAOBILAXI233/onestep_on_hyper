.class Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

.implements Laurelienribon/tweenengine/TweenAccessor;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/smartisanos/launcher/animations/PageScrollAnimation;",
        ">;"
    }
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getValues(Lcom/smartisanos/launcher/animations/PageScrollAnimation;I[F)I
    .locals 5
    .param p1, "target"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 564
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 566
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 567
    iget-object v2, p1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    aget v2, v2, v0

    aput v2, p3, v0

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0    # "i":I
    :pswitch_1
    const/4 v1, 0x0

    iget-object v3, p1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgressTL:[F

    add-int/lit8 v4, p2, -0x1

    aget v3, v3, v4

    aput v3, p3, v1

    move v1, v2

    .line 576
    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    .prologue
    .line 560
    check-cast p1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;->getValues(Lcom/smartisanos/launcher/animations/PageScrollAnimation;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/smartisanos/launcher/animations/PageScrollAnimation;I[F)V
    .locals 1
    .param p1, "target"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 584
    packed-switch p2, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 586
    :pswitch_0
    invoke-static {p1, p3}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->access$000(Lcom/smartisanos/launcher/animations/PageScrollAnimation;[F)V

    goto :goto_0

    .line 593
    :pswitch_1
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-static {p1, p2, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->access$100(Lcom/smartisanos/launcher/animations/PageScrollAnimation;IF)V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    .prologue
    .line 560
    check-cast p1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;->setValues(Lcom/smartisanos/launcher/animations/PageScrollAnimation;I[F)V

    return-void
.end method
