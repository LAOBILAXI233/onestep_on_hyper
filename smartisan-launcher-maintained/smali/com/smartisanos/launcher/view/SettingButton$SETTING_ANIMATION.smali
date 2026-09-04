.class public final enum Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;
.super Ljava/lang/Enum;
.source "SettingButton.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SETTING_ANIMATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;",
        ">;"
    }
.end annotation


.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

.field public static final enum SETTING_BUTTON_DOWN:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

.field public static final enum SETTING_BUTTON_UP:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    const-string v1, "SETTING_BUTTON_DOWN"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_DOWN:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    .line 59
    new-instance v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    const-string v1, "SETTING_BUTTON_UP"

    invoke-direct {v0, v1, v3}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_UP:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_DOWN:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_UP:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    return-object v0
.end method

.method public static values()[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->$VALUES:[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    return-object v0
.end method
