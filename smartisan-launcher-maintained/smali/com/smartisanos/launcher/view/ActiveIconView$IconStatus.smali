.class public final enum Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;
.super Ljava/lang/Enum;
.source "ActiveIconView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/ActiveIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

.field public static final enum PAUSE:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

.field public static final enum RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->PAUSE:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    sget-object v1, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->PAUSE:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->$VALUES:[Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->$VALUES:[Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    return-object v0
.end method
