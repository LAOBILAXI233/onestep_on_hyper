.class Lcom/smartisanos/launcher/view/SwitchPageNode$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SwitchPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;->SwitchPageAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 136
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 137
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$200(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 139
    .local v1, "index":I
    const/4 v3, -0x1

    .line 140
    .local v3, "pageColCount":I
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-eq v4, v6, :cond_0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 141
    :cond_0
    const/4 v3, 0x2

    .line 146
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$300(Lcom/smartisanos/launcher/view/SwitchPageNode;)I

    move-result v4

    if-nez v4, :cond_4

    .line 147
    rem-int v4, v1, v3

    if-nez v4, :cond_2

    .line 149
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 135
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_3
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 143
    const/4 v3, 0x3

    goto :goto_1

    .line 155
    :cond_4
    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v3

    if-nez v4, :cond_2

    .line 157
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    goto :goto_2

    .line 164
    .end local v1    # "index":I
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageColCount":I
    :cond_5
    return-void
.end method

.method public onComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 167
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 168
    const/4 v3, -0x1

    .line 169
    .local v3, "pageColCount":I
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 170
    :cond_0
    const/4 v3, 0x2

    .line 174
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 175
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 176
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$200(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 177
    .local v1, "index":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$300(Lcom/smartisanos/launcher/view/SwitchPageNode;)I

    move-result v4

    if-nez v4, :cond_4

    .line 178
    rem-int v4, v1, v3

    if-nez v4, :cond_2

    .line 180
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 174
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 172
    const/4 v3, 0x3

    goto :goto_0

    .line 186
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v3

    if-nez v4, :cond_2

    .line 188
    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    goto :goto_2

    .line 195
    .end local v1    # "index":I
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$400(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    move-result-object v4

    iput-boolean v6, v4, Lcom/smartisanos/launcher/view/SwitchPageAnimation;->mIsPlaying:Z

    .line 196
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$502(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)Z

    .line 197
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 198
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4, v7}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$402(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    .line 199
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$2;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v4, v7}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$602(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 200
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "############################ change screen finish"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_6
    return-void
.end method
