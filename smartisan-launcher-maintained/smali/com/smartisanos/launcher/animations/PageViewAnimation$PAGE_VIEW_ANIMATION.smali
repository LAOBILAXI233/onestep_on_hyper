.class public final enum Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;
.super Ljava/lang/Enum;
.source "PageViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/PageViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PAGE_VIEW_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

.field public static final enum SHOW_MULTI_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

.field public static final enum SHOW_SINGLE_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    const-string v1, "SHOW_MULTI_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_MULTI_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    const-string v1, "SHOW_SINGLE_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_SINGLE_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_MULTI_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_SINGLE_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    return-object v0
.end method
