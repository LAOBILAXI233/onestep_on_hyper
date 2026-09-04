.class public final enum Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
.super Ljava/lang/Enum;
.source "DotView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DOT_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

.field public static final enum DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;


.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const-string v1, "DOT_APPEAR"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 86
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const-string v1, "DOT_SINK"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 87
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const-string v1, "DOT_UP"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 88
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const-string v1, "DOT_DISAPPEAR"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 89
    new-instance v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const-string v1, "DOT_SLIDE"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_UP:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    return-object v0
.end method
