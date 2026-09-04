.class public final enum Lcom/smartisanos/launcher/view/TrashView$STATUS;
.super Ljava/lang/Enum;
.source "TrashView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/TrashView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/TrashView$STATUS;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

.field public static final enum TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const-string v1, "FLOAT_UP"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 57
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const-string v1, "APPEAR"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 58
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const-string v1, "OBJECT_IN_TRASH"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 59
    new-instance v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const-string v1, "TOUCH_UP_AND_OBJECT_IN_TRASH"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/view/TrashView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/view/TrashView$STATUS;

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->TOUCH_UP_AND_OBJECT_IN_TRASH:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->$VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/TrashView$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/TrashView$STATUS;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/smartisanos/launcher/view/TrashView$STATUS;->$VALUES:[Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/TrashView$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/TrashView$STATUS;

    return-object v0
.end method
