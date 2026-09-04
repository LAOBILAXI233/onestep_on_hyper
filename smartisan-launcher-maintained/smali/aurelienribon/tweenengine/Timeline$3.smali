.class synthetic Laurelienribon/tweenengine/Timeline$3;
.super Ljava/lang/Object;
.source "Timeline.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$aurelienribon$tweenengine$Timeline$Modes:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Laurelienribon/tweenengine/Timeline$Modes;->values()[Laurelienribon/tweenengine/Timeline$Modes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laurelienribon/tweenengine/Timeline$3;->$SwitchMap$aurelienribon$tweenengine$Timeline$Modes:[I

    :try_start_0
    sget-object v0, Laurelienribon/tweenengine/Timeline$3;->$SwitchMap$aurelienribon$tweenengine$Timeline$Modes:[I

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Laurelienribon/tweenengine/Timeline$3;->$SwitchMap$aurelienribon$tweenengine$Timeline$Modes:[I

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
