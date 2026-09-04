.class public Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
.super Ljava/lang/Object;
.source "IconColor.java"

.implements Ljava/lang/Comparable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/color/IconColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;",
        ">;"
    }
.end annotation


.field private static fieldIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.field public colorName:Ljava/lang/String;

.field public colorRatio:D

.field public hsl:[F

.field public imagePath:Ljava/lang/String;

.field public majorColor:I

.field public num:I

.field public owner:Lcom/smartisanos/launcher/data/ItemInfo;

.field public resize:Z

.field public sortValue:D

.field public total:I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->fieldIndexMap:Ljava/util/HashMap;

    .line 170
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->fieldIndexMap:Ljava/util/HashMap;

    const-string v1, "majorColor"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->fieldIndexMap:Ljava/util/HashMap;

    const-string v1, "num"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->fieldIndexMap:Ljava/util/HashMap;

    const-string v1, "total"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    .line 116
    iput-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 7
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "pixelNum"    # I
    .param p4, "totalPixel"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    .line 116
    iput-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 125
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    .line 126
    iput p2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    .line 127
    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 128
    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->access$000(I[F)V

    .line 129
    iput p3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    .line 130
    iput p4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    .line 131
    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    .line 133
    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    const/high16 v3, -0x1000000

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    const v3, -0x777778

    if-ne v2, v3, :cond_2

    .line 136
    :cond_0
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    iput-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 140
    .local v0, "areaSize":D
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 141
    iget-wide v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float v3, v6, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    .line 144
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 146
    invoke-virtual {v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 147
    invoke-virtual {v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 148
    invoke-virtual {v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :cond_4
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    neg-double v2, v2

    iput-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    goto :goto_0
.end method

.method public static toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 8
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 180
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v5

    .line 184
    :cond_1
    :try_start_0
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "strs":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 186
    const/4 v6, 0x0

    aget-object v0, v3, v6

    .line 187
    .local v0, "colorName":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, "mc":I
    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, "n":I
    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 190
    .local v4, "t":I
    new-instance v6, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-direct {v6, v0, v1, v2, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 192
    .end local v0    # "colorName":Ljava/lang/String;
    .end local v1    # "mc":I
    .end local v2    # "n":I
    .end local v3    # "strs":[Ljava/lang/String;
    .end local v4    # "t":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method


.method public clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>()V

    .line 157
    .local v0, "c":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->imagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->imagePath:Ljava/lang/String;

    .line 159
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    .line 160
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    .line 161
    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    iput v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    .line 162
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    iput-object v1, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->hsl:[F

    .line 163
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    iput-wide v2, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorRatio:D

    .line 164
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    iput-wide v2, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    .line 165
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I
    .locals 8
    .param p1, "another"    # Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 198
    iget-wide v2, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    iget-wide v4, p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->sortValue:D

    sub-double v0, v2, v4

    .line 199
    .local v0, "f":D
    cmpl-double v2, v0, v6

    if-lez v2, :cond_0

    .line 200
    const/4 v2, 0x1

    .line 204
    :goto_0
    return v2

    .line 201
    :cond_0
    cmpg-double v2, v0, v6

    if-gez v2, :cond_1

    .line 202
    const/4 v2, -0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->compareTo(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I

    move-result v0

    return v0
.end method

.method public getHUE()Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->getHueByName(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v0

    return-object v0
.end method

.method public setOwner(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->colorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->majorColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
