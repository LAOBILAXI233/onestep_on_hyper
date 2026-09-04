.class Lcom/smartisanos/launcher/view/TitleView$4;
.super Ljava/lang/Object;
.source "TitleView.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TitleView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TitleView;


.method constructor <init>(Lcom/smartisanos/launcher/view/TitleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TitleView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLongClick(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 11
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    .line 230
    .local v2, "preview":Z
    if-eqz v2, :cond_1

    .line 231
    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "onClick return by preview true"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return v4

    .line 234
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 235
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 238
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 239
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v3

    .line 240
    .local v3, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v3, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 241
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget v6, v6, Lcom/smartisanos/launcher/view/TitleView;->mTouchX:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget v7, v7, Lcom/smartisanos/launcher/view/TitleView;->mTouchY:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v8, v8

    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v9, v9

    invoke-static {v6, v7, v8, v9, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 242
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/TitleView;->access$300(Lcom/smartisanos/launcher/view/TitleView;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 243
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TitleView;->access$400(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/TitleView;->access$500(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 244
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 245
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 248
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/TitleView;->access$300(Lcom/smartisanos/launcher/view/TitleView;)I

    move-result v6

    if-ne v10, v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TitleView;->access$900(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/TitleView;->access$500(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 250
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 262
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_3
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 264
    .end local v1    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v3    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TitleView;->setUp()V

    .line 265
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    invoke-virtual {v4, v10, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 266
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    iget-object v6, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget v7, v7, Lcom/smartisanos/launcher/view/TitleView;->mTouchX:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/TitleView$4;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget v8, v8, Lcom/smartisanos/launcher/view/TitleView;->mTouchY:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/smartisanos/launcher/view/DragLayer;->startDragPage(Lcom/smartisanos/launcher/view/Page;FF)Z

    move v4, v5

    .line 267
    goto/16 :goto_0
.end method
