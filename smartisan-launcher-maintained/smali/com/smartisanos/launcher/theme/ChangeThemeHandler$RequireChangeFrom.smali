.class public final enum Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
.super Ljava/lang/Enum;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequireChangeFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum PHONE_BACK_COLOR:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;


.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const-string v1, "SETTING"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const-string v1, "PHONE_BACK_COLOR"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->PHONE_BACK_COLOR:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const-string v1, "FOUR_FINGER_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const-string v1, "FOUR_FINGER_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->PHONE_BACK_COLOR:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->$VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->$VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    return-object v0
.end method
