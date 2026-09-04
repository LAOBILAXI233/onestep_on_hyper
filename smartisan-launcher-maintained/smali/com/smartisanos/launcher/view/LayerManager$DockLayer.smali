.class public Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
.super Ljava/lang/Object;
.source "LayerManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DockLayer"
.end annotation


.field public static final ON_DOCK_NORMAL:I = 0x0

.field public static final ON_DOCK_SWITCH_PAGE_ANIM:I = 0x1


.field public DOCK_BACKGROUND_LAYER:I

.field public DOCK_SETTING_BTN_BG_LAYER:I

.field public DOCK_SETTING_BTN_GEAR_LAYER:I

.field public DOCK_SETTING_BTN_INNER_SHADOW_LAYER:I

.field public DOCK_SETTING_BTN_PRESSED_BG_LAYER:I

.field public DOT_NODE_BG:I

.field public DOT_NODE_DOT_SHADOW:I

.field public DOT_NODE_MOVE_DOT:I

.field public TRASH_LAYER:I

.field public TRASH_SHADOW_LAYER:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/LayerManager;


.method public constructor <init>(Lcom/smartisanos/launcher/view/LayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/LayerManager;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->this$0:Lcom/smartisanos/launcher/view/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public updateLayerStatus(I)V
    .locals 2
    .param p1, "dockStatus"    # I

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "baseLayer":I
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    add-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    .line 333
    add-int/lit8 v1, v0, 0x17

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_BG_LAYER:I

    .line 334
    add-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_PRESSED_BG_LAYER:I

    .line 335
    add-int/lit8 v1, v0, 0x19

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_GEAR_LAYER:I

    .line 336
    add-int/lit8 v1, v0, 0x1a

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_SETTING_BTN_INNER_SHADOW_LAYER:I

    .line 338
    add-int/lit8 v1, v0, 0xb

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_BG:I

    .line 339
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_MOVE_DOT:I

    .line 340
    add-int/lit8 v1, v0, 0xd

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOT_NODE_DOT_SHADOW:I

    .line 342
    add-int/lit8 v1, v0, 0xb

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_SHADOW_LAYER:I

    .line 343
    add-int/lit8 v1, v0, 0xd

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_LAYER:I

    .line 344
    return-void

    .line 326
    :pswitch_0
    const/16 v0, 0x32

    .line 327
    goto :goto_0

    .line 329
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
