.class public final enum Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
.super Ljava/lang/Enum;
.source "PageAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/animations/PageAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PAGE_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum CLOSE_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum CLOSE_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum HIDDEN_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum OPEN_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum OPEN_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum PAGE_TITLE_STATUS:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum SHOW_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

.field public static final enum TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;


.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "SHOW_PAGE_TITLE"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->SHOW_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "HIDDEN_PAGE_TITLE"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->HIDDEN_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 26
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "PAGE_TITLE_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->PAGE_TITLE_STATUS:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 27
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "TITLE_SHOW_EYE_AND_LOCK"

    invoke-direct {v0, v1, v6}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "TITLE_SHOW_NAME"

    invoke-direct {v0, v1, v7}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "OPEN_EYE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->OPEN_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "CLOSE_EYE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CLOSE_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 31
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "OPEN_LOCK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->OPEN_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const-string v1, "CLOSE_LOCK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CLOSE_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->SHOW_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->HIDDEN_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->PAGE_TITLE_STATUS:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->OPEN_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CLOSE_EYE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->OPEN_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->CLOSE_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    return-object v0
.end method
