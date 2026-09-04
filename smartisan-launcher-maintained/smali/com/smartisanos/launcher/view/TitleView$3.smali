.class Lcom/smartisanos/launcher/view/TitleView$3;
.super Ljava/lang/Object;
.source "TitleView.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnClickListener;


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
    .line 169
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 8
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 172
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    .line 173
    .local v2, "preview":Z
    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "onClick return by preview true"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TitleView;->setUp()V

    .line 178
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPage()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v3

    .line 184
    .local v3, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v3, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 185
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, p1, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v5, p1, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v7, v7

    invoke-static {v4, v5, v6, v7, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 186
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/TitleView;->access$300(Lcom/smartisanos/launcher/view/TitleView;)I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 187
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/TitleView;->access$400(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->access$500(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 188
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$700(Lcom/smartisanos/launcher/view/TitleView;)V

    .line 222
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 196
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 197
    :cond_5
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "current page is null or empty !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_6
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_0

    .line 200
    :cond_7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v4

    if-nez v4, :cond_8

    .line 201
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->pageToFloat()V

    goto :goto_1

    .line 203
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/TitleView;->access$600(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto :goto_1

    .line 206
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_9
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/TitleView;->access$300(Lcom/smartisanos/launcher/view/TitleView;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 207
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$800(Lcom/smartisanos/launcher/view/TitleView;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 208
    invoke-virtual {v3}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_0

    .line 211
    :cond_a
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/TitleView;->access$900(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/TitleView;->access$500(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 212
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    iget-object v4, p0, Lcom/smartisanos/launcher/view/TitleView$3;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/TitleView;->access$1000(Lcom/smartisanos/launcher/view/TitleView;)V

    goto/16 :goto_1
.end method
