.class public Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
.super Ljava/lang/Object;
.source "LayerManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageLayer"
.end annotation


.field public static final ON_FOLDER_OPEN:I = 0x4

.field public static final ON_PAGE_CROSS_DOWN:I = 0x2

.field public static final ON_PAGE_DRAG:I = 0x1

.field public static final ON_PAGE_FLOATING:I = 0x3

.field public static final ON_PAGE_NORMAL:I


.field public PAGE_BATCH_RENDER_LAYER:I

.field public PAGE_BATCH_RENDER_OUTER_SHADOW:I

.field public PAGE_COVER_EYE_LAYER:I

.field public PAGE_COVER_LOCK_LAYER:I

.field public PAGE_GAUSSIAN_BACKGROUND_LAYER:I

.field public PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

.field public PAGE_IN_MULTI_SELECT_NODE_CAN_DROP_COVER_LAYER:I

.field public PAGE_IN_MULTI_SELECT_NODE_CAN_NOT_DROP_COVER_LAYER:I

.field public PAGE_IN_MULTI_SELECT_NODE_NO_SPACE_TEXT_LAYER:I

.field public PAGE_IN_SWITCH_PAGE_MODE_ALPHA_LAYER:I

.field public PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_BATCH_SHADOW_LAYER:I

.field public PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_LAYER:I

.field public PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_TITLE_SHADOW_LAYER:I

.field public PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

.field public TITLE_BACK_SHADOW_LAYER:I

.field public TITLE_GAUSSIAN_LAYER:I

.field public TITLE_VIEW_BG_LAYER:I

.field public TITLE_VIEW_EDIT_ICON_LAYER:I

.field public TITLE_VIEW_EYE_ICON_LAYER:I

.field public TITLE_VIEW_LOCK_ICON_LAYER:I

.field public TITLE_VIEW_RENDER_RECT_LAYER:I

.field public TITLE_VIEW_SHADOW_LAYER:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/LayerManager;


.method public constructor <init>(Lcom/smartisanos/launcher/view/LayerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/LayerManager;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->this$0:Lcom/smartisanos/launcher/view/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public updateLayerStatus(I)V
    .locals 2
    .param p1, "pageStatus"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "baseLayer":I
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    add-int/lit8 v1, v0, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_TITLE_SHADOW_LAYER:I

    .line 253
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_BATCH_SHADOW_LAYER:I

    .line 254
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_LAYER:I

    .line 255
    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_ALPHA_LAYER:I

    .line 256
    add-int/lit8 v1, v0, 0x4

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

    .line 258
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_GAUSSIAN_LAYER:I

    .line 259
    add-int/lit8 v1, v0, 0x6

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    .line 260
    add-int/lit8 v1, v0, 0x7

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_SHADOW_LAYER:I

    .line 262
    add-int/lit8 v1, v0, 0xb

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_BG_LAYER:I

    .line 263
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EDIT_ICON_LAYER:I

    .line 264
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_EYE_ICON_LAYER:I

    .line 265
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_LOCK_ICON_LAYER:I

    .line 270
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    .line 273
    add-int/lit8 v1, v0, 0x9

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    .line 277
    add-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_GAUSSIAN_BACKGROUND_LAYER:I

    .line 280
    add-int/lit8 v1, v0, 0xb

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_RENDER_RECT_LAYER:I

    .line 281
    add-int/lit8 v1, v0, 0xc

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_LAYER:I

    .line 283
    add-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_COVER_EYE_LAYER:I

    .line 284
    add-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_COVER_LOCK_LAYER:I

    .line 286
    add-int/lit8 v1, v0, 0x20

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_DROP_COVER_LAYER:I

    .line 287
    add-int/lit8 v1, v0, 0x20

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_CAN_NOT_DROP_COVER_LAYER:I

    .line 289
    add-int/lit8 v1, v0, 0x21

    iput v1, p0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_MULTI_SELECT_NODE_NO_SPACE_TEXT_LAYER:I

    .line 291
    return-void

    .line 237
    :pswitch_0
    const/4 v0, 0x0

    .line 238
    goto :goto_0

    .line 240
    :pswitch_1
    const/16 v0, 0x32

    .line 241
    goto :goto_0

    .line 243
    :pswitch_2
    const/16 v0, 0x96

    .line 244
    goto :goto_0

    .line 246
    :pswitch_3
    const/16 v0, 0xc8

    .line 247
    goto :goto_0

    .line 249
    :pswitch_4
    const/16 v0, 0xaa

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
