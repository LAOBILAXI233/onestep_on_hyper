.class public Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
.super Ljava/lang/Object;
.source "IconColor.java"

.implements Ljava/lang/Comparable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/color/IconColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Count"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;",
        ">;"
    }
.end annotation


.field public colorCount:I

.field public name:Ljava/lang/String;

.field public totalArgb:[J

.field public totalHsl:[D


.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    .line 258
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalHsl:[D

    .line 261
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->name:Ljava/lang/String;

    .line 262
    return-void
.end method


.method public append(IIII)V
    .locals 10
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    .line 273
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    aget-wide v2, v1, v6

    int-to-long v4, p1

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 274
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    aget-wide v2, v1, v7

    int-to-long v4, p2

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    .line 275
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    aget-wide v2, v1, v8

    int-to-long v4, p3

    add-long/2addr v2, v4

    aput-wide v2, v0, v8

    .line 276
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    aget-wide v2, v1, v9

    int-to-long v4, p4

    add-long/2addr v2, v4

    aput-wide v2, v0, v9

    .line 277
    return-void
.end method

.method public compareTo(Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;)I
    .locals 2
    .param p1, "count"    # Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    .prologue
    .line 291
    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    iget v1, p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 253
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->compareTo(Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;)I

    move-result v0

    return v0
.end method

.method public generateColorByArgb()I
    .locals 8

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    if-nez v0, :cond_1

    .line 281
    :cond_0
    const/4 v0, -0x1

    .line 283
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    iget v4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->totalArgb:[J

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    iget v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    int-to-long v6, v3

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method
