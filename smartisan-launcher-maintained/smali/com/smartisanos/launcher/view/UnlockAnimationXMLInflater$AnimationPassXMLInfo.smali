.class public Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;
.super Ljava/lang/Object;
.source "UnlockAnimationXMLInflater.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationPassXMLInfo"
.end annotation


.field animPassDurationFrame:I

.field animPassInterpolator:I

.field animPassTargetAlpha:F

.field animPassTargetScale:F

.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;


.method public constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
