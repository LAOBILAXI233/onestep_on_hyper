.class Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;
.super Ljava/lang/Object;
.source "UnlockAnimationXML.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellPassData"
.end annotation


.field public mDuration_frame:I

.field public mInterpolator:I

.field public mTargetAlpha:F

.field public mTargetScale:F

.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;


.method constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXML$CellPassData;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
