.class public final enum Lcom/smartisanos/launcher/view/DockView$Component;
.super Ljava/lang/Enum;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/DockView$Component;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/DockView$Component;

.field public static final enum SORT_CANCEL_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

.field public static final enum SORT_CONFIRM_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$Component;

    const-string v1, "SORT_CONFIRM_BUTTON"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/DockView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CONFIRM_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$Component;

    const-string v1, "SORT_CANCEL_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/DockView$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CANCEL_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DockView$Component;

    sget-object v1, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CONFIRM_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CANCEL_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/view/DockView$Component;->$VALUES:[Lcom/smartisanos/launcher/view/DockView$Component;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/DockView$Component;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/DockView$Component;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/DockView$Component;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/smartisanos/launcher/view/DockView$Component;->$VALUES:[Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/DockView$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/DockView$Component;

    return-object v0
.end method
