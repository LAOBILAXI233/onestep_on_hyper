.class public Lcom/smartisanos/launcher/view/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;,
        Lcom/smartisanos/launcher/view/LayerManager$DockLayer;,
        Lcom/smartisanos/launcher/view/LayerManager$PageLayer;,
        Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    }
.end annotation


.field public static final CELL_CLICK_DOWN_LAYER:I = 0xe1

.field public static final CHANGE_THEME_ANIM_DOWN_LAYER:I = -0x2d

.field public static final FLOAT_PAGE_DARK_BG_LAYER:I = 0x55

.field public static final LARGE_BACKGROUND_LAYER:I = 0x0

.field public static final PAGE_IN_MULTI_SELECT_NODE_LONG_PRESS_TEXT_LAYER:I = 0xfa

.field public static final SCREEN_CORNER_LAYER:I = 0x103

.field public static final SCREEN_DARK_BG_LAYER:I = 0xc8

.field public static final SHADOW_LAYER_DOWN_VALUE:I = 0x2f

.field private static mLayerManager:Lcom/smartisanos/launcher/view/LayerManager;


.field private mCellLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/LayerManager$CellLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mDockLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/LayerManager$DockLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenPolygonOffset:Z

.field private mPageLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/LayerManager$PageLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;",
            ">;"
        }
    .end annotation
.end field


.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mOpenPolygonOffset:Z

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mCellLayers:Ljava/util/ArrayList;

    .line 29
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_0

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;-><init>(Lcom/smartisanos/launcher/view/LayerManager;)V

    .line 31
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->updateLayerStatus(I)V

    .line 32
    iget-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mCellLayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mPageLayers:Ljava/util/ArrayList;

    .line 35
    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    .line 36
    new-instance v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;-><init>(Lcom/smartisanos/launcher/view/LayerManager;)V

    .line 37
    .local v3, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->updateLayerStatus(I)V

    .line 38
    iget-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mPageLayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    .end local v3    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mDockLayers:Ljava/util/ArrayList;

    .line 41
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 42
    new-instance v1, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;-><init>(Lcom/smartisanos/launcher/view/LayerManager;)V

    .line 43
    .local v1, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->updateLayerStatus(I)V

    .line 44
    iget-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mDockLayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 46
    .end local v1    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mStatusBarLayers:Ljava/util/ArrayList;

    .line 47
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_3

    .line 48
    new-instance v4, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;-><init>(Lcom/smartisanos/launcher/view/LayerManager;)V

    .line 49
    .local v4, "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;->updateLayerStatus(I)V

    .line 50
    iget-object v5, p0, Lcom/smartisanos/launcher/view/LayerManager;->mStatusBarLayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 52
    .end local v4    # "statusBarLayer":Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/LayerManager;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/smartisanos/launcher/view/LayerManager;->mLayerManager:Lcom/smartisanos/launcher/view/LayerManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/smartisanos/launcher/view/LayerManager;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/LayerManager;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/LayerManager;->mLayerManager:Lcom/smartisanos/launcher/view/LayerManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/LayerManager;->mLayerManager:Lcom/smartisanos/launcher/view/LayerManager;

    return-object v0
.end method


.method public closePolygonOffset()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mOpenPolygonOffset:Z

    .line 60
    return-void
.end method

.method public getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    .locals 1
    .param p1, "cellStatus"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mCellLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    return-object v0
.end method

.method public getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .locals 1
    .param p1, "dockStatus"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mDockLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    return-object v0
.end method

.method public getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .locals 1
    .param p1, "pageStatus"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mPageLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    return-object v0
.end method

.method public getStatusBarLayer(I)Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;
    .locals 1
    .param p1, "statusBarLayer"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mStatusBarLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/LayerManager$StatusBarLayer;

    return-object v0
.end method

.method public openPolygonOffset()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/LayerManager;->mOpenPolygonOffset:Z

    return v0
.end method
