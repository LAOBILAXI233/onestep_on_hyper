.class public Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;
.super Ljava/lang/Object;
.source "IconColor.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/color/IconColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorCount"
.end annotation


.field public count:I

.field private countMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->count:I

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    .line 220
    return-void
.end method


.method public getMaxCountColor()Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    .locals 6

    .prologue
    .line 238
    iget-object v4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 239
    const/4 v4, 0x0

    .line 249
    :goto_0
    return-object v4

    .line 241
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "color":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    .end local v0    # "color":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    .line 247
    .local v2, "counts":[Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 248
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 249
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    goto :goto_0
.end method

.method public readPixel(ILjava/lang/String;)V
    .locals 6
    .param p1, "pixel"    # I
    .param p2, "colorName"    # Ljava/lang/String;

    .prologue
    .line 223
    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 224
    .local v0, "a":I
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v4, v5, 0xff

    .line 225
    .local v4, "r":I
    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v3, v5, 0xff

    .line 226
    .local v3, "g":I
    and-int/lit16 v1, p1, 0xff

    .line 227
    .local v1, "b":I
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    .line 228
    .local v2, "colorCount":Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    if-nez v2, :cond_0

    .line 229
    new-instance v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    .end local v2    # "colorCount":Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    invoke-direct {v2, p2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v2    # "colorCount":Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    :cond_0
    invoke-virtual {v2, v0, v4, v3, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->append(IIII)V

    .line 233
    iget-object v5, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->countMap:Ljava/util/Map;

    invoke-interface {v5, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget v5, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->count:I

    .line 235
    return-void
.end method
