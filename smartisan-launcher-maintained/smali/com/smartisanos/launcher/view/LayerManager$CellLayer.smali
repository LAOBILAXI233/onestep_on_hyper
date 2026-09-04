.class public Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
.super Ljava/lang/Object;
.source "LayerManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellLayer"
.end annotation


.field public static final ON_CELL_CROSS_DOWN:I = 0x1

.field public static final ON_CELL_CROSS_DOWN_IN_FLOING_PAGE:I = 0x3

.field public static final ON_CELL_DRAG:I = 0x5

.field public static final ON_CELL_IN_FLOING_PAGE:I = 0x2

.field public static final ON_CELL_NORMAL:I = 0x0

.field public static final ON_DOCK_CELL_IN_SWITCH_PAGE_ANIM:I = 0x4


.field public ACTIVE_ICON_BASE_LAYER:I

.field public CELL_APP_NAME_LAYER:I

.field public CELL_BASE_LAYER:I

.field public CELL_BG_LAYER:I

.field public CELL_BG_OVERLAY_LAYER:I

.field public CELL_DISPLAY_RECT_LAYER:I

.field public CELL_DOWN_SHADOW:I

.field public CELL_FOREGROUND_LAYER:I

.field public CELL_FOREGROUND_OVERLAY_LAYER:I

.field public CELL_FOREGROUND_SHADOW_LAYER:I

.field public CELL_INNER_SHADOW_LAYER:I

.field public CELL_INTO_PAGE_EDIT_MODE_SELECTED_COVER_BG_LAYER:I

.field public CELL_INTO_PAGE_EDIT_MODE_SELECTED_COVER_LAYER:I

.field public CELL_INTO_PAGE_EDIT_MODE_UNSELECTED_ANIMATION_COVER_LAYER:I

.field public CELL_INTO_PAGE_EDIT_MODE_UNSELECTED_NORMAL_COVER_LAYER:I

.field public CELL_LONG_PRESS_APP_NAME_BG_LAYER:I

.field public CELL_LONG_PRESS_APP_NAME_LAYER:I

.field public CELL_RESET_BG_LAYER:I

.field public CELL_SELECTED_OUTER_SHADOW_LAYER:I

.field public DOWNLOAD_VIEW_BASE_LAYER:I

.field public FLAG_DISMISS_ANIMATION:I

.field public FLAG_MESSAGE_ANIMATION_LAYER:I

.field public FLAG_MESSAGE_RECT_LAYER:I

.field public FLAG_NEW_ANIMATION:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/LayerManager;


.method public constructor <init>(Lcom/smartisanos/launcher/view/LayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/LayerManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->this$0:Lcom/smartisanos/launcher/view/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public updateLayerStatus(I)V
    .locals 2
    .param p1, "cellStatus"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "baseLayer":I
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    add-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_BASE_LAYER:I

    .line 162
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_SELECTED_OUTER_SHADOW_LAYER:I

    .line 163
    add-int/lit8 v1, v0, 0xd

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_BG_LAYER:I

    .line 164
    add-int/lit8 v1, v0, 0xe

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_RESET_BG_LAYER:I

    .line 165
    add-int/lit8 v1, v0, 0xf

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_BG_OVERLAY_LAYER:I

    .line 166
    add-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_DISPLAY_RECT_LAYER:I

    .line 167
    add-int/lit8 v1, v0, 0x11

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_INTO_PAGE_EDIT_MODE_SELECTED_COVER_BG_LAYER:I

    .line 168
    add-int/lit8 v1, v0, 0x12

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_FOREGROUND_SHADOW_LAYER:I

    .line 169
    add-int/lit8 v1, v0, 0x13

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_FOREGROUND_LAYER:I

    .line 170
    add-int/lit8 v1, v0, 0x14

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_FOREGROUND_OVERLAY_LAYER:I

    .line 171
    add-int/lit8 v1, v0, 0x15

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_APP_NAME_LAYER:I

    .line 172
    add-int/lit8 v1, v0, 0x16

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->ACTIVE_ICON_BASE_LAYER:I

    .line 173
    add-int/lit8 v1, v0, 0x17

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->FLAG_MESSAGE_RECT_LAYER:I

    .line 174
    add-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->FLAG_DISMISS_ANIMATION:I

    .line 175
    add-int/lit8 v1, v0, 0x18

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->DOWNLOAD_VIEW_BASE_LAYER:I

    .line 176
    add-int/lit8 v1, v0, 0x19

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->FLAG_MESSAGE_ANIMATION_LAYER:I

    .line 177
    add-int/lit8 v1, v0, 0x1a

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->FLAG_NEW_ANIMATION:I

    .line 179
    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_LONG_PRESS_APP_NAME_BG_LAYER:I

    .line 180
    add-int/lit8 v1, v0, 0x1c

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_LONG_PRESS_APP_NAME_LAYER:I

    .line 183
    add-int/lit8 v1, v0, 0x1d

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_INTO_PAGE_EDIT_MODE_SELECTED_COVER_LAYER:I

    .line 184
    add-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_INTO_PAGE_EDIT_MODE_UNSELECTED_ANIMATION_COVER_LAYER:I

    .line 185
    add-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_INTO_PAGE_EDIT_MODE_UNSELECTED_NORMAL_COVER_LAYER:I

    .line 186
    add-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_DOWN_SHADOW:I

    .line 187
    add-int/lit8 v1, v0, 0x1e

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_INNER_SHADOW_LAYER:I

    .line 188
    return-void

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    .line 144
    goto :goto_0

    .line 146
    :pswitch_1
    const/16 v0, 0x32

    .line 147
    goto :goto_0

    .line 149
    :pswitch_2
    const/16 v0, 0x64

    .line 150
    goto :goto_0

    .line 152
    :pswitch_3
    const/16 v0, 0x64

    .line 153
    goto :goto_0

    .line 155
    :pswitch_4
    const/16 v0, 0x96

    .line 156
    goto :goto_0

    .line 158
    :pswitch_5
    const/16 v0, 0xc8

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
