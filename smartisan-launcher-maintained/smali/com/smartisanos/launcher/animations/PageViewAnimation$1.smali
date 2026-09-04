.class Lcom/smartisanos/launcher/animations/PageViewAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageViewAnimation;->switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "### switchPageViewByMode mode onBegin SHOW_SINGLE_PAGE,begin increase dockview layer"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->setLayerStatus(I)V

    .line 273
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/StatusBar;->setLayerStatus(I)V

    .line 274
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$100(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$200(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 277
    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 29

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$200(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/AnimationTimeLine;->clearAllAnmiation()V

    .line 282
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "### switchPageViewByMode mode onComplete SHOW_SINGLE_PAGE,begin decrease dockview layer"

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/DockView;->setLayerStatus(I)V

    .line 284
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/StatusBar;->setLayerStatus(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getDisplayPageInSingleMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v11

    .line 288
    .local v11, "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v11, :cond_1

    .line 289
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mCurrentPage is not null, page index "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v11, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 291
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPages(Lcom/smartisanos/launcher/view/Page;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 293
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "page count : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 295
    :cond_2
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "switchPageViewByMode mode name = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget v28, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_3
    sget v25, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v16

    .line 297
    .local v16, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object v7, v11

    .line 298
    .local v7, "display_page":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v13

    .line 299
    .local v13, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    move/from16 v26, v0

    add-float v23, v25, v26

    .line 300
    .local v23, "x_delta":F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v26, v26, v27

    add-float v22, v25, v26

    .line 301
    .local v22, "x":F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move/from16 v25, v0

    sget v26, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v26, v26, v27

    add-float v24, v25, v26

    .line 302
    .local v24, "y":F
    new-instance v17, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 303
    .local v17, "pv":Lcom/smartisanos/smengine/math/Vector2f;
    sget v25, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 304
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v22, v0

    .line 305
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v24, v0

    .line 306
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v6, "display_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_6

    .line 309
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 310
    .local v12, "p":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 311
    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v12, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 313
    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 314
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/TitleView;->setVisibility(Z)V

    .line 316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    sget v26, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V

    .line 308
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 318
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v10, "invisiblePageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 321
    .local v5, "display_index":I
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_10

    .line 322
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 323
    .restart local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v25

    if-nez v25, :cond_c

    .line 324
    if-ne v5, v9, :cond_9

    .line 325
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "display page is hidden"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_a

    .line 328
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "display page is hidden, get pre-page"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "display_page":Lcom/smartisanos/launcher/view/Page;
    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 336
    .restart local v7    # "display_page":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    :goto_2
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 337
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 338
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 331
    :cond_a
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "set display page null"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 340
    :cond_c
    if-nez v7, :cond_e

    .line 341
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "there is a visible page, set display page is current page"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_d
    move-object v7, v12

    .line 344
    :cond_e
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    if-nez v25, :cond_f

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 347
    :cond_f
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 351
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-nez v25, :cond_12

    .line 352
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "display_list is empty !"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_11
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "to single page mode, but display_list is empty !"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 356
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->cleanInvisiblePageList()V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/PageView;->addToInvisiblePageList(Ljava/util/ArrayList;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v6

    .line 360
    if-nez v7, :cond_18

    .line 361
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "all page is hidden or locked, set display page index 0"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_13
    const/4 v5, 0x0

    .line 367
    :cond_14
    :goto_4
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_15

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getInvisiblePageList() size : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/PageView;->getInvisiblePageList()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_15
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_16

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getPageList size            : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_16
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_17

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mZoomedPageList size ===> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 371
    .local v19, "size":I
    const/4 v9, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v9, v0, :cond_19

    .line 372
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 374
    .restart local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    sub-int v25, v9, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v23

    add-float v25, v25, v22

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v14, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 375
    .local v14, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v15}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 376
    .local v15, "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v20

    .line 377
    .local v20, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v21

    .line 378
    .local v21, "tinv":Lcom/smartisanos/smengine/math/Transform;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 379
    iget v0, v15, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v25, v0

    iget v0, v15, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v12, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 380
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 364
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v15    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "size":I
    .end local v20    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v21    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_18
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 365
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_14

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "set display page index to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 382
    .restart local v19    # "size":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 384
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    .line 385
    .local v8, "dv":Lcom/smartisanos/launcher/view/DockView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$502(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z

    .line 386
    sget v25, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sput v25, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    .line 387
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->resetDockCellBoundingRect()V

    .line 388
    sget v25, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 389
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "DEBUG"

    const-string v27, "SHOW_SINGLE_PAGE onComplete finish !"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_1a
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$202(Lcom/smartisanos/launcher/animations/PageViewAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    const/high16 v26, -0x40800000    # -1.0f

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/PageView;->updateScrollAnimationProgress(F)V

    .line 397
    if-nez v7, :cond_1e

    .line 398
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_1b

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v25

    const-string v26, "### all page are invisible,get mpagelist 0 page"

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 399
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    .line 403
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/PageView;->refreshAllRenderTargetContent()V

    sget-boolean v25, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v25, :cond_1c

    .line 404
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->clearExtraMesh()V

    .line 407
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/view/PageView;->showOrHideGaussianBatchBackground(Z)V

    .line 411
    :cond_1c
    move-object/from16 v18, v11

    .line 412
    .local v18, "single":Lcom/smartisanos/launcher/view/Page;
    if-eqz v18, :cond_1f

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1f

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v25

    if-nez v25, :cond_1f

    .line 421
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$600(Lcom/smartisanos/launcher/animations/PageViewAnimation;Lcom/smartisanos/launcher/view/Page;Ljava/util/ArrayList;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$102(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z

    .line 424
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 425
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 426
    return-void

    .line 401
    .end local v18    # "single":Lcom/smartisanos/launcher/view/Page;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    goto :goto_6

    .line 414
    .restart local v18    # "single":Lcom/smartisanos/launcher/view/Page;
    :cond_1f
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_1d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 416
    .restart local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v12, :cond_20

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_20

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v25

    if-nez v25, :cond_20

    .line 417
    move-object/from16 v18, v12

    .line 414
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_7
.end method
