.class final Lcom/smartisanos/smengine/RenderManager$RenderUnitCompator;
.super Ljava/lang/Object;
.source "RenderManager.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderUnitCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smartisanos/smengine/RenderManager$RenderUnit;",
        ">;"
    }
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Lcom/smartisanos/smengine/RenderManager$RenderUnit;Lcom/smartisanos/smengine/RenderManager$RenderUnit;)I
    .locals 6
    .param p1, "ru1"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    .param p2, "ru2"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    .line 287
    iget-object v4, p1, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderState;->isEnableBlend()Z

    move-result v2

    .line 288
    .local v2, "ru1EnableBlend":Z
    iget-object v4, p2, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderState;->isEnableBlend()Z

    move-result v3

    .line 290
    .local v3, "ru2EnableBlend":Z
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 291
    const/4 v1, 0x1

    .line 309
    :goto_0
    return v1

    .line 292
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 293
    const/4 v1, -0x1

    goto :goto_0

    .line 294
    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v4

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v5

    sub-int v0, v4, v5

    .line 296
    .local v0, "d":I
    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getDiffuseTexID()I

    move-result v4

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getDiffuseTexID()I

    move-result v5

    sub-int v1, v4, v5

    .line 298
    .local v1, "d2":I
    goto :goto_0

    .end local v1    # "d2":I
    :cond_2
    move v1, v0

    .line 300
    goto :goto_0

    .line 304
    .end local v0    # "d":I
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v4

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v5

    sub-int v0, v4, v5

    .line 305
    .restart local v0    # "d":I
    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getDiffuseTexID()I

    move-result v4

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getDiffuseTexID()I

    move-result v5

    sub-int v1, v4, v5

    .line 307
    .restart local v1    # "d2":I
    goto :goto_0

    .line 309
    .end local v1    # "d2":I
    :cond_4
    neg-int v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 285
    check-cast p1, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    check-cast p2, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnitCompator;->compare(Lcom/smartisanos/smengine/RenderManager$RenderUnit;Lcom/smartisanos/smengine/RenderManager$RenderUnit;)I

    move-result v0

    return v0
.end method
