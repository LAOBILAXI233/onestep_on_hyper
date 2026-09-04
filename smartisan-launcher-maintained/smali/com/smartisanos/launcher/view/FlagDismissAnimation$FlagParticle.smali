.class public Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;
.super Ljava/lang/Object;
.source "FlagDismissAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/FlagDismissAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlagParticle"
.end annotation


.field public static mTestAnimTime:F

.field public static mTestGravityX:F

.field public static mTestGravityY:F

.field public static mTestLifeH:F

.field public static mTestLifeL:F

.field public static mTestParticleNumPerFrame:I

.field public static mTestVelocityI:F

.field public static mTestVelocityX:F

.field public static mTestVelocityY:F


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const v1, 0x3f19999a    # 0.6f

    .line 43
    sput v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityX:F

    .line 44
    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestGravityY:F

    .line 45
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityX:F

    .line 46
    sput v2, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityY:F

    .line 47
    sput v1, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestVelocityI:F

    .line 48
    const v0, 0x3d75c28f    # 0.06f

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeL:F

    .line 49
    sput v1, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestLifeH:F

    .line 50
    const/16 v0, 0x14

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestParticleNumPerFrame:I

    .line 51
    const v0, 0x3aa3d70a    # 0.00125f

    sput v0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$FlagParticle;->mTestAnimTime:F

    .line 52
    return-void
.end method
