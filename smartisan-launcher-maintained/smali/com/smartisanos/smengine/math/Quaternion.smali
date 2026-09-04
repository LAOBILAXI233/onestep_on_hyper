.class public final Lcom/smartisanos/smengine/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

.implements Ljava/lang/Cloneable;


.field public static final DIRECTION_Z:Lcom/smartisanos/smengine/math/Quaternion;

.field public static final IDENTITY:Lcom/smartisanos/smengine/math/Quaternion;

.field public static final ZERO:Lcom/smartisanos/smengine/math/Quaternion;

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field static final serialVersionUID:J = 0x1L


.field public w:F

.field public x:F

.field public y:F

.field public z:F


.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    const-class v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/math/Quaternion;->log:Lcom/smartisanos/launcher/LOG;

    .line 61
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/math/Quaternion;->IDENTITY:Lcom/smartisanos/smengine/math/Quaternion;

    .line 62
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/math/Quaternion;->DIRECTION_Z:Lcom/smartisanos/smengine/math/Quaternion;

    .line 63
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/math/Quaternion;->ZERO:Lcom/smartisanos/smengine/math/Quaternion;

    .line 66
    sget-object v0, Lcom/smartisanos/smengine/math/Quaternion;->DIRECTION_Z:Lcom/smartisanos/smengine/math/Quaternion;

    sget-object v1, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_X:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v2, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v3, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Z:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 77
    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 78
    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 80
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 97
    iput p2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 98
    iput p3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 99
    iput p4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Quaternion;)V
    .locals 1
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 193
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 194
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 195
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;F)V
    .locals 0
    .param p1, "q1"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "q2"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p3, "interp"    # F

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Quaternion;->slerp(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;F)Lcom/smartisanos/smengine/math/Quaternion;

    .line 182
    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "angles"    # [F

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->fromAngles([F)Lcom/smartisanos/smengine/math/Quaternion;

    .line 167
    return-void
.end method


.method public add(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 6
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 792
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public addLocal(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 2
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 804
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 805
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 806
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 807
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 808
    return-object p0
.end method

.method public apply(Lcom/smartisanos/smengine/math/Matrix3f;)V
    .locals 10
    .param p1, "matrix"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 887
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .local v1, "oldX":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .local v2, "oldY":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .local v3, "oldZ":F
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 888
    .local v0, "oldW":F
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->fromRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 889
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .local v5, "tempX":F
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .local v6, "tempY":F
    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .local v7, "tempZ":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 891
    .local v4, "tempW":F
    mul-float v8, v1, v4

    mul-float v9, v2, v7

    add-float/2addr v8, v9

    mul-float v9, v3, v6

    sub-float/2addr v8, v9

    mul-float v9, v0, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 892
    neg-float v8, v1

    mul-float/2addr v8, v7

    mul-float v9, v2, v4

    add-float/2addr v8, v9

    mul-float v9, v3, v5

    add-float/2addr v8, v9

    mul-float v9, v0, v6

    add-float/2addr v8, v9

    iput v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 893
    mul-float v8, v1, v6

    mul-float v9, v2, v5

    sub-float/2addr v8, v9

    mul-float v9, v3, v4

    add-float/2addr v8, v9

    mul-float v9, v0, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 894
    neg-float v8, v1

    mul-float/2addr v8, v5

    mul-float v9, v2, v6

    sub-float/2addr v8, v9

    mul-float v9, v3, v7

    sub-float/2addr v8, v9

    mul-float v9, v0, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 895
    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 2

    .prologue
    .line 1358
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Quaternion;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
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
    .line 53
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->clone()Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lcom/smartisanos/smengine/math/Quaternion;)F
    .locals 3
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 1100
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1214
    instance-of v3, p1, Lcom/smartisanos/smengine/math/Quaternion;

    if-nez v3, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v1

    .line 1218
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 1219
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1222
    check-cast v0, Lcom/smartisanos/smengine/math/Quaternion;

    .line 1223
    .local v0, "comp":Lcom/smartisanos/smengine/math/Quaternion;
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1226
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1232
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1235
    goto :goto_0
.end method

.method public fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 5
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 583
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v1

    .line 584
    .local v1, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v1, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 585
    .local v0, "normAxis":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 586
    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 588
    invoke-virtual {v1}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 589
    return-object p0
.end method

.method public fromAngleNormalAxis(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 4
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v3, 0x0

    .line 602
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->loadIdentity()V

    .line 612
    :goto_0
    return-object p0

    .line 605
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v2, p1

    .line 606
    .local v0, "halfAngle":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v1

    .line 607
    .local v1, "sin":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 608
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 609
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 610
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    goto :goto_0
.end method

.method public fromAngles(FFF)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 13
    .param p1, "xAngle"    # F
    .param p2, "yAngle"    # F
    .param p3, "zAngle"    # F

    .prologue
    .line 252
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v0, p3, v11

    .line 253
    .local v0, "angle":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v10

    .line 254
    .local v10, "sinZ":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v5

    .line 255
    .local v5, "cosZ":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v0, p2, v11

    .line 256
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v7

    .line 257
    .local v7, "sinY":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    .line 258
    .local v2, "cosY":F
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v0, p1, v11

    .line 259
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v6

    .line 260
    .local v6, "sinX":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    .line 263
    .local v1, "cosX":F
    mul-float v3, v2, v5

    .line 264
    .local v3, "cosYXcosZ":F
    mul-float v9, v7, v10

    .line 265
    .local v9, "sinYXsinZ":F
    mul-float v4, v2, v10

    .line 266
    .local v4, "cosYXsinZ":F
    mul-float v8, v7, v5

    .line 268
    .local v8, "sinYXcosZ":F
    mul-float v11, v3, v1

    mul-float v12, v9, v6

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 269
    mul-float v11, v3, v6

    mul-float v12, v9, v1

    add-float/2addr v11, v12

    iput v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 270
    mul-float v11, v8, v1

    mul-float v12, v4, v6

    add-float/2addr v11, v12

    iput v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 271
    mul-float v11, v4, v1

    mul-float v12, v8, v6

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 273
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->normalizeLocal()Lcom/smartisanos/smengine/math/Quaternion;

    .line 274
    return-object p0
.end method

.method public fromAngles([F)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 3
    .param p1, "angles"    # [F

    .prologue
    .line 225
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Angles array must have three elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/smengine/math/Quaternion;->fromAngles(FFF)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 10
    .param p1, "xAxis"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "yAxis"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "zAxis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 930
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v8, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v9, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromAxes([Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 3
    .param p1, "axis"    # [Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 910
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis array must have three elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromRotationMatrix(FFFFFFFFF)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 5
    .param p1, "m00"    # F
    .param p2, "m01"    # F
    .param p3, "m02"    # F
    .param p4, "m10"    # F
    .param p5, "m11"    # F
    .param p6, "m12"    # F
    .param p7, "m20"    # F
    .param p8, "m21"    # F
    .param p9, "m22"    # F

    .prologue
    .line 335
    mul-float v3, p1, p1

    mul-float v4, p4, p4

    add-float/2addr v3, v4

    mul-float v4, p7, p7

    add-float v0, v3, v4

    .line 336
    .local v0, "lengthSquared":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 337
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v4

    div-float v0, v3, v4

    .line 338
    mul-float/2addr p1, v0

    .line 339
    mul-float/2addr p4, v0

    .line 340
    mul-float/2addr p7, v0

    .line 342
    :cond_0
    mul-float v3, p2, p2

    mul-float v4, p5, p5

    add-float/2addr v3, v4

    mul-float v4, p8, p8

    add-float v0, v3, v4

    .line 343
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v4

    div-float v0, v3, v4

    .line 345
    mul-float/2addr p2, v0

    .line 346
    mul-float/2addr p5, v0

    .line 347
    mul-float/2addr p8, v0

    .line 349
    :cond_1
    mul-float v3, p3, p3

    mul-float v4, p6, p6

    add-float/2addr v3, v4

    mul-float v4, p9, p9

    add-float v0, v3, v4

    .line 350
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 351
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v4

    div-float v0, v3, v4

    .line 352
    mul-float/2addr p3, v0

    .line 353
    mul-float/2addr p6, v0

    .line 354
    mul-float/2addr p9, v0

    .line 363
    :cond_2
    add-float v3, p1, p5

    add-float v2, v3, p9

    .line 366
    .local v2, "t":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 367
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    invoke-static {v3}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    .line 368
    .local v1, "s":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 369
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v1, v3, v1

    .line 370
    sub-float v3, p8, p6

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 371
    sub-float v3, p3, p7

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 372
    sub-float v3, p4, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 396
    :goto_0
    return-object p0

    .line 373
    .end local v1    # "s":F
    :cond_3
    cmpl-float v3, p1, p5

    if-lez v3, :cond_4

    cmpl-float v3, p1, p9

    if-lez v3, :cond_4

    .line 374
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, p1

    sub-float/2addr v3, p5

    sub-float/2addr v3, p9

    invoke-static {v3}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    .line 375
    .restart local v1    # "s":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 376
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v1, v3, v1

    .line 377
    add-float v3, p4, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 378
    add-float v3, p3, p7

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 379
    sub-float v3, p8, p6

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0

    .line 380
    .end local v1    # "s":F
    :cond_4
    cmpl-float v3, p5, p9

    if-lez v3, :cond_5

    .line 381
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, p5

    sub-float/2addr v3, p1

    sub-float/2addr v3, p9

    invoke-static {v3}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    .line 382
    .restart local v1    # "s":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 383
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v1, v3, v1

    .line 384
    add-float v3, p4, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 385
    add-float v3, p8, p6

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 386
    sub-float v3, p3, p7

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0

    .line 388
    .end local v1    # "s":F
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, p9

    sub-float/2addr v3, p1

    sub-float/2addr v3, p5

    invoke-static {v3}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    .line 389
    .restart local v1    # "s":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 390
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v1, v3, v1

    .line 391
    add-float v3, p3, p7

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 392
    add-float v3, p8, p6

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 393
    sub-float v3, p4, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public fromRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 10
    .param p1, "matrix"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 327
    iget v1, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    iget v8, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    iget v9, p1, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getRotationColumn(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->getRotationColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getRotationColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 13
    .param p1, "i"    # I
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 527
    if-nez p2, :cond_0

    .line 528
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 531
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v0

    .line 532
    .local v0, "norm":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v0, v10

    if-eqz v10, :cond_1

    .line 533
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 536
    :cond_1
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v10, v11

    mul-float v2, v10, v0

    .line 537
    .local v2, "xx":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v10, v11

    mul-float v3, v10, v0

    .line 538
    .local v3, "xy":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v4, v10, v0

    .line 539
    .local v4, "xz":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v1, v10, v0

    .line 540
    .local v1, "xw":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v10, v11

    mul-float v6, v10, v0

    .line 541
    .local v6, "yy":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v7, v10, v0

    .line 542
    .local v7, "yz":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v5, v10, v0

    .line 543
    .local v5, "yw":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v9, v10, v0

    .line 544
    .local v9, "zz":F
    iget v10, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v11, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v8, v10, v0

    .line 546
    .local v8, "zw":F
    packed-switch p1, :pswitch_data_0

    .line 563
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/smengine/math/Quaternion;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "Invalid column index."

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 564
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid column index. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 548
    :pswitch_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v6, v9

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 549
    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v3, v8

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 550
    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v4, v5

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 567
    :goto_0
    return-object p2

    .line 553
    :pswitch_1
    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v3, v8

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 554
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v2, v9

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 555
    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v7, v1

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 558
    :pswitch_2
    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v4, v5

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 559
    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v7, v1

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 560
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v2, v6

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1249
    const/16 v0, 0x25

    .line 1250
    .local v0, "hash":I
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 1251
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1252
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1253
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1254
    return v0
.end method

.method public inverse()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 7

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v1

    .line 1150
    .local v1, "norm":F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1151
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 1152
    .local v0, "invNorm":F
    new-instance v2, Lcom/smartisanos/smengine/math/Quaternion;

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    neg-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    neg-float v5, v5

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/smartisanos/smengine/math/Quaternion;-><init>(FFFF)V

    .line 1156
    .end local v0    # "invNorm":F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public inverseLocal()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 6

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v1

    .line 1168
    .local v1, "norm":F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1169
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v1

    .line 1170
    .local v0, "invNorm":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1171
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1172
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1173
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1175
    .end local v0    # "invNorm":F
    :cond_0
    return-object p0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 203
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 204
    return-void
.end method

.method public lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 4
    .param p1, "direction"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "up"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1307
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v0

    .line 1308
    .local v0, "vars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 1309
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 1310
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    .line 1311
    iget-object v1, v0, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v2, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v3, v0, Lcom/smartisanos/smengine/util/TempVars;->vect3:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Quaternion;->fromAxes(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 1312
    invoke-virtual {v0}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1313
    return-void
.end method

.method public mult(F)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 5
    .param p1, "scalar"    # F

    .prologue
    .line 1072
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 850
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->mult(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 6
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "res"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 868
    if-nez p2, :cond_0

    .line 869
    new-instance p2, Lcom/smartisanos/smengine/math/Quaternion;

    .end local p2    # "res":Lcom/smartisanos/smengine/math/Quaternion;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    .line 871
    .restart local p2    # "res":Lcom/smartisanos/smengine/math/Quaternion;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .local v0, "qw":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .local v1, "qx":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .local v2, "qy":F
    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 872
    .local v3, "qz":F
    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 873
    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 874
    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 875
    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 876
    return-object p2
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/math/Quaternion;->mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 7
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1043
    if-nez p2, :cond_0

    .line 1044
    new-instance p2, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1046
    .restart local p2    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 1047
    invoke-virtual {p2, v4, v4, v4}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1060
    :goto_0
    return-object p2

    .line 1049
    :cond_1
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .local v0, "vx":F
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .local v1, "vy":F
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1050
    .local v2, "vz":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1053
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1056
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto/16 :goto_0
.end method

.method public multLocal(F)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 1084
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1085
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1086
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1087
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1088
    return-object p0
.end method

.method public multLocal(FFFF)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 5
    .param p1, "qx"    # F
    .param p2, "qy"    # F
    .param p3, "qz"    # F
    .param p4, "qw"    # F

    .prologue
    .line 1021
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, p4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 1022
    .local v0, "x1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v3

    mul-float/2addr v3, p3

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, p2

    add-float v1, v3, v4

    .line 1023
    .local v1, "y1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, p3

    add-float v2, v3, v4

    .line 1024
    .local v2, "z1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1025
    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1026
    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1027
    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1028
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 6
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 994
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 995
    .local v0, "x1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v3

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 996
    .local v1, "y1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 997
    .local v2, "z1":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v3, v3

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 998
    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 999
    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1000
    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1001
    return-object p0
.end method

.method public multLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 972
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 974
    .local v0, "tempX":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 977
    .local v1, "tempY":F
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 979
    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 980
    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 981
    return-object p1
.end method

.method public negate()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1183
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1184
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1185
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1186
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1187
    return-void
.end method

.method public nlerp(Lcom/smartisanos/smengine/math/Quaternion;F)V
    .locals 4
    .param p1, "q2"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "blend"    # F

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->dot(Lcom/smartisanos/smengine/math/Quaternion;)F

    move-result v1

    .line 768
    .local v1, "dot":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, p2

    .line 769
    .local v0, "blendI":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 770
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 771
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 772
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 773
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 780
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->normalizeLocal()Lcom/smartisanos/smengine/math/Quaternion;

    .line 781
    return-void

    .line 775
    :cond_0
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 776
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 777
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 778
    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public norm()F
    .locals 3

    .prologue
    .line 1110
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public normalizeLocal()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 2

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 1133
    .local v0, "n":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1134
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1135
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1136
    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1137
    return-object p0
.end method

.method public opposite()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Quaternion;->opposite(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public opposite(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 3
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 1335
    if-nez p1, :cond_0

    .line 1336
    new-instance p1, Lcom/smartisanos/smengine/math/Quaternion;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Quaternion;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Quaternion;-><init>()V

    .line 1339
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Quaternion;
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1340
    .local v1, "axis":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/math/Quaternion;->toAngleAxis(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    .line 1342
    .local v0, "angle":F
    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v2, v0

    invoke-virtual {p1, v2, v1}, Lcom/smartisanos/smengine/math/Quaternion;->fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 1343
    return-object p1
.end method

.method public oppositeLocal()Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0, p0}, Lcom/smartisanos/smengine/math/Quaternion;->opposite(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 1271
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 1272
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 1273
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 1274
    return-void
.end method

.method public set(FFFF)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 134
    iput p2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 135
    iput p3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 136
    iput p4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 137
    return-object p0
.end method

.method public set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 1
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 150
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 151
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 152
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 153
    iget v0, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 154
    return-object p0
.end method

.method public slerp(Lcom/smartisanos/smengine/math/Quaternion;Lcom/smartisanos/smengine/math/Quaternion;F)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 9
    .param p1, "q1"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "q2"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p3, "t"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 661
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Quaternion;->set(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 704
    :goto_0
    return-object p0

    .line 666
    :cond_0
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 669
    .local v1, "result":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 671
    iget v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v5, v5

    iput v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 672
    iget v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    neg-float v5, v5

    iput v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 673
    iget v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    neg-float v5, v5

    iput v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 674
    iget v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    neg-float v5, v5

    iput v5, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 675
    neg-float v1, v1

    .line 679
    :cond_1
    sub-float v2, v8, p3

    .line 680
    .local v2, "scale0":F
    move v3, p3

    .line 684
    .local v3, "scale1":F
    sub-float v5, v8, v1

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 686
    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v4

    .line 687
    .local v4, "theta":F
    invoke-static {v4}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    div-float v0, v8, v5

    .line 691
    .local v0, "invSinTheta":F
    sub-float v5, v8, p3

    mul-float/2addr v5, v4

    invoke-static {v5}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    mul-float v2, v5, v0

    .line 692
    mul-float v5, p3, v4

    invoke-static {v5}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    mul-float v3, v5, v0

    .line 698
    .end local v0    # "invSinTheta":F
    .end local v4    # "theta":F
    :cond_2
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v5, v2

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 699
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v2

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 700
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v2

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 701
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v2

    iget v6, p2, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public slerp(Lcom/smartisanos/smengine/math/Quaternion;F)V
    .locals 9
    .param p1, "q2"    # Lcom/smartisanos/smengine/math/Quaternion;
    .param p2, "changeAmnt"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 717
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 759
    :goto_0
    return-void

    .line 722
    :cond_0
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v7, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 725
    .local v1, "result":F
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 727
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    neg-float v5, v5

    iput v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 728
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    neg-float v5, v5

    iput v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 729
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    neg-float v5, v5

    iput v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 730
    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    neg-float v5, v5

    iput v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 731
    neg-float v1, v1

    .line 735
    :cond_1
    sub-float v2, v8, p2

    .line 736
    .local v2, "scale0":F
    move v3, p2

    .line 740
    .local v3, "scale1":F
    sub-float v5, v8, v1

    const v6, 0x3dcccccd    # 0.1f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 743
    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v4

    .line 744
    .local v4, "theta":F
    invoke-static {v4}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    div-float v0, v8, v5

    .line 748
    .local v0, "invSinTheta":F
    sub-float v5, v8, p2

    mul-float/2addr v5, v4

    invoke-static {v5}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    mul-float v2, v5, v0

    .line 749
    mul-float v5, p2, v4

    invoke-static {v5}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v5

    mul-float v3, v5, v0

    .line 755
    .end local v0    # "invSinTheta":F
    .end local v4    # "theta":F
    :cond_2
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v5, v2

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 756
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v5, v2

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 757
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v5, v2

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 758
    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v5, v2

    iget v6, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public subtract(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 6
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 821
    new-instance v0, Lcom/smartisanos/smengine/math/Quaternion;

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v5, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public subtractLocal(Lcom/smartisanos/smengine/math/Quaternion;)Lcom/smartisanos/smengine/math/Quaternion;
    .locals 2
    .param p1, "q"    # Lcom/smartisanos/smengine/math/Quaternion;

    .prologue
    .line 833
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    .line 834
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    .line 835
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    .line 836
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    .line 837
    return-object p0
.end method

.method public toAngleAxis(Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 8
    .param p1, "axisStore"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 626
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v5, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 628
    .local v2, "sqrLength":F
    cmpl-float v3, v2, v6

    if-nez v3, :cond_1

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "angle":F
    if-eqz p1, :cond_0

    .line 631
    iput v7, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 632
    iput v6, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 633
    iput v6, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 636
    .end local v0    # "angle":F
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static {v4}, Lcom/smartisanos/smengine/math/FastMath;->acos(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 637
    .restart local v0    # "angle":F
    if-eqz p1, :cond_0

    .line 638
    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v3

    div-float v1, v7, v3

    .line 639
    .local v1, "invLength":F
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v3, v1

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 640
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v3, v1

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 641
    iget v3, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v3, v1

    iput v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public toAngles([F)[F
    .locals 12
    .param p1, "angles"    # [F

    .prologue
    .line 289
    if-nez p1, :cond_1

    .line 290
    const/4 v6, 0x3

    new-array p1, v6, [F

    .line 295
    :cond_0
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float v0, v6, v7

    .line 296
    .local v0, "sqw":F
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float v1, v6, v7

    .line 297
    .local v1, "sqx":F
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float v2, v6, v7

    .line 298
    .local v2, "sqy":F
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float v3, v6, v7

    .line 299
    .local v3, "sqz":F
    add-float v6, v1, v2

    add-float/2addr v6, v3

    add-float v5, v6, v0

    .line 301
    .local v5, "unit":F
    iget v6, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 302
    .local v4, "test":F
    float-to-double v6, v4

    const-wide v8, 0x3fdfef9db22d0e56L    # 0.499

    float-to-double v10, v5

    mul-double/2addr v8, v10

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 303
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static {v8, v9}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    aput v7, p1, v6

    .line 304
    const/4 v6, 0x2

    const v7, 0x3fc90fdb

    aput v7, p1, v6

    .line 305
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p1, v6

    .line 315
    :goto_0
    return-object p1

    .line 291
    .end local v0    # "sqw":F
    .end local v1    # "sqx":F
    .end local v2    # "sqy":F
    .end local v3    # "sqz":F
    .end local v4    # "test":F
    .end local v5    # "unit":F
    :cond_1
    array-length v6, p1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Angles array must have three elements"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    .restart local v0    # "sqw":F
    .restart local v1    # "sqx":F
    .restart local v2    # "sqy":F
    .restart local v3    # "sqz":F
    .restart local v4    # "test":F
    .restart local v5    # "unit":F
    :cond_2
    float-to-double v6, v4

    const-wide v8, -0x402010624dd2f1aaL    # -0.499

    float-to-double v10, v5

    mul-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    .line 307
    const/4 v6, 0x1

    const/high16 v7, -0x40000000    # -2.0f

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-static {v8, v9}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    aput v7, p1, v6

    .line 308
    const/4 v6, 0x2

    const v7, -0x4036f025

    aput v7, p1, v6

    .line 309
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p1, v6

    goto :goto_0

    .line 311
    :cond_3
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float v8, v1, v2

    sub-float/2addr v8, v3

    add-float/2addr v8, v0

    invoke-static {v7, v8}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v7

    aput v7, p1, v6

    .line 312
    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Lcom/smartisanos/smengine/math/FastMath;->asin(F)F

    move-result v7

    aput v7, p1, v6

    .line 313
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    neg-float v8, v1

    add-float/2addr v8, v2

    sub-float/2addr v8, v3

    add-float/2addr v8, v0

    invoke-static {v7, v8}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v7

    aput v7, p1, v6

    goto :goto_0
.end method

.method public toAxes([Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "axis"    # [Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 944
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v0

    .line 945
    .local v0, "tempMat":Lcom/smartisanos/smengine/math/Matrix3f;
    aget-object v1, p1, v2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->getColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, p1, v2

    .line 946
    aget-object v1, p1, v3

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->getColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, p1, v3

    .line 947
    aget-object v1, p1, v4

    invoke-virtual {v0, v4, v1}, Lcom/smartisanos/smengine/math/Matrix3f;->getColumn(ILcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    aput-object v1, p1, v4

    .line 948
    return-void
.end method

.method public toRotationMatrix()Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix3f;-><init>()V

    .line 407
    .local v0, "matrix":Lcom/smartisanos/smengine/math/Matrix3f;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/math/Quaternion;->toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;

    move-result-object v1

    return-object v1
.end method

.method public toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix3f;)Lcom/smartisanos/smengine/math/Matrix3f;
    .locals 17
    .param p1, "result"    # Lcom/smartisanos/smengine/math/Matrix3f;

    .prologue
    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v1

    .line 423
    .local v1, "norm":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v1, v15

    if-nez v15, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 427
    .local v2, "s":F
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float v3, v15, v2

    .line 428
    .local v3, "xs":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float v8, v15, v2

    .line 429
    .local v8, "ys":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float v12, v15, v2

    .line 430
    .local v12, "zs":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float v5, v15, v3

    .line 431
    .local v5, "xx":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float v6, v15, v8

    .line 432
    .local v6, "xy":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    mul-float v7, v15, v12

    .line 433
    .local v7, "xz":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float v4, v15, v3

    .line 434
    .local v4, "xw":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float v10, v15, v8

    .line 435
    .local v10, "yy":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    mul-float v11, v15, v12

    .line 436
    .local v11, "yz":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float v9, v15, v8

    .line 437
    .local v9, "yw":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    mul-float v14, v15, v12

    .line 438
    .local v14, "zz":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    mul-float v13, v15, v12

    .line 441
    .local v13, "zw":F
    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v10, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m00:F

    .line 442
    sub-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m01:F

    .line 443
    add-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m02:F

    .line 444
    add-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m10:F

    .line 445
    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m11:F

    .line 446
    sub-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m12:F

    .line 447
    sub-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m20:F

    .line 448
    add-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m21:F

    .line 449
    const/high16 v15, 0x3f800000    # 1.0f

    add-float v16, v5, v10

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/smartisanos/smengine/math/Matrix3f;->m22:F

    .line 451
    return-object p1

    .line 423
    .end local v2    # "s":F
    .end local v3    # "xs":F
    .end local v4    # "xw":F
    .end local v5    # "xx":F
    .end local v6    # "xy":F
    .end local v7    # "xz":F
    .end local v8    # "ys":F
    .end local v9    # "yw":F
    .end local v10    # "yy":F
    .end local v11    # "yz":F
    .end local v12    # "zs":F
    .end local v13    # "zw":F
    .end local v14    # "zz":F
    :cond_0
    const/4 v15, 0x0

    cmpl-float v15, v1, v15

    if-lez v15, :cond_1

    const/high16 v15, 0x40000000    # 2.0f

    div-float v2, v15, v1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toRotationMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 22
    .param p1, "result"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/math/Matrix4f;->toScaleVector()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 465
    .local v5, "originalScale":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Matrix4f;->setScale(FFF)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/math/Quaternion;->norm()F

    move-result v4

    .line 469
    .local v4, "norm":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v4, v19

    if-nez v19, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    .line 473
    .local v6, "s":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    move/from16 v19, v0

    mul-float v7, v19, v6

    .line 474
    .local v7, "xs":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    move/from16 v19, v0

    mul-float v12, v19, v6

    .line 475
    .local v12, "ys":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    move/from16 v19, v0

    mul-float v16, v19, v6

    .line 476
    .local v16, "zs":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    move/from16 v19, v0

    mul-float v9, v19, v7

    .line 477
    .local v9, "xx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    move/from16 v19, v0

    mul-float v10, v19, v12

    .line 478
    .local v10, "xy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    move/from16 v19, v0

    mul-float v11, v19, v16

    .line 479
    .local v11, "xz":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    move/from16 v19, v0

    mul-float v8, v19, v7

    .line 480
    .local v8, "xw":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    move/from16 v19, v0

    mul-float v14, v19, v12

    .line 481
    .local v14, "yy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    move/from16 v19, v0

    mul-float v15, v19, v16

    .line 482
    .local v15, "yz":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    move/from16 v19, v0

    mul-float v13, v19, v12

    .line 483
    .local v13, "yw":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    move/from16 v19, v0

    mul-float v18, v19, v16

    .line 484
    .local v18, "zz":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    move/from16 v19, v0

    mul-float v17, v19, v16

    .line 487
    .local v17, "zw":F
    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v14, v18

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m00:F

    .line 488
    sub-float v19, v10, v17

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m01:F

    .line 489
    add-float v19, v11, v13

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m02:F

    .line 490
    add-float v19, v10, v17

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m10:F

    .line 491
    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v9, v18

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m11:F

    .line 492
    sub-float v19, v15, v8

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m12:F

    .line 493
    sub-float v19, v11, v13

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m20:F

    .line 494
    add-float v19, v15, v8

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m21:F

    .line 495
    const/high16 v19, 0x3f800000    # 1.0f

    add-float v20, v9, v14

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/smartisanos/smengine/math/Matrix4f;->m22:F

    .line 497
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/math/Matrix4f;->setScale(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 498
    return-object p1

    .line 469
    .end local v6    # "s":F
    .end local v7    # "xs":F
    .end local v8    # "xw":F
    .end local v9    # "xx":F
    .end local v10    # "xy":F
    .end local v11    # "xz":F
    .end local v12    # "ys":F
    .end local v13    # "yw":F
    .end local v14    # "yy":F
    .end local v15    # "yz":F
    .end local v16    # "zs":F
    .end local v17    # "zw":F
    .end local v18    # "zz":F
    :cond_0
    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_1

    const/high16 v19, 0x40000000    # 2.0f

    div-float v6, v19, v4

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

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
    .line 1288
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->x:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1289
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->y:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1290
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->z:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1291
    iget v0, p0, Lcom/smartisanos/smengine/math/Quaternion;->w:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 1292
    return-void
.end method
