.class final Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$2;
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
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;)I
    .locals 2
    .param p1, "obj1"    # Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    .param p2, "obj2"    # Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    .prologue
    .line 414
    iget v0, p2, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->launchCount:I

    iget v1, p1, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->launchCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 411
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    check-cast p2, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$2;->compare(Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;)I

    move-result v0

    return v0
.end method
