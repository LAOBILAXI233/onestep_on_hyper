.class public Lcom/smartisanos/smengine/util/GeomUtil;
.super Ljava/lang/Object;
.source "GeomUtil.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLeftBottomPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "out"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 38
    div-float v2, p2, v3

    sub-float v0, p0, v2

    .line 39
    .local v0, "newx":F
    div-float v2, p3, v3

    sub-float v1, p1, v2

    .line 40
    .local v1, "newy":F
    iput v0, p4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 41
    iput v1, p4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 42
    return-object p4
.end method

.method public static convertLeftBottomPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "out"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    div-float v2, p2, v3

    sub-float v0, p0, v2

    .line 24
    .local v0, "newx":F
    div-float v2, p3, v3

    sub-float v1, p1, v2

    .line 25
    .local v1, "newy":F
    iput v0, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 26
    iput v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 27
    return-object p4
.end method

.method public static convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "out"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 45
    div-float v2, p2, v3

    sub-float v0, p0, v2

    .line 46
    .local v0, "newx":F
    neg-float v2, p1

    div-float v3, p3, v3

    add-float v1, v2, v3

    .line 47
    .local v1, "newy":F
    iput v0, p4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 48
    iput v1, p4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 49
    return-object p4
.end method

.method public static convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "out"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 30
    div-float v2, p2, v3

    sub-float v0, p0, v2

    .line 31
    .local v0, "newx":F
    neg-float v2, p1

    div-float v3, p3, v3

    add-float v1, v2, v3

    .line 32
    .local v1, "newy":F
    iput v0, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 33
    iput v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 34
    return-object p4
.end method

.method public static convertMidPointToLeftTopCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "out"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 12
    div-float v2, p2, v3

    add-float v0, p0, v2

    .line 13
    .local v0, "newx":F
    div-float v2, p3, v3

    sub-float v1, v2, p1

    .line 14
    .local v1, "newy":F
    iput v0, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 15
    iput v1, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 16
    return-object p4
.end method

.method public static isMatrixHasRotate(Lcom/smartisanos/smengine/math/Matrix4f;)Z
    .locals 2
    .param p0, "m"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
