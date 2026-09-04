.class public final Lcom/smartisanos/smengine/math/Vector2f;
.super Ljava/lang/Object;
.source "Vector2f.java"

.implements Ljava/lang/Cloneable;


.field public static final UNIT_XY:Lcom/smartisanos/smengine/math/Vector2f;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Vector2f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


.field public x:F

.field public y:F


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 48
    const-class v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    .line 50
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0, v1, v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector2f;->ZERO:Lcom/smartisanos/smengine/math/Vector2f;

    .line 51
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0, v2, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Vector2f;->UNIT_XY:Lcom/smartisanos/smengine/math/Vector2f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 80
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 72
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 1
    .param p1, "vector2f"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 90
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 91
    return-void
.end method

.method public static isValidVector(Lcom/smartisanos/smengine/math/Vector2f;)Z
    .locals 2
    .param p0, "vector"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/4 v0, 0x0

    .line 272
    if-nez p0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 274
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 276
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 v0, 0x1

    goto :goto_0
.end method


.method public add(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 4
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    goto :goto_0
.end method

.method public add(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "result"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 189
    :cond_0
    if-nez p2, :cond_1

    .line 190
    new-instance p2, Lcom/smartisanos/smengine/math/Vector2f;

    .end local p2    # "result":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 191
    .restart local p2    # "result":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 192
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move-object v0, p2

    .line 193
    goto :goto_0
.end method

.method public addLocal(FF)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "addX"    # F
    .param p2, "addY"    # F

    .prologue
    .line 169
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 170
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 171
    return-object p0
.end method

.method public addLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 150
    const/4 p0, 0x0

    .line 154
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :goto_0
    return-object p0

    .line 152
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 153
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    goto :goto_0
.end method

.method public angleBetween(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 4
    .param p1, "otherVector"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 589
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 590
    invoke-static {v2, v3}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v2

    sub-float v0, v1, v2

    .line 591
    .local v0, "angle":F
    return v0
.end method

.method public clone()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2

    .prologue
    .line 647
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector2f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector2f;->clone()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/4 v2, 0x0

    .line 221
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector2f;->determinant(Lcom/smartisanos/smengine/math/Vector2f;)F

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public determinant(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 3
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 225
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public distance(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 1
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector2f;->distanceSquared(Lcom/smartisanos/smengine/math/Vector2f;)F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(FF)F
    .locals 8
    .param p1, "otherX"    # F
    .param p2, "otherY"    # F

    .prologue
    .line 321
    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v4, p1

    float-to-double v0, v4

    .line 322
    .local v0, "dx":D
    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v4, p2

    float-to-double v2, v4

    .line 323
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public distanceSquared(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 8
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 307
    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 308
    .local v0, "dx":D
    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 309
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public divide(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "scalar"    # F

    .prologue
    .line 412
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public divideLocal(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 425
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 426
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 427
    return-object p0
.end method

.method public dot(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 3
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 679
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Vector2f;

    if-nez v3, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 684
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 687
    check-cast v0, Lcom/smartisanos/smengine/math/Vector2f;

    .line 688
    .local v0, "comp":Lcom/smartisanos/smengine/math/Vector2f;
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 690
    iget v3, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 692
    goto :goto_0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 619
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 638
    const/16 v0, 0x25

    .line 639
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 640
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 641
    return v0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector2f;F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "finalVec"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 240
    sub-float v0, v2, p2

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 241
    return-object p0
.end method

.method public interpolateLocal(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "beginVec"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "finalVec"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p3, "changeAmnt"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 259
    sub-float v0, v2, p3

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 260
    return-object p0
.end method

.method public length()F
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector2f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 296
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mult(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "scalar"    # F

    .prologue
    .line 346
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public mult(FLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "scalar"    # F
    .param p2, "product"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 394
    if-nez p2, :cond_0

    .line 395
    new-instance p2, Lcom/smartisanos/smengine/math/Vector2f;

    .end local p2    # "product":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 398
    .restart local p2    # "product":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 399
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 400
    return-object p2
.end method

.method public multLocal(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 358
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 359
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 360
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 375
    const/4 p0, 0x0

    .line 379
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :goto_0
    return-object p0

    .line 377
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 378
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    goto :goto_0
.end method

.method public negate()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3

    .prologue
    .line 437
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public negateLocal()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 447
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 448
    return-object p0
.end method

.method public normalize()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector2f;->length()F

    move-result v0

    .line 541
    .local v0, "length":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Vector2f;->divide(F)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->divide(F)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector2f;->length()F

    move-result v0

    .line 556
    .local v0, "length":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Vector2f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v1

    .line 560
    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 718
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 719
    return-void
.end method

.method public rotateAroundOrigin(FZ)V
    .locals 5
    .param p1, "angle"    # F
    .param p2, "cw"    # Z

    .prologue
    .line 736
    if-eqz p2, :cond_0

    .line 737
    neg-float p1, p1

    .line 738
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 739
    .local v0, "newX":F
    invoke-static {p1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v3

    iget v4, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 740
    .local v1, "newY":F
    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 741
    iput v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 742
    return-void
.end method

.method public set(FF)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 103
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 104
    iput p2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 105
    return-object p0
.end method

.method public set(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 116
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 117
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 118
    return-object p0
.end method

.method public setX(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 599
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 600
    return-object p0
.end method

.method public setY(F)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 608
    iput p1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 609
    return-object p0
.end method

.method public smallestAngleBetween(Lcom/smartisanos/smengine/math/Vector2f;)F
    .locals 2
    .param p1, "otherVector"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector2f;->dot(Lcom/smartisanos/smengine/math/Vector2f;)F

    move-result v1

    .line 574
    .local v1, "dotProduct":F
    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v0

    .line 575
    .local v0, "angle":F
    return v0
.end method

.method public subtract(FF)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "valX"    # F
    .param p2, "valY"    # F

    .prologue
    .line 495
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Vector2f;->subtract(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 477
    if-nez p2, :cond_0

    .line 478
    new-instance p2, Lcom/smartisanos/smengine/math/Vector2f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 479
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 480
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 481
    return-object p2
.end method

.method public subtractLocal(FF)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1
    .param p1, "valX"    # F
    .param p2, "valY"    # F

    .prologue
    .line 529
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 530
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 531
    return-object p0
.end method

.method public subtractLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 2
    .param p1, "vec"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    sget-object v0, Lcom/smartisanos/smengine/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 510
    const/4 p0, 0x0

    .line 514
    .end local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :goto_0
    return-object p0

    .line 512
    .restart local p0    # "this":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 513
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    goto :goto_0
.end method

.method public toArray([F)[F
    .locals 2
    .param p1, "floats"    # [F

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    const/4 v0, 0x2

    new-array p1, v0, [F

    .line 665
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v1, p1, v0

    .line 666
    const/4 v0, 0x1

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v1, p1, v0

    .line 667
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 731
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 732
    return-void
.end method

.method public zero()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 627
    return-object p0
.end method
