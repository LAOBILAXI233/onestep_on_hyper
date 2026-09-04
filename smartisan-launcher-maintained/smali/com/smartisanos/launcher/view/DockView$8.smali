.class synthetic Lcom/smartisanos/launcher/view/DockView$8;
.super Ljava/lang/Object;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


.field static final synthetic $SwitchMap$com$smartisanos$launcher$view$DockView$Component:[I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 707
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView$Component;->values()[Lcom/smartisanos/launcher/view/DockView$Component;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/view/DockView$8;->$SwitchMap$com$smartisanos$launcher$view$DockView$Component:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/view/DockView$8;->$SwitchMap$com$smartisanos$launcher$view$DockView$Component:[I

    sget-object v1, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CONFIRM_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView$Component;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/view/DockView$8;->$SwitchMap$com$smartisanos$launcher$view$DockView$Component:[I

    sget-object v1, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CANCEL_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView$Component;->ordinal()I

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
