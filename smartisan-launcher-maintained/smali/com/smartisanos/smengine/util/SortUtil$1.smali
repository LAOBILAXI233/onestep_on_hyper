.class final Lcom/smartisanos/smengine/util/SortUtil$1;
.super Ljava/lang/Object;
.source "SortUtil.java"

.implements Ljava/util/Comparator;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/smengine/util/SortUtil;->main([Ljava/lang/String;)V
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compare(Ljava/lang/Float;Ljava/lang/Float;)I
    .locals 2
    .param p1, "o1"    # Ljava/lang/Float;
    .param p2, "o2"    # Ljava/lang/Float;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 182
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/util/SortUtil$1;->compare(Ljava/lang/Float;Ljava/lang/Float;)I

    move-result v0

    return v0
.end method
