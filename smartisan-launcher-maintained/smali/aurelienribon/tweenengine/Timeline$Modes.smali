.class final enum Laurelienribon/tweenengine/Timeline$Modes;
.super Ljava/lang/Enum;
.source "Timeline.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Modes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laurelienribon/tweenengine/Timeline$Modes;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Laurelienribon/tweenengine/Timeline$Modes;

.field public static final enum PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

.field public static final enum SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Laurelienribon/tweenengine/Timeline$Modes;

    const-string v1, "SEQUENCE"

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/Timeline$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    new-instance v0, Laurelienribon/tweenengine/Timeline$Modes;

    const-string v1, "PARALLEL"

    invoke-direct {v0, v1, v3}, Laurelienribon/tweenengine/Timeline$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    const/4 v0, 0x2

    new-array v0, v0, [Laurelienribon/tweenengine/Timeline$Modes;

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    aput-object v1, v0, v2

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    aput-object v1, v0, v3

    sput-object v0, Laurelienribon/tweenengine/Timeline$Modes;->$VALUES:[Laurelienribon/tweenengine/Timeline$Modes;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laurelienribon/tweenengine/Timeline$Modes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Laurelienribon/tweenengine/Timeline$Modes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline$Modes;

    return-object v0
.end method

.method public static values()[Laurelienribon/tweenengine/Timeline$Modes;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Laurelienribon/tweenengine/Timeline$Modes;->$VALUES:[Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v0}, [Laurelienribon/tweenengine/Timeline$Modes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laurelienribon/tweenengine/Timeline$Modes;

    return-object v0
.end method
