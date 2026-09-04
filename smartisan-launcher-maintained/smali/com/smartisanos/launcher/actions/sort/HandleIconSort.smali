.class public Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
.super Ljava/lang/Object;
.source "HandleIconSort.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;


.field private abandonBuildPageIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public actionType:I

.field public volatile bakData:Lcom/smartisanos/launcher/actions/sort/SortResult;

.field private buildPageIndex:I

.field private cachedPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private cellMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private emptyCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSortAnimation:Lcom/smartisanos/launcher/animations/IconSortAnimation;

.field private maxPageCountForSort:I

.field public pageStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sortDBThreadReadyForBegin:Z

.field private sortFirstAnimDone:Z

.field private sortGLThreadReadyForBegin:Z

.field private sortResetPageDataDone:Z

.field private sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

.field public sortType:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->bakData:Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 62
    iput v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-direct {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->mIconSortAnimation:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .line 65
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortDBThreadReadyForBegin:Z

    .line 66
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortGLThreadReadyForBegin:Z

    .line 67
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortFirstAnimDone:Z

    .line 68
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResetPageDataDone:Z

    .line 69
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->pageStatusList:Ljava/util/List;

    .line 71
    iput v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 252
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    .line 253
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    .line 254
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    .line 255
    iput v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    .line 256
    iput v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->maxPageCountForSort:I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->abandonBuildPageIndexes:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleIconSort created, type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 58
    iput p1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .prologue
    .line 40
    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .prologue
    .line 40
    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->maxPageCountForSort:I

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)Lcom/smartisanos/launcher/actions/sort/SortResult;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;Lcom/smartisanos/launcher/actions/sort/SortResult;)Lcom/smartisanos/launcher/actions/sort/SortResult;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .param p1, "x1"    # Lcom/smartisanos/launcher/actions/sort/SortResult;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    return-object p1
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cleanCachedIconSortData()V

    return-void
.end method

.method private buildNextPage(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 602
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;-><init>(Lcom/smartisanos/launcher/actions/sort/HandleIconSort;II)V

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$2;->send(F)V

    .line 620
    return-void
.end method

.method private buildPage(I)V
    .locals 42
    .param p1, "pageIndex"    # I

    .prologue
    .line 415
    sget-object v8, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildPage ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v30, 0x0

    .line 417
    .local v30, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    const/16 v24, 0x0

    .line 418
    .local v24, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/actions/sort/SortResult;->getPageOrder()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, p1

    if-ge v0, v8, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/actions/sort/SortResult;->getPageOrder()Ljava/util/List;

    move-result-object v8

    move/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    check-cast v30, Lcom/smartisanos/launcher/data/PageInfo;

    .line 420
    .restart local v30    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/actions/sort/SortResult;->getDataMap()Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    check-cast v24, Ljava/util/List;

    .line 430
    .restart local v24    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/smartisanos/launcher/view/Page;

    .line 431
    .local v28, "page":Lcom/smartisanos/launcher/view/Page;
    if-nez v28, :cond_1

    .line 432
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find page by page index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", total page count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->maxPageCountForSort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->abandonBuildPageIndexes:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 436
    sget-object v8, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildPage abandonBuildPageIndexes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildNextPage(I)V

    .line 599
    :goto_0
    return-void

    .line 442
    :cond_2
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v17

    .local v17, "cellCount":I
    move-object/from16 v33, v28

    .line 443
    check-cast v33, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 444
    .local v33, "pwrt":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    invoke-virtual/range {v33 .. v33}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getPageRenderTargetForPageWithRT()Lcom/smartisanos/smengine/RenderTarget;

    move-result-object v37

    .line 445
    .local v37, "rt":Lcom/smartisanos/smengine/RenderTarget;
    const/16 v38, 0x0

    .line 446
    .local v38, "rtName":Ljava/lang/String;
    if-eqz v37, :cond_3

    .line 447
    invoke-virtual/range {v37 .. v37}, Lcom/smartisanos/smengine/RenderTarget;->getName()Ljava/lang/String;

    move-result-object v38

    .line 449
    :cond_3
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 450
    const/4 v6, 0x0

    .line 451
    .local v6, "cell":Lcom/smartisanos/launcher/view/Cell;
    move/from16 v16, v19

    .line 452
    .local v16, "cIndex":I
    const/16 v41, 0x0

    .line 453
    .local v41, "useCachedCell":Z
    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v36

    .line 454
    .local v36, "row_col":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v36

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v0, v8

    move/from16 v35, v0

    .line 455
    .local v35, "row":I
    move-object/from16 v0, v36

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v0, v8

    move/from16 v18, v0

    .line 456
    .local v18, "col":I
    if-eqz v24, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 457
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v0, v19

    if-ge v0, v8, :cond_5

    .line 458
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 459
    .local v23, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    .line 460
    .local v20, "id":J
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v27, v0

    .line 461
    .local v27, "pIndex":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getCachedCell(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 462
    if-nez v6, :cond_10

    .line 463
    invoke-static/range {v20 .. v21}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    .line 464
    .local v12, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->isActiveIcon()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v12, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_fore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "name":Ljava/lang/String;
    new-instance v6, Lcom/smartisanos/launcher/view/Cell;

    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget v13, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v13}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 467
    .restart local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6, v12}, Lcom/smartisanos/launcher/view/Cell;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 468
    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 469
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v8

    const-string v9, "cellCamera"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 471
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 472
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 491
    .end local v7    # "name":Ljava/lang/String;
    .end local v12    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    move/from16 v0, v27

    iput v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 492
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    move/from16 v0, v16

    iput v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 495
    .end local v20    # "id":J
    .end local v23    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v27    # "pIndex":I
    :cond_5
    if-nez v6, :cond_6

    .line 497
    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getCachedCell(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 498
    if-eqz v6, :cond_11

    .line 499
    const/16 v41, 0x1

    .line 505
    :cond_6
    :goto_3
    if-nez v41, :cond_7

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-nez v8, :cond_a

    .line 506
    :cond_7
    const/16 v26, 0x0

    .line 507
    .local v26, "needUpdateBackground":Z
    const/4 v8, -0x1

    move/from16 v0, v35

    if-eq v0, v8, :cond_9

    const/4 v8, -0x1

    move/from16 v0, v18

    if-eq v0, v8, :cond_9

    .line 508
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    move/from16 v0, v35

    if-eq v0, v8, :cond_8

    .line 509
    const/16 v26, 0x1

    .line 511
    :cond_8
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v8

    move/from16 v0, v18

    if-eq v0, v8, :cond_9

    .line 512
    const/16 v26, 0x1

    .line 515
    :cond_9
    move/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 516
    move/from16 v0, v35

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setOriginRowIndex(I)V

    .line 517
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setOriginColIndex(I)V

    .line 518
    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 519
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 521
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v34, v8, v16

    .line 522
    .local v34, "result":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v34

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v34

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v6, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 523
    if-eqz v26, :cond_a

    .line 524
    move/from16 v0, v35

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v15

    .line 525
    .local v15, "bgImageName":Ljava/lang/String;
    invoke-virtual {v6, v15}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 530
    .end local v15    # "bgImageName":Ljava/lang/String;
    .end local v26    # "needUpdateBackground":Z
    .end local v34    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_a
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 531
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    .line 532
    .local v25, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v31

    .line 533
    .local v31, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v32

    .line 534
    .local v32, "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 535
    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 536
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 540
    .end local v25    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v31    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    .end local v32    # "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->isPageContentInited()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 541
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->isDrawWithBatch()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->setDrawBatch(Z)V

    .line 542
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v8

    const-string v9, "cellCamera"

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 543
    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 544
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderTargetName(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 548
    :cond_c
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_d

    .line 549
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    const/16 v22, 0x1

    .line 550
    .local v22, "invisible":Z
    :goto_4
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v14

    .line 551
    .local v14, "back":Lcom/smartisanos/smengine/RectNode;
    if-eqz v14, :cond_d

    .line 552
    if-eqz v22, :cond_13

    .line 553
    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v14, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 561
    .end local v14    # "back":Lcom/smartisanos/smengine/RectNode;
    .end local v22    # "invisible":Z
    :cond_d
    :goto_5
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->disableDisplayUpdate()V

    .line 562
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-nez v8, :cond_14

    .line 563
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "cell don\'t have parent !"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 474
    .restart local v12    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v20    # "id":J
    .restart local v23    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v27    # "pIndex":I
    :cond_e
    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getCachedCell(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 475
    if-nez v6, :cond_f

    .line 476
    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v18

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCellWithoutParent(IILcom/smartisanos/smengine/RenderTarget;Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 477
    sget-object v8, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "##### create new Emptye cell"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 481
    :goto_6
    invoke-virtual {v6, v12}, Lcom/smartisanos/launcher/view/Cell;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 482
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundRect(Z)V

    .line 483
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->createAppNameRect()V

    .line 484
    iget v8, v12, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v8, :cond_4

    .line 485
    iget v8, v12, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->updateFlagMessageNumber(I)V

    goto/16 :goto_2

    .line 479
    :cond_f
    const/16 v41, 0x1

    goto :goto_6

    .line 489
    .end local v12    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_10
    const/16 v41, 0x1

    goto/16 :goto_2

    .line 501
    .end local v20    # "id":J
    .end local v23    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v27    # "pIndex":I
    :cond_11
    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v18

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCellWithoutParent(IILcom/smartisanos/smengine/RenderTarget;Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    goto/16 :goto_3

    .line 549
    :cond_12
    const/16 v22, 0x0

    goto :goto_4

    .line 557
    .restart local v14    # "back":Lcom/smartisanos/smengine/RectNode;
    .restart local v22    # "invisible":Z
    :cond_13
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v14, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_5

    .line 449
    .end local v14    # "back":Lcom/smartisanos/smengine/RectNode;
    .end local v22    # "invisible":Z
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 566
    .end local v6    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v16    # "cIndex":I
    .end local v18    # "col":I
    .end local v35    # "row":I
    .end local v36    # "row_col":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v41    # "useCachedCell":Z
    :cond_15
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 568
    const/16 v29, 0x4

    .line 569
    .local v29, "pageCountInScreen":I
    const/4 v8, 0x3

    sget v9, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v8, v9, :cond_16

    .line 570
    const/16 v29, 0x9

    .line 572
    :cond_16
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v40

    .line 573
    .local v40, "titleView":Lcom/smartisanos/launcher/view/TitleView;
    move/from16 v0, p1

    move/from16 v1, v29

    if-lt v0, v1, :cond_18

    .line 574
    if-eqz v30, :cond_18

    .line 575
    move-object/from16 v0, v30

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v39, v0

    .line 576
    .local v39, "status":I
    if-eqz v39, :cond_18

    .line 577
    const/4 v8, 0x2

    move/from16 v0, v39

    if-ne v0, v8, :cond_17

    .line 581
    :cond_17
    const/4 v8, 0x1

    move/from16 v0, v39

    if-ne v0, v8, :cond_18

    .line 582
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/smartisanos/launcher/view/Page;->setPageStatusWithAnim(IZZZ)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 583
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(ZZ)V

    .line 589
    .end local v39    # "status":I
    :cond_18
    const-string v7, ""

    .line 590
    .restart local v7    # "name":Ljava/lang/String;
    if-eqz v30, :cond_19

    .line 591
    invoke-virtual/range {v30 .. v30}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v7

    .line 593
    :cond_19
    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/TitleView;->setText(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->updateTitle()V

    .line 596
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 597
    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/Page;->updateWorldBoundingVolume()V

    .line 598
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildNextPage(I)V

    goto/16 :goto_0
.end method

.method private cleanCachedIconSortData()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 260
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->abandonBuildPageIndexes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 261
    iput v4, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    .line 262
    iput v4, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->maxPageCountForSort:I

    .line 263
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 265
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    goto :goto_0

    .line 267
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 268
    iput-object v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 273
    .local v1, "key":Ljava/lang/Long;
    iget-object v4, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 274
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_2

    .line 275
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    goto :goto_1

    .line 278
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "key":Ljava/lang/Long;
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 279
    iput-object v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    .line 281
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 282
    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 283
    iput-object v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    .line 285
    :cond_5
    return-void
.end method

.method public static createInstance(I)Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .locals 2
    .param p0, "sortType"    # I

    .prologue
    .line 45
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HandleIconSort instance err"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .line 49
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    return-object v0
.end method

.method private getCachedCell(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 297
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    return-object v0
.end method

.method public static handleEventSortIcon(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, -0x1

    .line 207
    const/4 v9, -0x1

    .line 208
    .local v9, "sortType":I
    const/4 v7, -0x1

    .line 209
    .local v7, "multiMode":I
    const/4 v6, 0x0

    .line 211
    .local v6, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 212
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 213
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    if-ne v9, v11, :cond_0

    .line 218
    sget-object v10, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "error sort type !"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    if-ne v7, v11, :cond_1

    .line 222
    sget-object v10, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "error multi mode !"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_1
    if-nez v6, :cond_2

    .line 226
    sget-object v10, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "error itemMap is null !"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "dockItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 233
    .local v3, "id":Ljava/lang/Long;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 234
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 235
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 239
    .end local v3    # "id":Ljava/lang/Long;
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_4
    invoke-static {v9, v6, v7}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->sort(ILjava/util/Map;I)Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-result-object v8

    .line 241
    .local v8, "sortResult":Lcom/smartisanos/launcher/actions/sort/SortResult;
    new-instance v10, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;

    const/16 v11, 0x64

    invoke-direct {v10, v11, v8}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;-><init>(ILcom/smartisanos/launcher/actions/sort/SortResult;)V

    const/4 v11, 0x0

    .line 247
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort$1;->send(F)V

    .line 249
    sget-object v10, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "A140"

    const-string v12, "db data sort begin"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCameraForPages()V
    .locals 10

    .prologue
    .line 623
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 624
    .local v4, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v6

    .line 626
    .local v6, "screenIndex":I
    const/4 v3, 0x4

    .line 627
    .local v3, "pageCountInScreen":I
    const/4 v8, 0x3

    sget v9, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v8, v9, :cond_0

    .line 628
    const/16 v3, 0x9

    .line 630
    :cond_0
    add-int/lit8 v8, v6, -0x1

    mul-int v7, v8, v3

    .line 631
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 632
    const/4 v7, 0x0

    .line 634
    :cond_1
    add-int/lit8 v8, v6, 0x2

    mul-int v0, v8, v3

    .line 635
    .local v0, "end":I
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v0, v8, :cond_2

    .line 636
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 638
    :cond_2
    move v1, v7

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 639
    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 640
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isPageContentInited()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v5, v2

    .line 641
    check-cast v5, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 642
    .local v5, "pwrt":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateCellContent()V

    .line 638
    .end local v5    # "pwrt":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    return-void
.end method


.method public beginSortIcon()V
    .locals 9

    .prologue
    .line 173
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v5, v6}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 174
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    .line 175
    .local v2, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 177
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    iget v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    sparse-switch v5, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 183
    :sswitch_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->cloneItemMapForIconSort()Ljava/util/HashMap;

    move-result-object v0

    .line 184
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->prepareGenerateSpecialCubeForIconSort()V

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "params":Ljava/util/ArrayList;
    sget-object v5, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sort type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SORT_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 194
    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v3    # "params":Ljava/util/ArrayList;
    :sswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v4

    .line 195
    .local v4, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    const/4 v5, 0x1

    iget-object v6, v4, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->bakData:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleMsgSortAnimBegin(ILcom/smartisanos/launcher/actions/sort/SortResult;)V

    .line 196
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->prepareGenerateSpecialCubeForIconSort()V

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "HandleIconSort clear !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->myInstance:Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    .line 89
    invoke-direct {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cleanCachedIconSortData()V

    .line 90
    return-void
.end method

.method public handleMsgForSortAnimEnd(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 114
    sget-object v5, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MESSAGE_SORT_ANIM_END type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-ne p1, v9, :cond_0

    .line 116
    iput-boolean v9, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResetPageDataDone:Z

    .line 118
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 119
    iput-boolean v9, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortFirstAnimDone:Z

    .line 121
    :cond_1
    iget-boolean v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResetPageDataDone:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortFirstAnimDone:Z

    if-nez v5, :cond_3

    .line 138
    :cond_2
    :goto_0
    return-void

    .line 125
    :cond_3
    iput-boolean v10, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResetPageDataDone:Z

    .line 126
    iput-boolean v10, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortFirstAnimDone:Z

    .line 127
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    .line 128
    .local v3, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v4

    .line 129
    .local v4, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 130
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    sget-object v6, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set display for page index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 133
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    goto :goto_1

    .line 136
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    sget-object v5, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    const-string v7, "prepareFinishIconSort !"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->prepareFinishIconSort()V

    goto :goto_0
.end method

.method public handleMsgSortAnimBegin(ILcom/smartisanos/launcher/actions/sort/SortResult;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Lcom/smartisanos/launcher/actions/sort/SortResult;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    if-ne p1, v2, :cond_0

    .line 95
    iput-boolean v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortDBThreadReadyForBegin:Z

    .line 96
    if-eqz p2, :cond_0

    .line 97
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 98
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "handleMsgSortAnimBegin set sortResult !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 101
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 102
    iput-boolean v2, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortGLThreadReadyForBegin:Z

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortDBThreadReadyForBegin:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortGLThreadReadyForBegin:Z

    if-nez v0, :cond_3

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortDBThreadReadyForBegin:Z

    .line 108
    iput-boolean v3, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortGLThreadReadyForBegin:Z

    .line 109
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->updateSortView()V

    goto :goto_0
.end method

.method public handleSort()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->init()V

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "eventType":Ljava/lang/String;
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 145
    const-string v0, "event_sort_by_color"

    .line 153
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/LauncherTracker;->onEventClickSort(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->beginSortIcon()V

    .line 158
    return-void

    .line 146
    :cond_2
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 147
    const-string v0, "event_sort_by_time"

    goto :goto_0

    .line 148
    :cond_3
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 149
    const-string v0, "event_sort_by_usage"

    goto :goto_0

    .line 150
    :cond_4
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 151
    const-string v0, "event_sort_by_category"

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortDBThreadReadyForBegin:Z

    .line 75
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortGLThreadReadyForBegin:Z

    .line 76
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortFirstAnimDone:Z

    .line 77
    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResetPageDataDone:Z

    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->pageStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/actions/sort/SortResult;->clear()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 83
    return-void
.end method

.method public prepareFinishIconSort()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->mIconSortAnimation:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->prepareFinishIconSort()V

    .line 169
    return-void
.end method

.method public prepareGenerateSpecialCubeForIconSort()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->mIconSortAnimation:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->prepareGenerateSpecialCubeForIconSort()V

    .line 164
    return-void
.end method

.method public updateSortView()V
    .locals 28

    .prologue
    .line 303
    sget-object v24, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v25, "DEBUG"

    const-string v26, "updateSortView begin !"

    invoke-virtual/range {v24 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget v24, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v11

    .line 311
    .local v11, "maxPageCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortResult:Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/actions/sort/SortResult;->getPageOrder()Ljava/util/List;

    move-result-object v15

    .line 312
    .local v15, "pageOrder":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v11, :cond_0

    .line 313
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 315
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cleanCachedIconSortData()V

    .line 316
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    .line 317
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    .line 318
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    .line 320
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    .line 321
    .local v10, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v17

    .line 323
    .local v17, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v18

    .line 325
    .local v18, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .line 326
    .local v16, "pageSize":I
    sget v24, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v9

    .line 327
    .local v9, "m":I
    sget v24, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->cellCount(I)I

    move-result v19

    .line 328
    .local v19, "s":I
    div-int v14, v9, v19

    .line 329
    .local v14, "pageCountInScreen":I
    div-int v20, v16, v14

    .line 330
    .local v20, "screenCount":I
    rem-int v24, v16, v14

    if-eqz v24, :cond_1

    .line 331
    add-int/lit8 v20, v20, 0x1

    .line 333
    :cond_1
    mul-int v24, v20, v14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->maxPageCountForSort:I

    .line 334
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v24

    div-int v21, v24, v14

    .line 335
    .local v21, "screenCountAlreadyExist":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 337
    sub-int v6, v20, v21

    .line 338
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 339
    sget v24, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreenByMode(I)Ljava/util/List;

    .line 338
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 343
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_2
    const/4 v8, 0x0

    .line 344
    .local v8, "isRevert":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 345
    const/4 v8, 0x1

    .line 346
    sget-object v24, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v25, "updateSortView isRevert true"

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 350
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v18

    .line 351
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v13

    .line 352
    .local v13, "pageCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v13, :cond_9

    .line 353
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 356
    .local v12, "page":Lcom/smartisanos/launcher/view/Page;
    iget v0, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v14, :cond_6

    .line 357
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v24

    if-nez v24, :cond_4

    iget v0, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 358
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->abandonBuildPageIndexes:Ljava/util/List;

    move-object/from16 v24, v0

    iget v0, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v24, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->log:Lcom/smartisanos/launcher/LOG;

    const-string v25, "DEBUG"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "abandon collect cell for invisible page at index ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 364
    :cond_6
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v5

    .line 365
    .local v5, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_5

    .line 366
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 367
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 368
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v25

    if-eqz v25, :cond_7

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v25

    if-nez v25, :cond_7

    .line 370
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 372
    :cond_7
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cellMap:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->emptyCells:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 381
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v12    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 383
    move/from16 v7, v21

    :goto_3
    move/from16 v0, v20

    if-le v7, v0, :cond_a

    .line 385
    add-int/lit8 v24, v7, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(IZ)V

    .line 383
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 389
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v18

    .line 390
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v13

    .line 391
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_e

    .line 392
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 393
    .restart local v12    # "page":Lcom/smartisanos/launcher/view/Page;
    iput v7, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 394
    if-lt v7, v14, :cond_d

    .line 395
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 396
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v22

    .line 397
    .local v22, "status":I
    if-eqz v22, :cond_b

    .line 398
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatusWithAnim(IZZZ)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 400
    :cond_b
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v23

    .line 401
    .local v23, "titleView":Lcom/smartisanos/launcher/view/TitleView;
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 402
    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(ZZ)V

    .line 404
    :cond_c
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 408
    .end local v22    # "status":I
    .end local v23    # "titleView":Lcom/smartisanos/launcher/view/TitleView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->cachedPageMap:Ljava/util/Map;

    move-object/from16 v24, v0

    iget v0, v12, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 410
    .end local v12    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_e
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPageIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->buildPage(I)V

    .line 412
    return-void
.end method
