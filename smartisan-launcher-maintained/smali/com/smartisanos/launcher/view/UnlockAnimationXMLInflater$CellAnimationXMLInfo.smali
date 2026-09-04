.class public Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;
.super Ljava/lang/Object;
.source "UnlockAnimationXMLInflater.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellAnimationXMLInfo"
.end annotation


.field animDelayFrame:I

.field cellIndex:I

.field initAlpha:F

.field initScale:F

.field passCount:I

.field passList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$AnimationPassXMLInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;


.method public constructor <init>(Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->this$0:Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/UnlockAnimationXMLInflater$CellAnimationXMLInfo;->passList:Ljava/util/ArrayList;

    return-void
.end method
