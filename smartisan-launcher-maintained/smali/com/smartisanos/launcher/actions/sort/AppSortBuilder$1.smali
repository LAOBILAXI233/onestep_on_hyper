.class final Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$1;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;)I
    .locals 8
    .param p1, "obj1"    # Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    .param p2, "obj2"    # Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    .prologue
    const-wide/16 v6, 0x0

    .line 403
    iget-wide v2, p1, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->lastModifyTime:J

    iget-wide v4, p2, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->lastModifyTime:J

    sub-long v0, v2, v4

    .line 404
    .local v0, "deltaT":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_1

    .line 405
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 407
    :goto_0
    return v2

    .line 405
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 407
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 400
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    check-cast p2, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$1;->compare(Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;)I

    move-result v0

    return v0
.end method
