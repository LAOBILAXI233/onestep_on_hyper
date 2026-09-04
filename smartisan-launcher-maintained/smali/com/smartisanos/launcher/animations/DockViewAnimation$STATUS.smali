.class public final enum Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;
.super Ljava/lang/Enum;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

.field public static final enum ALREADY_DARK:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

.field public static final enum DOCK_VIEW_ZOOM:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    const-string v1, "ALREADY_DARK"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->ALREADY_DARK:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    const-string v1, "DOCK_VIEW_ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->DOCK_VIEW_ZOOM:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->ALREADY_DARK:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->DOCK_VIEW_ZOOM:Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->$VALUES:[Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->$VALUES:[Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/DockViewAnimation$STATUS;

    return-object v0
.end method
