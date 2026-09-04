.class public Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;
.super Ljava/lang/Object;
.source "MultiSelectNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTouchListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 202
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 206
    return-void
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 23
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 209
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mIsPlaying:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 216
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$100(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    new-instance v20, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    invoke-static/range {v19 .. v20}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$202(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v19

    new-instance v20, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener$1;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;)V

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v20

    const v21, 0x3e99999a    # 0.3f

    invoke-static/range {v19 .. v21}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$300(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 233
    new-instance v11, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v11}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 234
    .local v11, "n1":Lcom/smartisanos/smengine/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$400(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v19

    const-string v20, "multiSelectCellUp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 242
    new-instance v12, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 243
    .local v12, "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 245
    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v17, v0

    .line 246
    .local v17, "worldX":F
    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v18, v0

    .line 247
    .local v18, "worldY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/PageView;->getPageByTouchPointInWorldCoordinate(FFZ)Lcom/smartisanos/launcher/view/Page;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 249
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v15, "systemAppCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v6, "commonAppCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    .line 252
    .local v5, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    .line 253
    .local v8, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v8, :cond_1

    .line 256
    invoke-static {v8}, Lcom/smartisanos/launcher/data/Utils;->isRemovable(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 257
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_2
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v5    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 264
    .local v9, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 265
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    .line 266
    .local v10, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v7

    .line 267
    .local v7, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v16

    .line 268
    .local v16, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    const/4 v14, 0x1

    .line 269
    .local v14, "setAllCellBack":Z
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$600()Lcom/smartisanos/launcher/LOG;

    move-result-object v19

    const-string v20, "DEBUG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "commonAppCells size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_4
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$600()Lcom/smartisanos/launcher/LOG;

    move-result-object v19

    const-string v20, "DEBUG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "systemAppCells size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_6

    .line 273
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/TrashView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v4

    .line 274
    .local v4, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 275
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Cell;->showToastForCannotRemoveSystemApp()V

    .line 291
    .end local v4    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_6
    if-eqz v14, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$700(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)V

    .line 307
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 308
    return-void

    .line 301
    :cond_8
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$800(Lcom/smartisanos/launcher/view/MultiSelectNode;Ljava/util/List;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v13

    .line 304
    .local v13, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_1
.end method
