.class synthetic Lcom/smartisanos/launcher/view/SettingButton$6;
.super Ljava/lang/Object;
.source "SettingButton.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$com$smartisanos$launcher$view$SettingButton$SETTING_ANIMATION:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 387
    invoke-static {}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->values()[Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/view/SettingButton$6;->$SwitchMap$com$smartisanos$launcher$view$SettingButton$SETTING_ANIMATION:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/view/SettingButton$6;->$SwitchMap$com$smartisanos$launcher$view$SettingButton$SETTING_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_DOWN:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/view/SettingButton$6;->$SwitchMap$com$smartisanos$launcher$view$SettingButton$SETTING_ANIMATION:[I

    sget-object v1, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->SETTING_BUTTON_UP:Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;->ordinal()I

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
