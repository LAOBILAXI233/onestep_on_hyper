.class final Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
.super Ljava/lang/Object;
.source "AnimationTimeLine.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimData"
.end annotation


.field public anim:Lcom/smartisanos/smengine/Animation;

.field public startTime:F


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/AnimationTimeLine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/AnimationTimeLine$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;-><init>()V

    return-void
.end method
