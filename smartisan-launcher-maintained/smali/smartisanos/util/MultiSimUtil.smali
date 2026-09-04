.class public Lsmartisanos/util/MultiSimUtil;
.super Ljava/lang/Object;
.source "MultiSimUtil.java"


.field public static final KEY_PHONE_AUTO_CALLBACK:Ljava/lang/String; = "key_phone_auto_callback"

.field public static final KEY_SMS_AUTO_POSTBACK:Ljava/lang/String; = "key_sms_auto_postback"

.field public static final SIM_1_INDEX:I = 0x0

.field public static final SIM_2_INDEX:I = 0x1

.field private static final SIM_ICON_IDS:[I

.field private static final SIM_ICON_INDEX_KEY_PREFIX:Ljava/lang/String; = "icon_index_sub"

.field private static final SIM_ICON_SELECTOR_IDS:[I

.field private static final SIM_NAME_KEY_PREFIX:Ljava/lang/String; = "perferred_name_sub"


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v4, [I

    sget v1, Lsmartisanos/widget/R$drawable;->multi_sim_sub_1_selector:I

    aput v1, v0, v2

    sget v1, Lsmartisanos/widget/R$drawable;->multi_sim_sub_2_selector:I

    aput v1, v0, v3

    sput-object v0, Lsmartisanos/util/MultiSimUtil;->SIM_ICON_SELECTOR_IDS:[I

    .line 20
    new-array v0, v4, [I

    sget v1, Lsmartisanos/widget/R$drawable;->sim_1:I

    aput v1, v0, v2

    sget v1, Lsmartisanos/widget/R$drawable;->sim_2:I

    aput v1, v0, v3

    sput-object v0, Lsmartisanos/util/MultiSimUtil;->SIM_ICON_IDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSimIndex(I)Z
    .locals 3
    .param p0, "simIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 76
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sim index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return v0
.end method

.method private static getIconIndexForSim(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I

    .prologue
    .line 25
    invoke-static {p1}, Lsmartisanos/util/MultiSimUtil;->checkSimIndex(I)Z

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon_index_sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSimIconResource(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I

    .prologue
    .line 38
    invoke-static {p0, p1}, Lsmartisanos/util/MultiSimUtil;->getIconIndexForSim(Landroid/content/Context;I)I

    move-result v0

    .line 39
    .local v0, "iconIndex":I
    sget-object v1, Lsmartisanos/util/MultiSimUtil;->SIM_ICON_IDS:[I

    aget v1, v1, v0

    return v1
.end method

.method public static getSimIconSelectorResource(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lsmartisanos/util/MultiSimUtil;->getIconIndexForSim(Landroid/content/Context;I)I

    move-result v0

    .line 34
    .local v0, "iconIndex":I
    sget-object v1, Lsmartisanos/util/MultiSimUtil;->SIM_ICON_SELECTOR_IDS:[I

    aget v1, v1, v0

    return v1
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I

    .prologue
    .line 51
    invoke-static {p1}, Lsmartisanos/util/MultiSimUtil;->checkSimIndex(I)Z

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perferred_name_sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "simName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lsmartisanos/widget/R$string;->default_sim_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0
.end method

.method public static isPhoneAutoCallback(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_phone_auto_callback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsAutoPostback(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_sms_auto_postback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPhoneAutoCallback(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoCallback"    # Z

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_phone_auto_callback"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimName(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lsmartisanos/util/MultiSimUtil;->checkSimIndex(I)Z

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perferred_name_sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setSmsAutoPostback(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "autoPostback"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_sms_auto_postback"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
