.class final Lcom/smartisanos/launcher/actions/sort/color/IconColor$1;
.super Ljava/lang/Object;
.source "IconColor.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/color/IconColor;
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
        "Lcom/smartisanos/launcher/data/ItemInfo;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p2, "o2"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 349
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iget-object v1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->compareTo(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 347
    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p2, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$1;->compare(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result v0

    return v0
.end method
