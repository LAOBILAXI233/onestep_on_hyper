.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;
.super Laurelienribon/tweenengine/equations/Back;
.source "PageScrollAnimationLouver.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimTweenEquation"
.end annotation


.field protected param_s:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;


.method public constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;
    .param p2, "para"    # F

    .prologue
    .line 656
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver;

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    .line 657
    iput p2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;->param_s:F

    .line 658
    return-void
.end method


.method public final compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 662
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationLouver$AnimTweenEquation;->param_s:F

    .line 663
    .local v0, "s":F
    sub-float/2addr p1, v3

    mul-float v1, p1, p1

    add-float v2, v0, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    const-string v0, "Back.OUT"

    return-object v0
.end method
