.class public final enum Lcom/smartisanos/smengine/Camera$FrustumIntersect;
.super Ljava/lang/Enum;
.source "Camera.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrustumIntersect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/smengine/Camera$FrustumIntersect;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/smengine/Camera$FrustumIntersect;

.field public static final enum Inside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

.field public static final enum Intersects:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

.field public static final enum Outside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    const-string v1, "Outside"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Outside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    .line 86
    new-instance v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    const-string v1, "Inside"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/smengine/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Inside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    .line 91
    new-instance v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    const-string v1, "Intersects"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/smengine/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Intersects:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    sget-object v1, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Outside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Inside:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->Intersects:Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->$VALUES:[Lcom/smartisanos/smengine/Camera$FrustumIntersect;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera$FrustumIntersect;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/smengine/Camera$FrustumIntersect;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/smartisanos/smengine/Camera$FrustumIntersect;->$VALUES:[Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    invoke-virtual {v0}, [Lcom/smartisanos/smengine/Camera$FrustumIntersect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/smengine/Camera$FrustumIntersect;

    return-object v0
.end method
