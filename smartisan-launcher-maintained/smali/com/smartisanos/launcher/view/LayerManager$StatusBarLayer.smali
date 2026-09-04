.class public Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
.super Ljava/lang/Object;
.source "LayerManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarLayer"
.end annotation


.field public static final ON_STATUSBAR_NORMAL:I = 0x0

.field public static final ON_STATUSBAR_SWITCH_PAGE_ANIM:I = 0x1


.field public STATUS_BAR_BG:I

.field public STATUS_BAR_TEXT:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/LayerManager;


.method public constructor <init>(Lcom/smartisanos/launcher/view/LayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/LayerManager;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->this$0:Lcom/smartisanos/launcher/view/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public updateLayerStatus(I)V
    .locals 2
    .param p1, "dockStatus"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "baseLayer":I
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    add-int/lit8 v1, v0, 0xf

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_BG:I

    .line 368
    add-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->STATUS_BAR_TEXT:I

    .line 369
    return-void

    .line 361
    :pswitch_0
    const/16 v0, 0x32

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
