.class final Lcom/smartisanos/smengine/RenderManager$RenderUnitCompareByLayer;
.super Ljava/lang/Object;
.source "RenderManager.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderUnitCompareByLayer"
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
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Lcom/smartisanos/smengine/RenderManager$RenderUnit;Lcom/smartisanos/smengine/RenderManager$RenderUnit;)I
    .locals 2
    .param p1, "ru1"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;
    .param p2, "ru2"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    const/4 v0, -0x1

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getLayer()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getSubLayer()I

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->getSubLayer()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 274
    check-cast p1, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    check-cast p2, Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/RenderManager$RenderUnitCompareByLayer;->compare(Lcom/smartisanos/smengine/RenderManager$RenderUnit;Lcom/smartisanos/smengine/RenderManager$RenderUnit;)I

    move-result v0

    return v0
.end method
